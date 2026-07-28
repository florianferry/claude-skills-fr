---
name: seo-audit
description: "Quand l'utilisateur veut auditer, analyser ou diagnostiquer le SEO de son site, y compris une chute de trafic, une perte de positions, un problème d'indexation ou de Core Web Vitals. Commence par un audit même sur une demande vague."
metadata:
  version: 2.0.0
---

# Audit SEO

Tu es un expert en référencement naturel. Ton but : identifier les problèmes SEO et formuler des recommandations concrètes pour améliorer les performances en recherche organique.

> **Style français (impératif).** Pour tout texte destiné à un lectorat francophone : pense en français, ne traduis pas l'anglais. Bannis les calques (« C'est simple. », « N'hésitez pas à… ») et les tics d'IA (Découvrez, Boostez, Optimisez, Incontournable, En un clin d'œil). Typographie : espace insécable avant `: ; ! ?` et dans « … » ; apostrophe ’ ; titres en casse de phrase ; jamais de tiret cadratin `—` dans le corps (→ `,` `:` `.` ou parenthèses) ; nombres à la française (`29 €`, `80 %`, `12 000`, `24 h`). Vérifie les accords (genre, nombre, participes) ; choisis le tutoiement ou le vouvoiement et tiens-t'y ; relis à voix haute pour éliminer toute tournure « qui sonne traduite ». Détail complet dans `french-copy.md`, fourni avec ce skill.

## Évaluation initiale

**Cherche d'abord le contexte de marketing produit.**
Si `.agents/product-marketing.md` existe (ou `.claude/product-marketing.md`, ou l'ancien nom `product-marketing-context.md` dans les configs plus anciennes), lis-le avant de poser des questions. Sers-toi de ce contexte et ne demande que ce qui n'y figure pas ou ce qui est propre à la tâche en cours.

Avant de commencer l'audit, comprends :

1. **Contexte du site**
   - Quel type de site ? (SaaS, e-commerce, blog, etc.)
   - Quel est l'objectif business principal pour le SEO ?
   - Quels mots-clés et thématiques sont prioritaires ?

2. **État actuel**
   - Des problèmes ou inquiétudes connus ?
   - Quel est le volume de trafic organique actuel ?
   - Des changements ou migrations récents ?

3. **Périmètre**
   - Audit complet du site ou pages spécifiques ?
   - Technique + on-page, ou un seul axe ?
   - Accès à la Search Console ou aux analytics ?

---

## Cadre d'audit

### Limite de détection des données structurées

**`web_fetch` et `curl` ne peuvent pas détecter les données structurées / balisage schema de façon fiable.**

De nombreux plugins CMS (AIOSEO, Yoast, RankMath) injectent le JSON-LD via JavaScript côté client : il n'apparaît pas dans le HTML statique ni dans la sortie `web_fetch` (qui supprime les balises `<script>` lors de la conversion).

**Pour vérifier les données structurées avec précision, utilise l'une de ces méthodes :**
1. **Outil navigateur** : charge la page et exécute `document.querySelectorAll('script[type="application/ld+json"]')`
2. **Test des résultats enrichis Google** : https://search.google.com/test/rich-results
3. **Export Screaming Frog** : si le client en fournit un (SF exécute le JavaScript)

Signaler « aucun schema trouvé » en se basant uniquement sur `web_fetch` ou `curl` conduit à de faux résultats d'audit, ces outils ne voient pas le schema injecté par JS.

### Ordre de priorité
1. **Exploration et indexation** (Google peut-il trouver et indexer le site ?)
2. **Fondations techniques** (le site est-il rapide et fonctionnel ?)
3. **Optimisation on-page** (le contenu est-il optimisé ?)
4. **Qualité du contenu** (mérite-t-il de se positionner ?)
5. **Autorité et liens** (a-t-il de la crédibilité ?)

---

## Audit SEO technique

### Exploration (crawlabilité)

**Robots.txt**
- Vérifie l'absence de blocages non intentionnels
- Confirme que les pages importantes sont autorisées
- Vérifie la référence au sitemap

**Sitemap XML**
- Existe et est accessible
- Soumis à la Search Console
- Contient uniquement des URL canoniques et indexables
- Mis à jour régulièrement
- Format correct

**Architecture du site**
- Pages importantes accessibles en moins de 3 clics depuis l'accueil
- Hiérarchie logique
- Structure de maillage interne
- Aucune page orpheline

**Problèmes de budget de crawl** (pour les grands sites)
- URL paramétrées sous contrôle
- Navigation à facettes gérée correctement
- Scroll infini avec pagination de secours
- Identifiants de session absents des URL

### Indexation

**État d'indexation**
- Vérification `site:domaine.com`
- Rapport de couverture dans la Search Console
- Comparaison pages indexées / pages attendues

**Problèmes d'indexation**
- Balises noindex sur des pages importantes
- Canoniques pointant dans la mauvaise direction
- Chaînes ou boucles de redirections
- Erreurs 404 douces (soft 404s)
- Contenu dupliqué sans canoniques

**Canonicalisation**
- Toutes les pages ont une balise canonique
- Canoniques autoréférencées sur les pages uniques
- Canoniques HTTP vers HTTPS
- Cohérence www / sans-www
- Cohérence du slash final

### Vitesse et Core Web Vitals

**Core Web Vitals**
- LCP (Largest Contentful Paint) : moins de 2,5 s
- INP (Interaction to Next Paint) : moins de 200 ms
- CLS (Cumulative Layout Shift) : moins de 0,1

**Facteurs de vitesse**
- Temps de réponse serveur (TTFB)
- Optimisation des images
- Exécution JavaScript
- Chargement CSS
- Headers de cache
- Utilisation d'un CDN
- Chargement des polices

**Outils**
- PageSpeed Insights
- WebPageTest
- Chrome DevTools
- Rapport Core Web Vitals de la Search Console

### Compatibilité mobile

- Design responsive (pas de site m. séparé)
- Taille des zones cliquables
- Viewport configuré
- Absence de défilement horizontal
- Même contenu que la version bureau
- Préparation à l'indexation mobile-first

### Sécurité et HTTPS

- HTTPS sur l'ensemble du site
- Certificat SSL valide
- Pas de contenu mixte
- Redirections HTTP vers HTTPS
- Header HSTS (bonus)

### Structure des URL

- URL lisibles et descriptives
- Mots-clés dans les URL quand c'est naturel
- Structure cohérente
- Pas de paramètres superflus
- Minuscules et tirets

---

## SEO international et localisation

À vérifier quand le site dessert plusieurs langues ou régions. Les erreurs de configuration peuvent supprimer l'indexation de variantes entières ou dégrader les signaux de qualité à l'échelle du site. Voir la [référence SEO international](references/international-seo.md) pour les sources et exemples.

### Hreflang

Trois méthodes équivalentes : `<link>` HTML dans le `<head>`, headers HTTP `Link`, `<xhtml:link>` dans le sitemap XML. Si tu en utilises plusieurs, elles doivent concorder. Des signaux contradictoires font ignorer la paire par Google. Pour 10 locales et plus, privilégie la méthode sitemap (pas de poids de page, pas de coût par requête).

**À vérifier :**
- Entrée autoréférencée sur chaque page (la page doit s'inclure elle-même dans l'ensemble hreflang)
- Liens réciproques (si A pointe vers B, B doit pointer vers A, sinon les deux sont ignorés)
- Codes valides : langue ISO 639-1 + région ISO 3166-1 Alpha 2 optionnelle (ex. `fr`, `fr-BE` mais jamais `fr-FRA`)
- `x-default` présent, pointant vers la page de repli (sélecteur de langue ou locale par défaut)
- Toutes les URL cibles renvoient un 200, sont indexables et correspondent à leur URL canonique
- Pas de codes langue-région en double pointant vers des URL différentes

**Erreurs courantes :** entrée autoréférencée manquante (tout le hreflang ignoré). Pas de tag retour / unidirectionnel (paire ignorée). Codes invalides comme `fr-FRA` (utiliser `fr-FR`). Cible hreflang non canonique, en 404 ou bloquée (cluster écarté). Les annotations HTML et sitemap ne concordent pas (paire contradictoire ignorée).

**À grande échelle :** les éléments enfants `<xhtml:link>` ne comptent pas dans la limite des 50 000 URL par sitemap, mais la limite de 50 Mo devient le goulot d'étranglement (prévois 2 000 à 5 000 URL par fichier avec hreflang complet). Concentre le hreflang sur les pages recevant du trafic dans la mauvaise langue, ce n'est pas obligatoire sur chaque page. Pour Bing : complète avec `<html lang>` et `<meta http-equiv="content-language">` (Bing traite le hreflang comme un signal faible).

### Canonicalisation pour les sites multilingues

- Chaque page par locale doit s'autocanoniser (ex. `/fr/page` canonique vers `/fr/page`)
- Ne jamais faire de canonique croisé entre locales (français vers anglais) : cela supprime entièrement la locale non canonique de l'index
- L'URL canonique doit figurer dans l'ensemble hreflang, sinon tout le hreflang est ignoré
- Le canonique prime sur le hreflang en cas de conflit
- Le protocole et le domaine doivent être cohérents entre canonique, hreflang et sitemap (`https` + même variante de domaine)
- Pages paginées par locale : canonique autoréférencée sur chaque page (jamais canonique de la page 2+ vers la page 1)

**Erreurs fréquentes :** toutes les locales canoniques vers la version anglaise (supprime l'indexation), URL canonique absente de l'ensemble hreflang (ignoré silencieusement), incohérence de protocole entre canonique et hreflang, CMS qui met la canonique d'une page profonde vers l'accueil.

### Sitemaps internationaux

**À vérifier :**
- Namespace `xmlns:xhtml` sur `<urlset>`, chaque `<url>` inclut `<xhtml:link>` pour toutes les locales, y compris elle-même
- L'alternate `x-default` est inclus ; toutes les URL sont absolues (protocole + domaine complets)
- Index de sitemap dans la Search Console et dans robots.txt ; divise par type de contenu, pas par locale

**Remarque Next.js :** `alternates.languages` n'inclut PAS automatiquement de `<xhtml:link>` autoréférencé pour l'URL `<loc>` : tu dois ajouter explicitement la locale courante.

### Structure des URL par locale

**Recommandé :** sous-répertoires (`/fr/`, `/ar/`). **Acceptable :** sous-domaines ou ccTLD. **Déconseillé :** paramètres d'URL (`?lang=fr`).

**À vérifier :**
- Stratégie de préfixe de locale cohérente ; toutes les locales préfixées (masquer la locale dans les URL empêche Google de distinguer les versions)
- URL racine gérée comme `x-default` avec redirection, ou servant le contenu de la locale par défaut
- Pas de négociation de contenu par IP / Accept-Language (Googlebot : IP américaines, sans header Accept-Language)
- Cohérence du slash final et de la casse dans les chemins par locale, les canoniques, le hreflang et les sitemaps
- Redirections 301 depuis le format non canonique vers le format canonique

**Remarque :** le rapport Ciblage international de la Search Console est déprécié. Le ciblage géographique repose désormais sur le hreflang, les signaux de contenu et les schémas de liens.

### Qualité du contenu par locale

**Qualité de la traduction :**
- Le contenu traduit par IA n'est pas intrinsèquement du spam (position de Google en 2025), mais des traductions à grande échelle et de faible valeur peuvent déclencher la politique d'abus de contenu à grande échelle
- Google utilise le contenu visible pour déterminer la langue : traduis TOUT le contenu de la page (titre, description, titres, corps), pas seulement les éléments de navigation
- Traduire uniquement les éléments de template ou de nav en laissant le contenu principal dans la langue d'origine crée des doublons

**Pages de locale trop légères :**
- Le système de contenu utile est un signal à l'échelle du site : de nombreuses pages de locale légères peuvent faire baisser le positionnement de pages solides
- Ne pas mettre en noindex les locales légères (gaspille le budget de crawl) ni faire de canonique croisé (entre en conflit avec le hreflang)
- La meilleure approche : ne pas créer de pages de locale que tu ne peux pas rendre réellement utiles

**À vérifier :**
- Toutes les pages par locale ont leur contenu principal intégralement traduit (pas uniquement l'interface)
- Pas de contenu quasi identique entre locales (« Doublon, Google a choisi une autre canonique » dans la GSC)
- Hreflang uniquement pour les locales avec un contenu réel et une demande de recherche
- Signaux localisés : devise, format de téléphone, adresses le cas échéant
- Liens hreflang brisés (404, redirections) gaspillent le budget de crawl ET invalident les clusters hreflang

---

## Audit SEO on-page

### Balises title

**À vérifier :**
- Titles uniques pour chaque page
- Mot-clé principal en début de balise
- 50 à 60 caractères (visible dans les SERP)
- Accrocheur et incitatif au clic
- Nom de marque en fin (en général)

**Problèmes courants :**
- Titles en doublon
- Trop longs (tronqués)
- Trop courts (occasion manquée)
- Bourrage de mots-clés
- Absents

### Meta descriptions

**À vérifier :**
- Description unique par page
- 150 à 160 caractères
- Inclut le mot-clé principal
- Proposition de valeur claire
- Appel à l'action

**Problèmes courants :**
- Descriptions en doublon
- Générées automatiquement sans valeur
- Trop longues ou trop courtes
- Pas de raison convaincante de cliquer

### Structure des titres

**À vérifier :**
- Un seul H1 par page
- Le H1 contient le mot-clé principal
- Hiérarchie logique (H1 → H2 → H3)
- Les titres décrivent le contenu
- Pas utilisés uniquement pour le style

**Problèmes courants :**
- Plusieurs H1
- Niveaux sautés (H1 → H3)
- Titres utilisés pour le style uniquement
- Pas de H1 sur la page

### Optimisation du contenu

**Contenu principal de la page**
- Mot-clé dans les 100 premiers mots
- Champs lexicaux associés utilisés naturellement
- Profondeur et longueur suffisantes pour le sujet
- Répond à l'intention de recherche
- Meilleur que la concurrence

**Problèmes de contenu léger**
- Pages avec peu de contenu original
- Pages de tags ou de catégories sans valeur ajoutée
- Pages passerelles (doorway pages)
- Contenu dupliqué ou quasi dupliqué

### Optimisation des images

**À vérifier :**
- Noms de fichiers descriptifs
- Texte alternatif sur toutes les images
- Le texte alternatif décrit l'image
- Tailles de fichiers compressées
- Formats modernes (WebP)
- Lazy loading mis en place
- Images responsives

### Maillage interne

**À vérifier :**
- Pages importantes bien liées
- Textes d'ancre descriptifs
- Relations de liens logiques
- Pas de liens internes cassés
- Nombre de liens raisonnable par page

**Problèmes courants :**
- Pages orphelines (aucun lien interne)
- Textes d'ancre sur-optimisés
- Pages importantes enfouies
- Liens excessifs en pied de page ou en sidebar

### Ciblage des mots-clés

**Par page**
- Mot-clé principal clairement ciblé
- Title, H1, URL alignés
- Contenu satisfaisant l'intention de recherche
- Pas en concurrence avec d'autres pages (cannibalisation)

**À l'échelle du site**
- Document de mapping des mots-clés
- Pas de lacunes majeures de couverture
- Pas de cannibalisation de mots-clés
- Clusters thématiques logiques

---

## Évaluation de la qualité du contenu

### Signaux E-E-A-T

**Expérience (Experience)**
- Expérience de première main démontrée
- Observations et données originales
- Exemples et études de cas réels

**Expertise**
- Références et titres de l'auteur visibles
- Informations précises et détaillées
- Affirmations correctement sourcées

**Autorité (Authoritativeness)**
- Reconnu dans son domaine
- Cité par d'autres sources
- Références sectorielles

**Fiabilité (Trustworthiness)**
- Informations exactes
- Transparence sur l'entreprise
- Coordonnées disponibles
- Politique de confidentialité, mentions légales, CGU
- Site sécurisé (HTTPS)

### Profondeur du contenu

- Couverture complète du sujet
- Répond aux questions de suivi
- Meilleur que les concurrents bien positionnés
- Mis à jour et actuel

### Signaux d'engagement utilisateur

- Temps passé sur la page
- Taux de rebond en contexte
- Pages par session
- Visites de retour

---

## Problèmes courants par type de site

### Sites SaaS / produit
- Pages produit manquant de profondeur de contenu
- Blog non intégré aux pages produit
- Pages de comparaison / alternatives manquantes
- Pages fonctionnalité légères en contenu
- Pas de glossaire ou de contenu éducatif

### E-commerce
- Pages catégorie légères en contenu
- Descriptions produit dupliquées
- Schema produit manquant
- Navigation à facettes générant des doublons
- Mauvaise gestion des pages de produits épuisés

### Sites de contenu / blog
- Contenu ancien non rafraîchi
- Cannibalisation de mots-clés
- Pas de clustering thématique
- Maillage interne faible
- Pages auteur manquantes

### Sites multilingues / multi-régionaux
- Erreurs hreflang (tags retour manquants, codes invalides, pas d'autoréférence)
- Canonique en conflit avec le hreflang (canonique croisé entre locales qui supprime l'indexation)
- Pages de locale légères qui dégradent le signal de qualité à l'échelle du site
- Seul le boilerplate traduit, contenu principal identique d'une locale à l'autre
- Pas de repli `x-default` déclaré
- Sitemap sans alternates hreflang ou sans entrées réciproques
- Redirections basées sur l'IP qui masquent le contenu à Googlebot
- Mode locale du framework qui cache la locale dans les URL

### Commerce local
- NAP (Nom, Adresse, Téléphone) incohérent
- Schema local manquant
- Fiche Google Business Profile non optimisée
- Pages de localisation manquantes
- Pas de contenu local

---

## Format de sortie

### Structure du rapport d'audit

**Synthèse exécutive**
- Évaluation globale de la santé SEO
- Top 3 à 5 problèmes prioritaires
- Gains rapides identifiés

**Résultats SEO technique**
Pour chaque problème :
- **Problème** : ce qui ne va pas
- **Impact** : impact SEO (Élevé / Moyen / Faible)
- **Preuve** : comment tu l'as détecté
- **Correction** : recommandation précise
- **Priorité** : 1 à 5 ou Élevée / Moyenne / Faible

**Résultats SEO on-page**
Même format que ci-dessus

**Résultats contenu**
Même format que ci-dessus

**Plan d'action priorisé**
1. Corrections critiques (bloquant l'indexation ou le positionnement)
2. Améliorations à fort impact
3. Gains rapides (faciles, bénéfice immédiat)
4. Recommandations à moyen terme

---

## Références

- [Détection de l'écriture IA](references/ai-writing-detection.md) : motifs d'écriture IA courants à éviter (tirets cadratins, expressions surutilisées, mots parasites)
- [SEO international](references/international-seo.md) : sources et preuves pour le hreflang, le canonique + i18n, les sitemaps, la structure des URL et la qualité du contenu par locale
- Pour l'optimisation en recherche IA (AEO, GEO, LLMO, AI Overviews), voir le skill **ai-seo**

---

## Outils référencés

**Outils gratuits**
- Google Search Console (indispensable)
- Google PageSpeed Insights
- Bing Webmaster Tools
- Test des résultats enrichis (**à utiliser pour valider le schema : il exécute JavaScript**)
- Test de compatibilité mobile
- Validateur de schema

> **Remarque sur la détection du schema :** `web_fetch` supprime les balises `<script>` (y compris JSON-LD) et ne peut pas détecter le schema injecté par JS. Utilise l'outil navigateur, le Test des résultats enrichis ou Screaming Frog à la place : ils exécutent JavaScript et capturent le balisage injecté dynamiquement. Voir la section Limite de détection des données structurées ci-dessus.

**Outils payants** (si disponibles)
- Screaming Frog
- Ahrefs / Semrush
- Sitebulb
- ContentKing

---

## Questions spécifiques à la tâche

1. Quelles pages et quels mots-clés comptent le plus ?
2. As-tu accès à la Search Console ?
3. Des changements ou migrations récents ?
4. Qui sont tes principaux concurrents en organique ?
5. Quel est ton volume de trafic organique actuel ?

---

## Skills liés

- **ai-seo** : pour optimiser le contenu pour les moteurs de recherche IA (AEO, GEO, LLMO)
- **programmatic-seo** : pour créer des pages SEO à grande échelle
- **site-architecture** : pour la hiérarchie des pages, la navigation et la structure des URL
- **schema** : pour implémenter les données structurées
- **cro** : pour optimiser les pages pour la conversion (pas seulement le positionnement)
- **analytics** : pour mesurer les performances SEO
