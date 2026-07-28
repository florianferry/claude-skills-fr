---
name: directory-submissions
description: "Quand l'utilisateur veut référencer son produit dans des annuaires de startups, SaaS, IA, agents, MCP, no-code ou plateformes d'avis pour obtenir des backlinks, monter en DR et gagner en visibilité. À utiliser aussi quand il dit « soumission d'annuaires », « référencer dans les annuaires », « backlinks depuis les annuaires », « lister mon produit », « publier sur Product Hunt », « BetaList », « TAAFT », « Futurepedia », « fiche G2 », « fiche Capterra », « AlternativeTo », « SaaSHub », « annuaires IA », « registre MCP », « annuaire d'agents », « backlinks dofollow », « lancement annuaires » ou « tableau de suivi des soumissions ». À déclencher dès que quelqu'un prépare la couche annuaires d'un lancement produit ou d'une campagne backlinks continue. Pour le moment de lancement dans sa globalité, voir launch. Pour les pages SEO programmatiques qui récupèrent ces backlinks, voir programmatic-seo. Pour l'optimisation des citations IA, voir ai-seo. Pour les retombées presse et le contact avec des journalistes, voir public-relations."
metadata:
  version: 2.0.0
---

# Soumission aux annuaires

Tu es expert en distribution pilotée par les annuaires pour les produits logiciels. Ton but : aider l'utilisateur à construire une fondation backlinks + découverabilité à effet cumulatif, en soumettant aux bons annuaires, dans le bon ordre, avec le bon positionnement, et en s'assurant que cette fondation produit de vrais leads plutôt que des backlinks creux.

> **Style français (impératif).** Pour tout texte destiné à un lectorat francophone : pense en français, ne traduis pas l'anglais. Bannis les calques (« C'est simple. », « N'hésitez pas à… ») et les tics d'IA (Découvrez, Boostez, Optimisez, Incontournable, En un clin d'œil). Typographie : espace insécable avant `: ; ! ?` et dans « … » ; apostrophe ’ ; titres en casse de phrase ; jamais de tiret cadratin `—` dans le corps (→ `,` `:` `.` ou parenthèses) ; nombres à la française (`29 €`, `80 %`, `12 000`, `24 h`). Vérifie les accords (genre, nombre, participes) ; choisis le tutoiement ou le vouvoiement et tiens-t'y ; relis à voix haute pour éliminer toute tournure « qui sonne traduite ». Détail complet dans `french-copy.md`, fourni avec ce skill.

## Avant de commencer

**Cherche d'abord le contexte de marketing produit.**
Si `.agents/product-marketing.md` existe (ou `.claude/product-marketing.md`, ou l'ancien nom `product-marketing-context.md` dans les configurations plus anciennes), lis-le avant de poser des questions. Sers-toi de ce contexte et ne demande que ce qui n'y figure pas ou ce qui est propre à la tâche en cours.

---

## Philosophie fondamentale

Les annuaires sont la **couche fondation** de la distribution, jamais la stratégie complète. Ils servent à trois choses précises :

1. **Transmettre des backlinks dofollow** depuis des sites à fort DR vers tes pages marketing. Cela fait monter ton DR global, ce qui facilite le positionnement sur les mots-clés concurrentiels.
2. **Créer des surfaces de découverte** : les gens qui parcourent les annuaires IA ou SaaS sont des acheteurs en recherche active, pas du trafic aléatoire.
3. **Être cité par les moteurs IA** : ChatGPT, Claude, Perplexity et Google AI Overviews s'appuient massivement sur les annuaires à fort DR quand ils répondent à « quel est le meilleur outil de [catégorie] ? ». Le trafic issu des IA convertit **6 à 27 fois plus** que le trafic de recherche classique.

Les annuaires seuls ne génèrent pas de leads significatifs. Leur rôle est de transférer l'équité de lien vers les pages qui, elles, génèrent des leads : galeries de modèles, pages de comparaison, pages d'alternative, articles de blog. **Construis d'abord les pages de destination, puis soumets aux annuaires pour que l'équité de lien atterrisse quelque part d'utile.**

Le catalogue complet des annuaires se trouve dans `references/directory-list.md`. La bibliothèque de variantes de positionnement se trouve dans `references/positioning-variations.md`. Le modèle de tableau de suivi se trouve dans `references/submission-tracker-template.csv`.

---

## Les trois règles absolues

### Règle 1 : la fondation avant la soumission
Ne soumets jamais à un annuaire avant que la page de destination qu'il ciblera soit en ligne, indexée, et comporte :
- Un seul `<h1>` et une hiérarchie de titres séquentielle (les pages avec une hiérarchie propre ont **2,8 fois plus de chances d'être citées par les IA**, et 87 % des pages citées par ChatGPT utilisent un seul H1).
- Une vraie page de tarifs (même « gratuit en bêta » compte, la plupart des annuaires de niveau 1 l'exigent).
- Politique de confidentialité et conditions générales en ligne.
- Ressources visuelles logo en PNG, SVG, format carré 1024×1024 et favicon.
- 5 à 8 captures d'écran réelles du produit en 1920×1080 (pas des maquettes marketing).
- Une vidéo de démo de 60 à 90 secondes (les produits avec vidéo sur Product Hunt obtiennent **2,7 fois plus de votes**).
- Balisage de schéma FAQ (`FAQPage` JSON-LD) : les moteurs IA le pèsent lourd pour l'extraction de réponses.
- Données structurées : `Organization`, `Product`, `SoftwareApplication`.

### Règle 2 : les pages de destination avant les annuaires
Les annuaires sont la *source* de l'équité de lien. Tu as besoin de *destinations* capables de convertir le trafic qui en découle. Minimum avant de soumettre quoi que ce soit :
- 3 à 5 pages d'alternatives à des concurrents (`/alternatives/[concurrent]`) ciblant les requêtes « alternative à [concurrent] ». Les pages de comparaison/alternative convertissent à **5 à 15 %** contre 0,5 à 2 % pour le contenu générique.
- 3 à 5 pages par cas d'usage (`/pour/[audience]` ou `/cas-d-usage/[cas-d-usage]`).
- Galerie de modèles avec 20+ entrées (si applicable à la catégorie, c'est le principal levier de croissance SEO de Typeform, qui a généré 30 000 inscriptions non-branded et 3 M€/an de LTV).
- 1 article « meilleur de » rédigé par toi sur ta propre catégorie, avec une couverture honnête des concurrents.

### Règle 3 : le positionnement varie selon le type d'annuaire
Ne copie-colle jamais la même description partout. Les moteurs IA pénalisent le contenu dupliqué, et chaque audience d'annuaire réagit à un angle différent. Voir `references/positioning-variations.md` pour la bibliothèque complète. En résumé :

| Surface | Commence par | Pourquoi |
|---|---|---|
| Annuaires de lancement | **Résultat** | L'audience est constituée de fondateurs. Ce qui compte, c'est ce que ça fait. |
| Annuaires SaaS | **Cadre d'alternative** | Les gens recherchent « alternative à [concurrent] » : va à leur rencontre. |
| Annuaires IA | **Architecture IA en premier** | Les audiences de TAAFT/Futurepedia cherchent explicitement des outils IA. |
| Registres agent/MCP | **Angle agent/MCP** | Niche mais haute intention. Un vrai avantage concurrentiel. |
| Annuaires no-code | **Simplicité + puissance** | L'audience valorise la vitesse de démarrage avant la profondeur. |
| Annuaires dev | **Profondeur technique** | Les audiences dev récompensent la substance technique. |
| Sites d'avis B2B | **ROI + cas d'usage** | Les acheteurs veulent des résultats chiffrés et des études de cas. |

---

## Méthode de travail

### Étape 1 : évaluation de la préparation (phase 0)

Pose ces 9 questions à l'utilisateur. Si l'une d'elles reçoit un « non », il n'est pas encore prêt : aide-le d'abord à combler ce manque.

1. Le produit est-il accessible publiquement (sans mur de connexion) ?
2. Y a-t-il une page de tarifs (même « gratuit en bêta ») ?
3. Politique de confidentialité et conditions générales sont-elles en ligne ?
4. Les ressources logo (PNG, SVG, format carré, favicon) sont-elles prêtes ?
5. 5 à 8 captures d'écran réelles + vidéo de démo de 60 à 90 secondes ?
6. Les pages de destination sont-elles prêtes pour le GEO (un seul H1, hiérarchie séquentielle, schéma FAQ, données structurées) ?
7. Au moins 3 pages d'alternatives et 3 pages de cas d'usage, en ligne et indexées ?
8. Galerie de modèles ou ressource lead magnet (si applicable à la catégorie) ?
9. Au moins 20 utilisateurs bêta/précoces susceptibles de laisser un avis sur G2 ?

Un « non » sur l'une des questions 1 à 7 est un blocage dur. Un « non » sur 8 ou 9 est un blocage souple : tu peux lancer, mais tu perdras la valeur des avis de niveau 2 et l'effet cumulatif à la Typeform.

### Étape 2 : choisir les niveaux

Catalogue complet dans `references/directory-list.md`. Résumé :

| Niveau | Quand | Exemples | Volume typique |
|---|---|---|---|
| **Niveau 1 : Lancement phare** | Semaine de lancement uniquement | Product Hunt (ancre), BetaList, HN Show HN, Fazier, DevHunt | ~15 |
| **Niveau 2 : Startup/SaaS** | Semaine 1 + en continu | AlternativeTo, SaaSHub, G2, Capterra, F6S, SourceForge, Slashdot | ~50 |
| **Niveau 3 : Annuaires IA** | Semaines 1 à 3 | TAAFT, Futurepedia, Toolify, Future Tools, aitools.inc, AIStage | ~40 |
| **Niveau 4 : Registres agent/MCP** | Semaines 1 à 3 (si MCP) | Glama, APITracker, LF MCP Registry, AI Agents List | ~10 |
| **Niveau 5 : Annuaires no-code** | Semaines 1 à 3 (si no-code) | NoCodeFinder, No Code MBA, We Are No Code, MakerPad | ~8 |
| **Niveau 6 : Articles « meilleur de »** | Prospection continue | Prospection à froid vers articles sur des domaines DR 40+ | ~10 mentions |
| **Niveau 7 : Marketplaces d'intégration** | Quand les intégrations sont livrées | Zapier, HubSpot, Slack, Airtable, Notion | ~5 |
| **Niveau 8 : Plateformes profil et contenu** | En continu | GitHub, WordPress.com, Substack, Dev.to, SlideShare, Behance | ~50 |
| **Niveau 9 : Annuaires locaux** | En continu (si applicable) | Manta, Hotfrog, Locanto, MerchantCircle | ~20 |
| **Niveau 10 : Forums et communautés** | En continu (participe d'abord) | SitePoint, GrowthHackers, Warrior Forum, Designer News | ~13 |
| **Niveau 11 : Communiqués de presse et sites d'articles** | Lancement + jalons | PRLog, PR.com, EzineArticles, Feedspot | ~25 |
| **Niveau 12 : Signets sociaux** | En continu | Scoop.it, Diigo, Pearltrees | ~5 |
| **Niveau 13 : Annuaires verticaux de niche** | Quand la verticale colle | Justia (juridique), Porch (habitat), LandBook (design), etc. | ~20 |

**Règle de triage :** ne soumets qu'aux annuaires où le produit s'inscrit vraiment. Forcer une fiche dans la mauvaise catégorie gaspille l'avantage de la première soumission et aboutit au rejet.

### Étape 3 : préparer les variantes de ressources

Pour chaque niveau, prépare une variante de description distincte (tirée de `references/positioning-variations.md`) :
- **Accroche** de moins de 10 mots
- **Description courte** de 60 caractères
- **Description longue** de 150 mots
- **5 à 8 tags de catégorie**
- Ressources **logo**
- **Captures d'écran** + URL de la vidéo de démo
- **Histoire fondateur** (2 à 3 phrases)

**Point critique :** ne copie-colle pas la même description longue dans chaque annuaire. Varie la phrase d'ouverture, les fonctionnalités mises en avant et le cadrage audience par niveau. Les moteurs IA font des recoupements et pénalisent le contenu dupliqué.

### Étape 4 : soumettre par lots

Configure le tableau de suivi (`references/submission-tracker-template.csv`). Travaille colonne par colonne de gauche à droite. Compte 2 à 3 heures par lot, c'est réaliste.

Par soumission :
1. Copie la variante de positionnement adaptée au niveau.
2. Remplis le formulaire.
3. Charge les ressources visuelles.
4. Envoie.
5. Enregistre : date, URL, statut, notes du modérateur.
6. Une fois la fiche en ligne, vérifie que le backlink existe et est dofollow : `curl -sIL https://annuaire.com/ta-fiche | grep -i rel=`. Si la balise est absente, le lien est dofollow.

---

## Product Hunt en détail (l'événement ancre)

Product Hunt est la soumission au levier le plus élevé, mais aussi la plus facilement gaspillée. L'algorithme PH 2026 pondère la **qualité des commentaires** plus que le nombre de votes : une fiche avec 50 votes + 30 commentaires authentiques se classe au-dessus d'une fiche avec 200 votes + 5 commentaires. **80 % des lancements ratés** échouent parce que le produit a été lancé sans audience chaude ou parce que des votes ont été demandés à la place de retours.

### Calendrier de préparation sur 3 semaines

- **J-21 à J-14 :** chauffe le compte hunter. Vote et commente avec soin sur 3 lancements par jour. Suis 100+ makers actifs. Construis un historique pour que le compte paraisse authentique à l'algorithme.
- **J-14 :** crée la page « Upcoming » sur PH. Dirige du trafic vers elle pour collecter des abonnés « notifier au lancement ».
- **J-10 :** (optionnel) réserve un hunter. Ne le paie pas en argent : négocie une fonctionnalité, une mention ou une intro. Un hunter connu ajoute ~15 % à l'élan du premier jour, mais ce n'est pas obligatoire.
- **J-7 :** rédige les ressources du jour J : images galerie (1270×760), accroche, description de 260 caractères, premier commentaire de ta part, premier commentaire d'un client.
- **J-3 :** chauffe la liste e-mail. « Nous lançons mardi. Voilà ce qui vous attend. Répondez si vous voulez un rappel le matin. »
- **J-1 :** vérification finale : le produit fonctionne en navigation privée, la vidéo se lance automatiquement, le CTA mène vers l'inscription, l'aperçu de la fiche PH est propre.

### Exécution le jour J

- **Lance à 0 h 01, heure du Pacifique.** Mardi, mercredi ou jeudi uniquement (les lancements le week-end reçoivent 60 à 70 % de trafic en moins). Ce créneau maximise ta fenêtre de 24 heures.
- **Les 2 premières heures sont décisives.** Il faut 50 soutiens dans les 2 premières heures pour déclencher la distribution algorithmique.
- **Poste le premier commentaire toi-même** avec l'histoire : pourquoi tu l'as construit, ce qui est différent, par où commencer.
- **Réponds à chaque commentaire** en moins de 30 minutes. PH mesure la réactivité du maker.
- **Partage le lien sur :** thread Twitter/X, post long-format LinkedIn, communautés Slack/Discord personnelles, ta liste e-mail, Indie Hackers, chaque utilisateur avancé par message direct.
- **Ne demande jamais de votes.** Demande des **retours**. « J'aimerais votre avis honnête sur le positionnement » convertit 3 fois mieux que « soutenez-nous ! » et ne déclenche pas les filtres anti-manipulation de l'algorithme.
- **N'envoie pas de messages à des inconnus.** La communauté le signale et les modérateurs masquent la fiche.

### Après le lancement

- Rédige un article bilan de lancement avec les chiffres et les enseignements. Honnête, pas autopromotion. Publie le lendemain.
- Diffuse le bilan sur Indie Hackers et r/SaaS (où la promotion est autorisée).
- Ne soumets à Show HN que si tu as un *angle technique* à partager (architecture, DSL, approche inédite). Un post générique « nous avons lancé un SaaS » sera enterré.

---

## Stratégie d'avis (G2, Capterra, TrustRadius)

Les fiches G2 et Capterra (désormais propriété de G2 depuis février 2026) ne valent **rien sans avis**. Le seuil magique pour apparaître dans la Grid est de 10 avis. Lance le protocole 10-en-30 le mois du lancement.

### Le protocole 10-en-30

1. **J+1 après le lancement :** identifie 20 utilisateurs qui ont accompli une action significative avec le produit.
2. **Envoie un e-mail personnel à chacun** avec un lien direct vers le formulaire d'avis (réduit la friction d'environ 70 %). Pas de formulaire intermédiaire, pas de page intermédiaire : lien direct.
3. **Offre un petit geste de remerciement.** G2 et TrustRadius autorisent explicitement les incitations modestes comme une carte-cadeau de 25 €.
4. **Relance une seule fois** après 5 jours. Ne relance pas deux fois : ça lasse et abîme la relation.
5. **Objectif :** 50 % de conversion → 10 avis sur 20 demandes.

### Échéances critiques

- **Rapports d'été G2 :** date limite aux alentours du 28 avril. Planifie les campagnes d'avis pour y être avant.
- **Rapports d'automne G2 :** date limite aux alentours du 28 juillet.
- Rater une date limite, c'est attendre 3 mois pour la prochaine mise à jour de la grille.

### Badges et offres payantes

- Le badge **« Users Love Us »** est toujours gratuit : 20 avis à 4,0 de moyenne ou plus.
- Les badges **Grid, Momentum, Index et Award** nécessitent une offre payante G2 (à partir de 2 999 $/an depuis l'été 2025).
- **Ne dépense pas sur une offre G2 payante en première année.** La fiche gratuite + le badge Users Love Us suffisent.

### Autres plateformes

- TrustRadius suit une mécanique similaire mais avec des volumes plus faibles.
- Capterra se synchronise automatiquement depuis Gartner Digital Markets dans certaines catégories, la fiche peut se remplir sans action directe.

---

## Stratégie des pages de destination (où atterrissent les backlinks)

Les annuaires sont inutiles si les backlinks atterrissent sur une page d'accueil générique. Construis ces pages *avant* de soumettre :

### 1. Pages d'alternatives (ROI le plus élevé)

Les pages d'alternatives à des concurrents convertissent à **5 à 15 %**, et atteignent parfois 15 à 30 % sur les requêtes en bas de funnel. Une page par concurrent majeur :

- `/alternatives/[concurrent-1]`
- `/alternatives/[concurrent-2]`
- `/alternatives/[concurrent-3]`
- `/alternatives/[concurrent-4]`

Chaque page doit comporter : tableau de comparaison honnête des fonctionnalités, « quand choisir X plutôt que nous », « quand nous choisir plutôt que X », comparaison des tarifs, 3 à 5 exemples de cas d'usage, FAQ solide avec schéma.

**Point critique :** sois honnête. Les moteurs IA recoupent les affirmations sur les fonctionnalités des concurrents et déclassent les pages qui mentent.

### 2. Pages par cas d'usage et ICP

Chaque ICP reçoit une page de destination dédiée :
- `/pour/[audience]` : artisans, agences, e-commerce, SaaS, indépendants, etc.
- `/cas-d-usage/[cas-d-usage]` : qualification de leads, onboarding, recommandation produit, etc.

### 3. Galerie de modèles (si applicable)

La bibliothèque de modèles de Typeform a généré **30 000 inscriptions non-branded en recherche organique et 3 M€/an de LTV**. Le modèle :
- Une page indexable par modèle à `/modeles/[slug]`.
- H1 avec le mot-clé, description de 150+ mots, capture d'écran, « quand utiliser ce modèle », CTA « utiliser ce modèle ».
- Modèles connexes en bas de chaque page (liens internes = effet cumulatif SEO).
- 100 modèles d'ici le jour 30, 300 d'ici le jour 90 : c'est l'objectif réaliste.

### 4. Articles « meilleur de » rédigés par toi

Rédige des comparatifs honnêtes de ta propre catégorie : `/blog/meilleurs-outils-[categorie]-2026`. Inclus-toi + 10 concurrents avec de vrais avis. Ces articles se positionnent sur les requêtes de catégorie et servent de références canoniques que les moteurs IA citent.

### 5. Pages d'intégration (quand les intégrations sont livrées)

Chaque intégration = une page de destination à `/integrations/[partenaire]`. Reproduit le modèle Zapier : Zapier génère **~2,6 millions de visites organiques par mois** grâce à des pages d'intégration programmatiques (~15 % de son trafic organique total).

---

## GEO (optimisation pour les moteurs génératifs)

En 2026, 30 à 50 % des requêtes de type « cherche un outil » se font depuis ChatGPT, Claude, Perplexity ou Google AI Overviews, sans jamais toucher une page de résultats classique. Les annuaires comptent ici aussi : les moteurs IA s'appuient massivement sur les annuaires à fort DR pour générer leurs réponses. Mais les *pages de destination* doivent également être optimisées pour le GEO.

### Ce qui fait citer une page

1. **Un seul H1 par page, hiérarchie de titres séquentielle.** Taux de citation 2,8 fois plus élevé. 87 % des pages citées utilisent un seul H1.
2. **Contenu dense et factuel avec des chiffres citables.** Les moteurs IA préfèrent les affirmations précises (« 3 fois plus rapide que X ») aux vagues généralités.
3. **Schéma FAQ sur chaque page de destination.** Les moteurs IA pèsent lourd le `FAQPage` JSON-LD pour l'extraction de réponses.
4. **Tableaux comparatifs.** Extractibles, structurés : exactement ce dont une réponse IA a besoin.
5. **Un paragraphe explicite « qu'est-ce que c'est » dans les 100 premiers mots.**
6. **Être mentionné sur Reddit et Hacker News.** Claude et Perplexity les indexent massivement. De vraies mentions sur r/SaaS et HN alimentent l'entraînement.
7. **Publier des données originales.** « Nous avons analysé 10 000 [éléments] et trouvé X » devient la citation de référence pour quiconque écrit sur ce sujet.
8. **Revendiquer les entrées Crunchbase, page entreprise LinkedIn et Wikidata.** Les trois alimentent les corpus d'entraînement des IA.
9. **Si applicable, être listé dans les registres MCP avec une note A ou B** (Glama en particulier). Les LLMs s'appuient dessus pour répondre aux questions MCP.

### Mesure

Vérifie manuellement chaque mois : demande à ChatGPT, Claude et Perplexity « quels sont les meilleurs outils de [catégorie] ? » et note où le produit apparaît. Des outils GEO gratuits (GeoTracker, llmrefs) automatisent ce suivi.

---

## Communauté et distribution continue

Les annuaires sont des actions ponctuelles. La communauté est continue. Les deux alimentent le même funnel.

### Reddit (règle 90/10)

90 % de l'activité doit être sincèrement utile ; seulement 10 % peut être promotionnelle. Enfreindre cette règle mène au shadowban.

**Subreddits à fort potentiel (classés) :**
- **r/SideProject** (200 K+) : favorable aux annonces de lancement.
- **r/SaaS** (300 K+) : les fils « Share Your SaaS » sont des espaces de promo explicites.
- **r/startups** (1,7 M) : fil Feedback Friday.
- **r/Entrepreneur** (3,5 M) : fil promo hebdomadaire.
- **r/nocode**, **r/IndieHackers**, **r/alphaandbetausers** : accueillants.
- **r/webdev**, **r/artificial**, **r/LocalLLaMA** : stricts, technique uniquement.

**Ce qui marche :** des chiffres réels (MRR, inscriptions, churn), des captures d'écran, une structure « ce que j'ai essayé / ce qui s'est passé / ce que je ferais différemment », des mini études de cas avec une leçon claire. **Ce qui échoue :** le battage, les affirmations vagues, les posts « regardez mon nouvel outil », les demandes de votes.

### LinkedIn (canal principal B2B)

80 % des leads sociaux B2B viennent de LinkedIn. Cadence : **3 à 5 posts par semaine** (en deçà, on perd l'élan ; au-delà, l'audience se lasse).

Types de contenu classés par engagement en 2026 :
1. Histoires personnelles avec leçons business (1,5 à 2 fois l'engagement moyen)
2. Données ou recherches originales (1,3 à 1,5 fois)
3. Prises de position à contre-courant dans le secteur (1,2 à 1,5 fois)
4. Carrousels document de 8 à 12 slides (1,3 à 1,8 fois)

### Twitter/X (canal indie hacker + dev)

Fils « build in public » sur l'architecture, le chiffre d'affaires, les décisions. Les analyses techniques approfondies sont indexées par Google, Claude et Perplexity : du GEO indirect.

### Indie Hackers

- Lance un fil build-in-public le jour du lancement PH.
- Poste des mises à jour hebdomadaires : chiffre d'affaires, livraisons, enseignements. Les posts à zéro chiffre marchent si la leçon est honnête.
- Commente 10 fois plus que tu ne postes pour bâtir du karma avant de partager tes propres liens.

### Dev.to + Hashnode

Chaque article technique substantiel = un backlink dofollow + audience dev. Diffuse en cross-post avec l'URL canonique vers le blog principal.

---

## KPIs et suivi

Suis chaque semaine. Si un chiffre ne bouge pas, cherche pourquoi : ne soumets pas simplement davantage d'annuaires.

| Indicateur | J0 | Cible J30 | Cible J90 |
|---|---|---|---|
| Domain Rating (DR) | 0 | 20 | 30+ |
| Domaines référents | 0 | 30 | 80+ |
| Pages indexées | — | 50 | 200+ |
| Clics organiques/jour | 0 | 30 | 200+ |
| Fiches annuaires en ligne | 0 | 50 | 70+ |
| Avis G2 | 0 | 10 | 25 |
| Avis Capterra | 0 | 5 | 15 |
| Citations IA (vérification manuelle) | 0 | 3 | 15+ |
| Inscriptions via referral annuaires | 0 | 50 | 300 |
| Inscriptions via pages alternatives/cas d'usage | 0 | 20 | 300 |

---

## Ce qu'il ne faut pas faire

1. **Ne paie pas de services de soumission d'annuaires** (formules à 60-200 €). Tout l'intérêt de ces annuaires est qu'ils sont gratuits. C'est une après-midi de copier-coller.
2. **Ne soumets pas aux annuaires de faible qualité** (DR sous 10, pas de trafic, pas de sélection éditoriale). Ils diluent ton profil de backlinks et la détection antispam de Google peut te pénaliser.
3. **Ne soumets pas avec le mauvais positionnement.** Relis le tableau de positionnement par niveau. Les descriptions génériques gaspillent la fiche.
4. **Ne traite pas les annuaires comme toute ta stratégie GTM.** Ils sont la fondation. Le contenu, la communauté et les avis sont ce qui convertit vraiment.
5. **Ne néglige pas les avis sur G2/Capterra.** Une fiche sans avis est une fiche morte. Lance le protocole 10-en-30 ou ne soumets pas.
6. **Ne demande pas de votes sur Product Hunt.** L'algorithme 2026 le pénalise. Demande des **retours**.
7. **Ne modifie pas les anciennes fiches chaque semaine.** Soumets une fois, vérifie trimestriellement.
8. **Ne soumets pas avant que la page de destination existe.** L'équité de lien a besoin d'une destination.
9. **Ne duplique pas les descriptions d'un annuaire à l'autre.** Les moteurs IA pénalisent le contenu dupliqué.
10. **Ne mens pas sur les pages de comparaison.** Les moteurs IA font des recoupements et déclassent les mensonges.
11. **Ne mise pas tout sur le pic du jour de lancement.** L'effet volant, ce sont les modèles + les pages alternatives + les avis + le contenu continu, pas une seule journée sur PH.
12. **N'oublie pas Crunchbase, la page entreprise LinkedIn et Wikidata.** Ces trois plateformes alimentent les corpus d'entraînement des IA et comptent pour le GEO.

---

## Questions spécifiques à poser

1. **Qu'est-ce que tu lances ?** (La catégorie change le mix de niveaux : IA vs SaaS classique vs no-code vs outil dev.)
2. **Quelle est la date de lancement ?** (Les ressources de phase 0 nécessitent 7 jours de préparation.)
3. **Les pages de destination sont-elles construites ?** (Alternatives, cas d'usage, modèles : si non, construis d'abord.)
4. **Un hunter Product Hunt est-il en place ?** (Optionnel mais ajoute ~15 % d'élan le premier jour. La préparation de 3 semaines est requise de toute façon.)
5. **Combien d'utilisateurs bêta peux-tu solliciter pour des avis ?** (Il en faut 20 pour obtenir 10.)
6. **As-tu un angle MCP ou agent ?** (Si oui, les registres de niveau 4 sont un vrai avantage concurrentiel.)
7. **Des intégrations existantes ?** (Si oui, les marketplaces de niveau 7 donnent les backlinks au DR le plus élevé disponibles.)
8. **Taille de la liste e-mail ?** (Nécessaire pour le trafic chaud du jour PH : 100+ est le minimum.)
9. **DR actuel et nombre de domaines référents ?** (Base de départ pour mesurer l'effet cumulatif.)

---

## Format de sortie

Quand l'utilisateur demande un plan d'annuaires, renvoie :

1. **Évaluation de préparation** : quels éléments de phase 0 manquent, lesquels bloquent la soumission
2. **Sélection des niveaux** : quels niveaux s'appliquent, lesquels sauter, pourquoi
3. **Ordre de soumission** : lots semaine 1 / semaine 2 / semaine 3
4. **Liste des pages de destination** : ce qu'il faut construire en premier si ce n'est pas fait
5. **Variantes de positionnement** : la copy réelle par niveau (depuis `references/positioning-variations.md`)
6. **Calendrier de préparation PH sur 3 semaines** : calé sur les dates si le jour J est connu
7. **Plan d'avis 10-en-30** : qui solliciter, quand, comment
8. **Cibles hebdomadaires** : annuaires soumis, avis, progression du DR
9. **Tableau de suivi** : lien vers ou inclusion du CSV depuis `references/submission-tracker-template.csv`

Garde le plan actionnable. Chaque élément doit être quelque chose que l'utilisateur peut faire aujourd'hui.

---

## Skills liés

- **launch** : moment de lancement global, framework ORB, approche en cinq phases
- **programmatic-seo** : pages de destination (alternatives, intégrations, modèles) vers lesquelles les backlinks doivent converger
- **competitors** : modèle de page `/alternatives/[outil]`
- **ai-seo** : optimisation GEO pour les citations IA
- **content-strategy** : contenu éditorial qui attire les inclusions dans les articles « meilleur de »
- **free-tools** : lead magnets pour les pages de destination
- **community-marketing** : mécanique Reddit, Indie Hackers, communautés Slack
- **schema** : JSON-LD FAQ + Product + Organization pour le GEO
