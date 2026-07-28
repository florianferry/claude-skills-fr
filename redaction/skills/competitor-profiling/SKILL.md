---
name: competitor-profiling
description: "Quand l’utilisateur veut analyser ou profiler des concurrents à partir de leurs URLs. À utiliser aussi quand il dit « profil concurrent », « analyse concurrentielle », « veille concurrentielle », « creuse ce concurrent », « paysage concurrentiel », « dossier concurrents », « audit concurrentiel », « qui sont mes concurrents », « compare mes concurrents » ou « recherche ces concurrents ». L’entrée est une liste d’URLs concurrentes. La sortie est un ensemble de fichiers markdown structurés par concurrent. Pour créer des pages de comparaison ou d’alternatives à partir de ces profils, voir competitors. Pour les battle cards et les supports de vente, voir sales-enablement."
metadata:
  version: 2.0.0
---

# Analyse concurrentielle

Tu es un analyste en intelligence concurrentielle. Ton objectif : prendre une liste d’URLs concurrentes et produire des dossiers structurés, en combinant l’exploration des sites avec les données SEO et de marché.

> **Style français (impératif).** Pour tout texte destiné à un lectorat francophone : pense en français, ne traduis pas l'anglais. Bannis les calques (« C'est simple. », « N'hésitez pas à… ») et les tics d'IA (Découvrez, Boostez, Optimisez, Incontournable, En un clin d'œil). Typographie : espace insécable avant `: ; ! ?` et dans « … » ; apostrophe ’ ; titres en casse de phrase ; jamais de tiret cadratin `—` dans le corps (→ `,` `:` `.` ou parenthèses) ; nombres à la française (`29 €`, `80 %`, `12 000`, `24 h`). Vérifie les accords (genre, nombre, participes) ; choisis le tutoiement ou le vouvoiement et tiens-t'y ; relis à voix haute pour éliminer toute tournure « qui sonne traduite ». Détail complet dans `french-copy.md`, fourni avec ce skill.

## Évaluation initiale

**Commence par chercher le contexte de marketing produit.**
Si `.agents/product-marketing.md` existe (ou `.claude/product-marketing.md`, ou l’ancien nom `product-marketing-context.md` dans les configs plus anciennes), lis-le avant de poser des questions. Sers-toi de ce contexte et ne demande que ce qui n’y figure pas ou ce qui est propre à la tâche en cours.

Avant de lancer l’analyse, confirme :

1. **URLs des concurrents** : la liste des sites à profiler
2. **Ton produit** : ce que tu fais (si ce n’est pas dans le contexte de marketing produit)
3. **Niveau de profondeur** : analyse rapide (faits essentiels seulement) ou profil complet (analyse approfondie)
4. **Axes prioritaires** : des dimensions à creuser en priorité (tarification, positionnement, force SEO, stratégie de contenu…)

Si l’utilisateur fournit des URLs et que le contexte est disponible, lance-toi sans poser de questions.

---

## Principes fondateurs

### 1. Les faits, pas les suppositions
Chaque affirmation d’un profil doit pouvoir se rattacher à une source : contenu extrait du site, avis utilisateurs ou métriques SEO. Indique clairement ce qui relève de l’inférence.

### 2. Structuré et comparable
Tous les profils suivent le même modèle pour pouvoir être comparés côte à côte. La cohérence prime sur l’exhaustivité d’un seul profil.

### 3. Données actuelles
Un profil est une photo à un instant T. Indique toujours la date de génération. Signale ce qui semble daté (ex. : « page tarifs mise à jour en 2023 »).

### 4. Évaluation honnête
N’exagère pas les faiblesses des concurrents et ne minimise pas leurs points forts. Un profil précis est un profil utile.

---

## Sauvegarde des données brutes

Avant de synthétiser le profil, enregistre toutes les données brutes (scrapes, SEO, avis) sur disque, pour pouvoir les relire, les auditer ou les réutiliser sans relancer des appels coûteux.

**Arborescence** (relative à la racine du projet) :

```
competitor-profiles/
├── raw/
│   └── <competitor-slug>/
│       └── <YYYY-MM-DD>/
│           ├── scrapes/    # un fichier .md par page scrapée (homepage.md, pricing.md, …)
│           ├── seo/        # un fichier .json par appel DataForSEO (backlinks-summary.json, ranked-keywords.json, …)
│           └── reviews/    # un fichier .md ou .json par source d'avis (g2.md, capterra.md, …)
├── <competitor-slug>.md    # profil synthétisé final
└── _summary.md             # synthèse multi-concurrents
```

Règles :

- `<competitor-slug>` en minuscules avec tirets (ex. : `hubspot`, `brevo-fr`)
- `<YYYY-MM-DD>` correspond à la date de collecte : permet de rejouer et de comparer des snapshots dans le temps
- Enregistre chaque scrape Firecrawl en markdown brut dans `scrapes/<nom-de-page>.md`
- Enregistre chaque réponse DataForSEO en JSON brut dans `seo/<nom-endpoint>.json`
- Enregistre chaque source d’avis dans `reviews/<source>.md` (texte nettoyé) ou `.json` (brut)
- Crée toujours un nouveau dossier daté à chaque nouvelle analyse ; ne remplace jamais les données d’une date précédente

Le profil synthétisé (`<competitor-slug>.md`) doit référencer le dossier de données brutes dans sa section `## Sources des données brutes`.

---

## Processus de recherche

### Phase 1 : exploration du site (Firecrawl)

Pour chaque URL concurrente, explore les pages clés afin d’extraire le positionnement, les fonctionnalités, la tarification et les messages.

#### Étape 1 : cartographier le site

Utilise **Firecrawl Map** pour découvrir la structure du site et repérer les pages importantes :

```
firecrawl_map → URL du concurrent
```

À partir de la carte, identifie et priorise ces types de pages :
- Page d’accueil
- Page tarifs
- Pages fonctionnalités / produit
- Page à propos / entreprise
- Blog (niveau racine, pour les signaux de stratégie de contenu)
- Clients / études de cas
- Intégrations
- Nouveautés / changelog (si disponible)

#### Étape 2 : scraper les pages clés

Utilise **Firecrawl Scrape** sur chaque page identifiée :

```
firecrawl_scrape → chaque URL de page clé
```

Enregistre chaque résultat dans `competitor-profiles/raw/<competitor-slug>/<YYYY-MM-DD>/scrapes/<nom-de-page>.md` avant d’en extraire les champs.

Extrais de chaque page :

| Page | Ce qu’il faut extraire |
|------|----------------------|
| **Accueil** | Titre, sous-titre, proposition de valeur, CTA principal, signaux de preuve sociale, signaux d’audience cible |
| **Tarifs** | Formules, prix, détail des fonctionnalités par formule, options de facturation, période d’essai / formule gratuite, signaux d’offre entreprise |
| **Fonctionnalités** | Catégories de fonctionnalités, capacités clés, façon dont ils décrivent chaque fonctionnalité, signaux captures / démo |
| **À propos** | Histoire de création, taille de l’équipe, levées de fonds, mission, siège social |
| **Clients** | Clients nommés, logos, secteurs couverts, thèmes des études de cas |
| **Intégrations** | Nombre total, intégrations clés, catégories |
| **Changelog** | Vélocité de publication, axes de développement récents, signaux sur la direction produit |

#### Étape 3 : scraper les avis concurrents (optionnel mais très utile)

Utilise **Firecrawl Scrape** ou **Firecrawl Search** pour trouver :
- La page G2 du concurrent
- Sa page Capterra
- Sa fiche Product Hunt
- Son profil TrustRadius

Enregistre chaque page d’avis dans `competitor-profiles/raw/<competitor-slug>/<YYYY-MM-DD>/reviews/<source>.md`. Extrais ensuite : note globale, nombre d’avis, thèmes récurrents des éloges, thèmes récurrents des critiques, et 3 à 5 verbatims représentatifs.

---

### Phase 2 : données SEO et marché (DataForSEO)

Utilise les outils MCP DataForSEO pour collecter des données quantitatives. Enregistre chaque réponse brute en JSON dans `competitor-profiles/raw/<competitor-slug>/<YYYY-MM-DD>/seo/<nom-endpoint>.json` avant de l’intégrer au profil. Pour la liste complète des outils MCP utilisés (Firecrawl + DataForSEO) et des exemples d’appels, voir [references/tool-reference.md](references/tool-reference.md).

#### Autorité de domaine et backlinks

Utilise **backlinks_summary** pour obtenir :
- Score d’autorité de domaine
- Total de backlinks
- Nombre de domaines référents
- Score de spam

Utilise **backlinks_referring_domains** pour :
- Principaux domaines référents (signaux de qualité)
- Patterns d’acquisition de liens

#### Mots-clés et trafic

Utilise **dataforseo_labs_google_ranked_keywords** pour :
- Total de mots-clés organiques positionnés
- Mots-clés en top 3, top 10, top 100
- Trafic organique estimé

Utilise **dataforseo_labs_google_domain_rank_overview** pour :
- Métriques organiques au niveau domaine
- Valeur estimée du trafic
- Principaux mots-clés par trafic

Utilise **dataforseo_labs_google_keywords_for_site** pour :
- Mots-clés ciblés par le concurrent
- Lacunes de contenu par rapport à ton site

#### Données de positionnement concurrentiel

Utilise **dataforseo_labs_google_competitors_domain** pour :
- Leurs concurrents organiques les plus proches (peut révéler des acteurs que tu n’avais pas identifiés)
- Données de chevauchement de marché

Utilise **dataforseo_labs_google_relevant_pages** pour :
- Leurs pages à plus fort trafic
- Le contenu qui génère le plus de valeur organique

---

### Phase 3 : synthèse

Croise le contenu extrait des pages avec les données SEO pour construire le profil. Vérifie la cohérence des affirmations (ex. : si le site annonce « 10 000 clients », contrôle si le profil de trafic et de backlinks soutient cette échelle).

---

## Format de sortie

### Structure du profil

Génère un fichier markdown par concurrent, enregistré dans un répertoire `competitor-profiles/` à la racine du projet.

**Nom de fichier** : `competitor-profiles/[nom-concurrent].md`

**Pour les modèles complets de profil et de synthèse** : voir [references/templates.md](references/templates.md)

Chaque profil suit cette structure :

```markdown
# [Nom du concurrent] : Profil concurrentiel

**URL** : [site web]
**Généré le** : [date]
**Profondeur** : [analyse rapide / profil complet]

---

## En un coup d'œil

| Métrique | Valeur |
|----------|--------|
| Tagline | [issue de la page d'accueil] |
| Fondé en | [année] |
| Siège social | [ville / pays] |
| Taille de l'équipe | [estimation] |
| Levées de fonds | [si connues] |
| Autorité de domaine | [depuis DataForSEO] |
| Trafic organique estimé | [mensuel] |
| Domaines référents | [nombre] |
| Mots-clés organiques | [nombre] |

---

## Positionnement et messages

**Proposition de valeur principale** : [titre + sous-titre de la page d'accueil]

**Audience cible** : [à qui ils s'adressent, d'après l'analyse de la copy]

**Axe de positionnement** : [comment ils se positionnent, ex. : « simplicité avant tout », « qualité entreprise », « tout-en-un »]

**Thèmes de communication clés** :
- [thème 1, avec page source]
- [thème 2]
- [thème 3]

---

## Produit et fonctionnalités

### Capacités principales
- [capacité 1] : [brève description issue de leur site]
- [capacité 2]
- …

### Différenciateurs mis en avant
- [ce qu'ils présentent comme unique]

### Intégrations
- [nombre] intégrations
- Principales : [liste des 5 à 10 premières]

### Signaux sur la direction produit
- [d'après le changelog / les fonctionnalités récentes]

---

## Tarification

| Formule | Prix | Inclus principaux |
|---------|------|------------------|
| [Gratuit/Starter] | [prix] | [ce qui est inclus] |
| [Pro/Croissance] | [prix] | [ce qui est inclus] |
| [Entreprise] | [prix] | [ce qui est inclus] |

**Facturation** : [mensuelle / annuelle, remise annuelle]
**Essai gratuit** : [oui / non, durée]
**Points notables** : [particularités tarifaires : par siège, à l'usage, coûts cachés…]

---

## Clients et preuves sociales

**Clients nommés** : [liste des logos notables]
**Secteurs** : [principaux secteurs couverts]
**Thèmes des études de cas** : [résultats mis en avant]
**Notes des avis** :
- G2 : [note] ([nombre] avis)
- Capterra : [note] ([nombre] avis)

---

## SEO et stratégie de contenu

**Force organique** :
- Trafic organique mensuel estimé : [nombre]
- Mots-clés organiques (top 10) : [nombre]
- Valeur du trafic organique : [estimation en €]

**Pages organiques les plus performantes** (par trafic estimé) :
1. [URL de page] : [mot-clé], [trafic estimé]
2. [URL de page] : [mot-clé], [trafic estimé]
3. [URL de page] : [mot-clé], [trafic estimé]

**Signaux de stratégie de contenu** :
- Fréquence de publication sur le blog : [estimation]
- Types de contenus principaux : [guides, comparatifs, modèles…]
- Axes thématiques : [sujets dans lesquels ils investissent]

**Profil de backlinks** :
- Domaines référents : [nombre]
- Principaux domaines référents : [liste de 5]
- Dynamique d'acquisition : [en croissance / stable / en recul]

---

## Points forts et faiblesses

### Points forts
- [point fort 1, avec source]
- [point fort 2]
- [point fort 3]

### Faiblesses
- [faiblesse 1, avec source]
- [faiblesse 2]
- [faiblesse 3]

---

## Implications concurrentielles pour [ton produit]

**Où ils sont plus forts que nous** : [domaines où ce concurrent a un avantage]

**Où nous sommes plus forts qu'eux** : [domaines où tu as un avantage]

**Opportunités** : [lacunes dans leur offre ou leur positionnement à exploiter]

**Risques** : [domaines où ils progressent ou gagnent du terrain]

---

## Sources des données brutes

- Page d'accueil scrapée le : [date]
- Page tarifs scrapée le : [date]
- Données SEO collectées le : [date]
- Données d'avis collectées le : [date, sources]
```

---

### Document de synthèse

Après avoir profilé tous les concurrents, génère un `competitor-profiles/_summary.md` qui comprend :

1. **Vue d’ensemble du paysage concurrentiel** : un paragraphe résumant le champ concurrentiel
2. **Tableau comparatif** : métriques clés côte à côte pour tous les concurrents profilés
3. **Carte de positionnement** : où se situe chaque concurrent (ex. : simple/complexe, entrée de gamme/premium)
4. **Enseignements clés** : 3 à 5 observations stratégiques issues de l’analyse
5. **Lacunes et opportunités** : là où le marché est sous-adressé

---

## Analyse rapide vs. profil complet

### Analyse rapide (plus rapide, moins coûteuse)
- Scraping : page d’accueil + page tarifs seulement
- SEO : vue d’ensemble du domaine + résumé des mots-clés positionnés
- Non inclus : avis, stack technologique, détails des backlinks
- Sortie : profil abrégé (En un coup d’œil + Positionnement + Tarification + Résumé SEO)

### Profil complet (analyse approfondie)
- Scraping : toutes les pages clés + sites d’avis
- SEO : analyse complète des backlinks + intelligence mots-clés + découverte de concurrents
- Inclus : stack technologique, analyse de la stratégie de contenu, exploitation des avis
- Sortie : modèle de profil complet

Par défaut, opte pour l’**analyse rapide** sauf si l’utilisateur demande un profil complet ou mentionne un nombre restreint de concurrents (3 ou moins).

---

## Gestion de plusieurs concurrents

Lorsque tu profiles plus d’un concurrent :

1. **Parallélise les scrapes** : explore les pages d’accueil de tous les concurrents simultanément, puis les pages tarifs, etc.
2. **Utilise des métriques cohérentes** : collecte les mêmes métriques DataForSEO pour chaque concurrent afin que les profils soient comparables
3. **Construis la synthèse en dernier** : une fois tous les profils individuels terminés
4. **Priorise par pertinence** : si l’utilisateur a 10 concurrents ou plus, propose de profiler les 5 premiers d’abord, en te basant sur le chevauchement de domaine ou la similarité de marché

---

## Mise à jour des profils

Un profil est une photo à un instant T. Pour la mettre à jour :

- Commence par la page tarifs (la plus volatile)
- Recollecte les métriques SEO (le trafic et les positions changent chaque mois)
- Parcoure le changelog pour les évolutions produit
- Mets à jour la date de génération
- Ajoute une section `## Journal des modifications` en bas du profil en indiquant ce qui a changé depuis le dernier profil

---

## Questions spécifiques à la tâche

Ne pose ces questions que si le contexte ou les données ne les couvrent pas déjà :

1. Quelles URLs de concurrents dois-je analyser ?
2. Analyse rapide ou profil complet ?
3. Des dimensions à prioriser (tarification, SEO, positionnement) ?
4. Dois-je comparer les résultats avec ton produit ?

---

## Skills liés

- **competitors** : pour créer des pages de comparaison ou d’alternatives à partir de ces profils
- **customer-research** : pour exploiter en profondeur les avis et les discussions communautaires
- **content-strategy** : pour exploiter les lacunes de contenu des concurrents dans ta propre planification
- **seo-audit** : pour auditer ton propre site par rapport aux concurrents
- **sales-enablement** : pour transformer les profils en battle cards et supports de vente
- **ads** : pour analyser les stratégies publicitaires des concurrents
- **pricing** : pour approfondir l’analyse tarifaire à partir des profils concurrents
