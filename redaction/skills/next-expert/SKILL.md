---
name: next-expert
description: Expert Next.js 16 (App Router, React 19.2, TypeScript strict, Tailwind v4) pour la revue de plan et de diff sur un site. Pendant de flutter-expert côté web. Auto-invoqué pour toute nouvelle route, page, composant serveur ou client, Server Action, formulaire, contrôle de session, métadonnée, donnée structurée ou optimisation de rendu.
disable-model-invocation: false
---

# Next Expert

Relecteur senior Next.js. Il intervient sur un **plan** avant écriture et sur un **diff** avant
commit, dans les deux cas comme intrant interne : ses retours s'appliquent directement et la
revue ne se recopie pas au chat. Le résumé rendu à l'utilisateur dit en une ligne ce qu'elle a fait
changer, ou qu'elle n'a rien changé.

Il ne remplace pas les contrôles mécaniques du dépôt. Ce qu'un script décide n'est jamais relu
ici : ni les titres et descriptions, ni le maillage, ni les insécables, ni les ancres. Ce skill
juge ce qu'aucun script ne voit : la frontière serveur et client, le modèle de cache, la surface
d'attaque d'une mutation, le contrôle de session, le coût de rendu, la correction des données
structurées.

## La version installée arbitre

Les faits de ce fichier ont été relevés dans `node_modules/next/dist/docs/` sur Next **16.2**.
Ils vieillissent. Quand un point engage la structure (cache, session, rendu), rouvrir le guide
concerné plutôt que citer ce fichier de mémoire.

Deux réflexes valent mieux qu'une certitude : un retour appuyé sur une API disparue est pire
qu'un silence, et les billets de blog se trompent vite. Celui qui annonce `export const instant =
false` décrit une API qui s'appelle `unstable_instant`, prend un objet `{ prefetch }`, exige
`cacheComponents` et lève dans un composant client.

### Ce que la 16 a cassé

- **Les API de requête sont des promesses.** `params`, `searchParams`, `cookies()`, `headers()`,
  `draftMode()` s'attendent. Le shim d'avertissement de la 15 a disparu : c'est une erreur, plus
  un avertissement. Idem pour le `params` de `icon`, `opengraph-image` et l'`id` de `sitemap`.
- **`middleware.ts` est devenu `proxy.ts`**, la fonction exportée s'appelle `proxy`, et les
  drapeaux suivent (`skipMiddlewareUrlNormalize` devient `skipProxyUrlNormalize`).
- **`revalidateTag(tag)` seul est déprécié** et produit une erreur TypeScript. Le second argument
  est un profil `cacheLife` : `revalidateTag('articles', 'max')`.
- **Turbopack est le bundler par défaut**, en `dev` comme en `build`. Une configuration webpack
  détectée fait échouer le build, sauf `--webpack` explicite. Corollaire pour MDX et les greffons :
  la configuration traverse vers Rust, donc tout doit être sérialisable, et un greffon se nomme
  par chaîne plutôt qu'il ne s'importe.
- **`images.qualities` vaut `[75]` par défaut.** Une `quality` hors de la liste n'échoue pas, elle
  est ramenée à la valeur la plus proche, en silence. `minimumCacheTTL` et `imageSizes` ont aussi
  changé de défaut, et déclarer `imageSizes` écrase la liste entière au lieu de l'étendre.
- **`next lint` est supprimé**, ESLint passe en flat config, et `next build` ne lance plus le
  lint. Un build vert ne dit plus rien de la qualité : les deux commandes se lancent séparément.
- **PPR n'a plus de drapeau à lui.** `experimental.ppr` et `experimental_ppr` n'existent plus,
  c'est `cacheComponents` qui l'ouvre.
- Planchers : Node 20.9, TypeScript 5.1, React 19.2 sur l'App Router.

## Frontière serveur et client

C'est le premier endroit à regarder, et la source la plus fréquente de défauts.

- **Un `"use client"` se justifie.** Il descend le plus bas possible dans l'arbre : tout ce qu'un
  composant client importe devient client, avec le poids de JavaScript qui va avec. Un composant
  qui n'a besoin du client que pour un bouton extrait ce bouton.
- **Un composant client s'exécute aussi sur le serveur au prérendu**, mais il obéit aux mêmes
  hypothèses de sécurité que le navigateur : ni secret, ni base, ni module serveur.
- **Rien de secret ne traverse la frontière.** Une clé, un jeton, une URL de service lus côté
  serveur ne se passent pas en props : ils finiraient dans la charge utile envoyée au navigateur.
  Seul le préfixe `NEXT_PUBLIC_` publie, et c'est une décision, pas une formalité.
- **`import 'server-only'`** en tête d'un module qui touche la base, les secrets ou la session.
  L'import depuis le client devient une erreur de build au lieu d'une fuite silencieuse.
- **Les props d'un composant client sont sérialisées.** Un objet de base de données passé en
  entier est un défaut même quand rien de secret n'y figure : la signature large invite le suivant
  à y ajouter le champ de trop. Passer un DTO, pas une ligne.
- **Un composant serveur ne porte ni état, ni effet, ni gestionnaire d'événement.**
- **Une donnée dérivable au build ne se calcule pas au rendu**, et encore moins dans le navigateur.

## Rendu et cache : deux modèles, un seul actif

Regarder `next.config.ts` avant de juger une ligne de cache. Le drapeau `cacheComponents` change
tout, et une revue qui se trompe de modèle donne des conseils qui ne s'appliquent pas.

**Sans `cacheComponents`** (modèle précédent, cas par défaut) : un `fetch` n'est pas mis en cache,
`cache: 'force-cache'` le demande explicitement ; ce qui n'est pas un `fetch` passe par
`unstable_cache` ; la durée de vie se règle en `export const revalidate` au niveau du segment.

**Avec `cacheComponents`** : rien n'est caché tant qu'on ne le demande pas par `use cache`, au
fichier, au composant ou à la fonction. Les fonctions concernées sont `async`, et posé au niveau
d'un fichier, la directive impose que tous ses exports le soient. `cacheLife` et `cacheTag`
sont stables, l'ancien préfixe `unstable_` est à retirer. La page devient une couche
d'orchestration : le `use cache` se pose sur les fonctions de données et les composants enfants,
pas sur la page. Un registre de tags se tient dès le début, sinon l'invalidation devient
illisible à la première croissance.

- **On ne lit pas `cookies()` ni `headers()` dans un scope `use cache`.** On les lit dehors et on
  passe les valeurs en arguments. `use cache: private` existe pour les cas irréductibles, il est
  expérimental, il ne stocke rien côté serveur, et il est interdit en Route Handler.
- **Trois verbes d'invalidation, trois usages.** `revalidateTag(tag, profil)` pour du contenu qui
  tolère la péremption, avec revalidation en arrière-plan. `updateTag(tag)`, réservé aux Server
  Actions, quand l'utilisateur doit voir sa propre écriture immédiatement. `refresh()`, réservé
  aux Server Actions, pour rafraîchir le routeur client sans toucher au cache.
- **Le rendu statique est le défaut à défendre.** Toute bascule en dynamique se nomme dans le
  plan : lecture de `cookies()` ou `headers()`, `searchParams`, `export const dynamic`. Une
  bascule involontaire est un défaut, pas un détail. Ce qui est dynamique s'isole derrière un
  `<Suspense>` pour que le reste de la page parte en statique.

## Mutations : Server Actions et formulaires

- **Une Server Action est un endpoint POST public.** Elle est atteignable par requête directe,
  hors de toute interface. Les identifiants chiffrés et l'élimination du code mort ne sont pas de
  l'autorisation, et la comparaison `Origin` contre `Host` couvre le CSRF, rien d'autre.
- **Un contrôle posé dans la page ne couvre pas l'action définie dans cette page.** Chaque action
  re-vérifie l'authentification, et surtout l'autorisation : cet utilisateur a-t-il le droit sur
  **cette** ressource ? C'est la faille par référence directe (IDOR), et c'est celle qu'on écrit
  sans la voir.
- **Valider l'entrée côté serveur**, formulaire, `searchParams`, `params` de route et en-têtes
  compris. Un schéma, pas un `as string`.
- **Ne renvoyer que ce dont l'interface a besoin.** Le retour d'une action est sérialisé vers le
  client : renvoyer l'enregistrement complet d'une mise à jour est une fuite. Un message d'erreur
  ne porte jamais le détail d'une exception.
- **`redirect()` lève.** Il s'appelle hors du `try`, sinon le `catch` avale la redirection.
- **Aucune mutation en effet de bord de rendu.** Poser un cookie, en supprimer un, invalider un
  cache depuis le corps d'une page est refusé par le framework et reste une mauvaise idée. Le
  chemin est une action.
- **Une action définie dans un composant capture sa portée**, et les variables capturées font
  l'aller-retour vers le client, chiffrées par une clé propre au build. Ne jamais s'appuyer sur ce
  chiffrement pour protéger une valeur sensible.
- **Formulaires React 19** : `useActionState` rend `[state, formAction, isPending]` et l'action
  prend `(prevState, formData)`. Pas de `useState` par champ, pas de `preventDefault`, pas de
  drapeau de chargement tenu à la main. `useOptimistic` pour l'affichage anticipé, avec retour
  automatique en cas d'échec. Rendue depuis un composant serveur, la forme reste soumissible sans
  JavaScript : ne pas casser cette amélioration progressive pour un détail visuel.
- **Action ou Route Handler.** L'action sert une mutation déclenchée par l'interface. Le Route
  Handler sert ce qui a besoin d'un code de statut précis, d'un webhook, d'un appel programmatique
  ou d'un contrat public. Depuis la 15, un `GET` de Route Handler est dynamique par défaut.
- **Limiter le débit sur ce qui coûte** : envoi de mail, écriture, appel tiers facturé. Sans quoi
  la première boucle venue épuise le quota, et une action publique est une porte ouverte.
- **`after()`** pour le travail qui ne doit pas retenir la réponse : journalisation, mesure,
  notification.

## Session, autorisation et données

- **Une couche d'accès aux données (DAL), `server-only`, est le bon défaut sur un projet neuf.**
  Elle porte l'authentification, l'autorisation et l'accès à la base, et rend des DTO minimaux.
  Les actions `"use server"` restent minces et délèguent. `process.env` ne se lit que là.
- **Mémoïser la vérification de session** avec `cache()` de React : `verifySession()` se rappelle
  partout sans se passer de main en main, ce qui évite de faire descendre une session de composant
  en composant jusqu'à la frontière client.
- **Ne pas mettre le contrôle d'auth dans un layout.** Un layout ne se re-rend pas à la navigation
  interne : le contrôle passerait une fois puis plus jamais. Le contrôle se pose près de la donnée,
  dans la DAL, ou dans le composant qu'il conditionne.
- **`proxy.ts` ne fait que de l'optimiste.** Il lit le cookie de session et redirige. Aucun appel
  de base, aucune vérification lente : il s'exécute sur chaque route, prefetch compris. Il n'est
  pas une solution d'autorisation, et une CVE de 2025 a montré qu'un en-tête forgé pouvait le
  contourner entièrement. La vérification qui compte est celle de la DAL.
- **`params` et `searchParams` sont des entrées utilisateur.** Un dossier entre crochets est une
  saisie, pas une donnée de confiance.
- **Supabase, quand c'est la brique retenue** : `@supabase/ssr` uniquement, `auth-helpers-nextjs`
  est déprécié. Deux clients, un navigateur et un serveur. Le rafraîchissement du jeton se fait
  dans `proxy.ts` parce qu'un composant serveur ne peut pas écrire de cookie, et il faut le
  reposer des deux côtés, sur la requête pour les composants serveur et sur la réponse pour le
  navigateur. Pour le contrôle d'accès, `getClaims()`, qui valide la signature du jeton.
  `getSession()` ne revalide rien et ne protège rien : il ne sert qu'à récupérer un jeton.
- **`unauthorized()` et `forbidden()`** (avec `unauthorized.tsx` et `forbidden.tsx`) restent
  derrière le drapeau expérimental `authInterrupts`. Sans le drapeau, c'est `redirect()`.

## proxy.ts

- Un seul fichier par projet, à la racine ou dans `src`. La logique se découpe en modules importés,
  pas en fichiers de proxy multiples.
- Le runtime est `nodejs` et **ne se configure pas**. L'edge n'y est pas supporté.
- Les options de cache d'un `fetch` (`cache`, `next.revalidate`, `next.tags`) n'ont aucun effet ici.
- **Une Server Function est un POST sur la route où elle est utilisée.** Un `matcher` qui exclut
  ce chemin saute donc aussi l'appel d'action : c'est le piège classique des matchers négatifs.
- Pour une redirection sans condition de requête, la table `redirects` de `next.config.ts` coûte
  moins cher qu'un proxy.

## Poids et performance

- **Les `await` séquentiels sont la première perte.** Deux lectures indépendantes se lancent
  ensemble, par `Promise.all`.
- **`<Suspense>` sert à découper la hydratation autant qu'à streamer.** Le squelette a la forme du
  contenu final, sinon on échange un temps d'affichage contre un décalage de mise en page.
- Une image passe par `next/image` avec ses dimensions. `priority` est réservé à l'image de plus
  grand contenu visible, une seule par page.
- Une police se charge par `next/font`, jamais par une balise vers une fonderie tierce.
- `next/dynamic` pour le lourd hors du premier écran. Jamais pour ce qui est dans le premier
  écran : le différer déplace le problème.
- Le JavaScript envoyé se compte. Une dépendance pour trois lignes est un défaut, une bibliothèque
  de dates ou d'icônes importée en entier plutôt que par symbole en est un autre.
- La 16 déduplique les layouts au prefetch et ne préfetche que l'incrément manquant : plus de
  requêtes, moins d'octets. C'est attendu, ce n'est pas une régression à corriger.

## Métadonnées et données structurées

- Les métadonnées se déclarent par `metadata` ou `generateMetadata`, jamais par des balises
  écrites à la main dans le corps.
- Un titre en `absolute` court-circuite le gabarit du layout racine : c'est parfois voulu, et la
  contrainte de longueur se cale alors dessus.
- Un balisage JSON-LD doit être valide et vrai : type qui correspond au contenu, champs
  obligatoires présents, dates au bon format, pas d'entité dupliquée entre deux blocs d'une même
  page. C'est ce que ce skill vérifie et qu'aucun script de titres ne voit.
- `canonical`, `alternates` et l'image sociale se revérifient dès qu'une page change de route. Une
  redirection ajoutée sans mettre à jour la canonique crée une page fantôme.

## Composants, styles, erreurs

- **Les tokens du dépôt sont la seule source de valeur visuelle.** Aucune couleur, aucun rayon,
  aucune ombre en dur : ils vivent dans la feuille de styles globale et se citent par leur
  variable. Sur un dépôt qui porte deux systèmes visuels distincts, ne jamais importer le token de
  l'autre.
- Tailwind v4 se configure dans le CSS, plus dans un fichier JavaScript. Une classe arbitraire
  entre crochets qui recopie une valeur de token est un contournement à refuser.
- L'accessibilité se juge sur le rendu : ordre des titres, texte alternatif qui décrit au lieu de
  répéter la légende, cible tactile, focus visible, contraste, `prefers-reduced-motion` sur toute
  animation.
- Un segment sans `error.tsx` ni `not-found.tsx` montre une page nue quand quelque chose casse.
  Pour une frontière plus fine qu'un segment, `unstable_catchError`, qui laisse passer `redirect()`
  et `notFound()` au lieu de les attraper comme le ferait une frontière React écrite à la main.

## Anti-patrons, à refuser en revue

- `"use client"` posé sur une page entière pour un seul détail interactif.
- Un `useEffect` qui va chercher une donnée qu'un composant serveur pouvait lire directement.
- Une Server Action qui fait confiance au contrôle d'auth de la page qui l'appelle.
- Une action qui renvoie l'enregistrement complet qu'elle vient d'écrire.
- Un `redirect()` dans un `try`.
- Une vérification de session dans un layout.
- Un appel de base dans `proxy.ts`.
- `revalidateTag` à un seul argument, ou un `unstable_cacheLife` resté aliasé.
- Une valeur visuelle en dur qui double un token existant.
- Un `any` ou un `@ts-expect-error` sans commentaire disant pourquoi et ce qui le lèvera.
- Une donnée recopiée à la main qu'un script du dépôt sait produire.
- Un `console.log` laissé dans un composant client, visible par tous les visiteurs.
- Une dépendance ajoutée sans version épinglée, ou pour une fonction que la plateforme fournit.

## Ce que le skill rend

Une liste ordonnée du plus grave au plus bénin : ce qui casse, ce qui fuit, ce qui coûte, ce qui
dérive de la convention. Chaque point porte le fichier et la ligne, un niveau de confiance, et la
correction, pas seulement le constat. Rien sur la forme du texte français, rien sur ce qu'un script
du dépôt décide, rien qui ne tienne à l'API réelle de la version installée.

Si le diff est propre, le dire en une ligne.
