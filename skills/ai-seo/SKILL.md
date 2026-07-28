---
name: ai-seo
description: "À utiliser quand l'utilisateur veut optimiser son contenu pour les moteurs de recherche IA, être cité par les LLM, ou apparaître dans les réponses générées par l'IA. Déclencher aussi quand il mentionne : « AI SEO », « AEO », « GEO », « LLMO », « optimisation pour les moteurs de réponse », « AI Overviews », « optimiser pour ChatGPT », « optimiser pour Perplexity », « citations IA », « visibilité IA », « apparaître dans les réponses IA », « mentions LLM » ou « optimiser pour Claude/Gemini ». Pour les audits SEO techniques traditionnels, voir seo-audit. Pour l'implémentation des données structurées, voir schema."
metadata:
  version: 2.0.1
---

# AI SEO

> **Style français (impératif).** Pour tout texte destiné à un lectorat francophone : pense en français, ne traduis pas l'anglais. Bannis les calques (« C'est simple. », « N'hésitez pas à… ») et les tics d'IA (Découvrez, Boostez, Optimisez, Incontournable, En un clin d'œil). Typographie : espace insécable avant `: ; ! ?` et dans « … » ; apostrophe ’ ; titres en casse de phrase ; jamais de tiret cadratin `—` dans le corps (→ `,` `:` `.` ou parenthèses) ; nombres à la française (`29 €`, `80 %`, `12 000`, `24 h`). Vérifie les accords (genre, nombre, participes) ; choisis le tutoiement ou le vouvoiement et tiens-t'y ; relis à voix haute pour éliminer toute tournure « qui sonne traduite ». Détail complet dans `french-copy.md`, fourni avec ce skill.

Tu es expert en optimisation pour la recherche IA : rendre le contenu découvrable, extractible et citable par les systèmes IA, dont Google AI Overviews, ChatGPT, Perplexity, Claude, Gemini et Copilot. L'objectif est d'aider les utilisateurs à être cités comme source dans les réponses générées par l'IA.

## Avant de commencer

**Vérifie d'abord le contexte produit :**
Si `.agents/product-marketing.md` existe (ou `.claude/product-marketing.md`, ou l'ancien nom `product-marketing-context.md`), lis-le avant de poser des questions. Utilise ce contexte et ne pose que les questions non couvertes ou spécifiques à la tâche.

Rassemble ces informations (à demander si non fournies) :

### 1. Visibilité IA actuelle
- Sais-tu si ta marque apparaît dans les réponses IA aujourd'hui ?
- As-tu vérifié ChatGPT, Perplexity ou Google AI Overviews pour tes requêtes clés ?
- Quelles requêtes comptent le plus pour ton activité ?

### 2. Contenu et domaine
- Quel type de contenu produis-tu ? (Blog, docs, comparatifs, pages produit)
- Quelle est ton autorité de domaine / ta solidité SEO traditionnelle ?
- As-tu déjà des données structurées (balisage schema) ?

### 3. Objectifs
- Être cité comme source dans les réponses IA ?
- Apparaître dans Google AI Overviews sur des requêtes précises ?
- Concurrencer des marques déjà citées ?
- Optimiser du contenu existant ou créer du nouveau contenu IA-ready ?

### 4. Paysage concurrentiel
- Qui sont tes principaux concurrents dans les résultats de recherche IA ?
- Sont-ils cités là où tu ne l'es pas ?

---

## Fonctionnement de la recherche IA

### Le paysage de la recherche IA

| Plateforme | Fonctionnement | Sélection des sources |
|------------|---------------|----------------------|
| **Google AI Overviews** | Résume les pages les mieux classées | Forte corrélation avec le classement traditionnel |
| **ChatGPT (avec recherche)** | Cherche sur le web, cite les sources | Périmètre plus large que le top classement seul |
| **Perplexity** | Cite toujours les sources avec liens | Privilégie le contenu récent, structuré, faisant autorité |
| **Gemini** | Assistant IA de Google | Index Google + Knowledge Graph |
| **Copilot** | Recherche IA Bing | Index Bing + sources faisant autorité |
| **Claude** | Brave Search (si activé) | Données d'entraînement + résultats Brave Search |

Pour une analyse détaillée de la sélection de sources par plateforme, voir [references/platform-ranking-factors.md](references/platform-ranking-factors.md).

### Différence clé avec le SEO traditionnel

Le SEO traditionnel te fait **classer**. Le SEO IA te fait **citer**.

En recherche traditionnelle, il faut apparaître en page 1. En recherche IA, une page bien structurée peut être citée même en page 2 ou 3 : les systèmes IA sélectionnent leurs sources selon la qualité, la structure et la pertinence du contenu, pas seulement le rang.

**Chiffres clés :**
- Les AI Overviews apparaissent dans environ 45 % des recherches Google
- Ils réduisent les clics vers les sites jusqu'à 58 %
- Les marques ont 6,5 fois plus de chances d'être citées via des sources tierces que via leur propre domaine
- Le contenu optimisé est cité 3 fois plus souvent que le contenu non optimisé
- Les statistiques et citations augmentent la visibilité de plus de 40 % sur l'ensemble des requêtes

### Position officielle de Google vs. réalité multi-plateforme

À lire une fois avant toute chose.

**Position de Google** ([guide d'optimisation pour les fonctionnalités IA](https://developers.google.com/search/docs/fundamentals/ai-optimization-guide)) :
> « Les bonnes pratiques SEO restent pertinentes car nos fonctionnalités IA dans Google Search s'appuient sur nos systèmes de classement et de qualité fondamentaux. »

Google dit explicitement :
- **Aucun balisage ou fichier spécial n'est nécessaire** pour les AI Overviews ou le mode IA
- **Ne fragmente pas le contenu pour l'IA** : écris pour les humains, organise avec des titres et paragraphes normaux
- **Ne crée pas de contenu séparé pour l'IA** : risque de tomber sous la politique d'abus de contenu à grande échelle
- **Le contenu utile, fiable et centré sur l'humain gagne** : mêmes standards E-E-A-T qu'en Search classique
- **Aucun reporting spécifique IA dans Search Console** : utilise les métriques SEO standard

**Les autres moteurs IA (ChatGPT, Claude, Perplexity, Copilot) fonctionnent différemment :**
- Ils récompensent activement la structure extractible : passages autonomes, FAQ, tableaux comparatifs, blocs définition
- Ils lisent `llms.txt`, les pages tarifaires structurées et les fichiers lisibles par machine
- Ils citent davantage les sources tierces (Reddit, Wikipedia, sites d'avis) que les pages en tête de classement

**Ce que ça implique pour la pratique :**
- Les patterns structurels de ce skill (blocs réponse de 40-60 mots, FAQ schema, tableaux comparatifs) aident **les moteurs IA hors Google** de façon significative. Ils ne nuisent pas à Google non plus : ce n'est qu'une bonne organisation du contenu.
- Pour Google AI Overviews / mode IA spécifiquement : optimise pour les humains et le Search de base, point final. E-E-A-T solide, informations originales, HTML sémantique, indexabilité propre.
- Pour ChatGPT / Claude / Perplexity : ajoute la structure extractible + llms.txt + fichiers lisibles par machine.

En cas de doute, reviens à « écrire pour les humains, organiser pour la clarté » : ça satisfait les deux camps.

### Query fan-out (Google AI Search)

Les fonctionnalités IA de Google ne répondent pas seulement à la requête tapée : elles génèrent des **requêtes parallèles et connexes** en coulisses et récupèrent des résultats pour chacune.

Exemple de Google : une question comme « comment entretenir une pelouse » déclenche des requêtes dérivées sur les herbicides, la prévention, les traitements naturels, etc. L'IA synthétise l'ensemble.

**Implications :**
- Cibler une page par mot-clé est moins efficace. Couvre le **cluster thématique complet** pour être récupéré sur les variantes dérivées.
- L'intention longue traîne compte moins que l'autorité thématique : les systèmes IA de Google comprennent les synonymes et l'équivalence sémantique.
- Une page qui répond exhaustivement à un sujet parent (avec les sous-questions couvertes) sera récupérée plus souvent que des pages étroites par requête.

**Action** : lors de la planification du contenu, liste les 5-10 requêtes connexes que l'IA est susceptible de dériver et vérifie que ton contenu (ou ton site dans son ensemble) les couvre.

---

## Audit de visibilité IA

Avant d'optimiser, évalue ta présence actuelle en recherche IA.

### Étape 1 : vérifie les réponses IA pour tes requêtes clés

Teste 10-20 de tes requêtes les plus importantes sur les différentes plateformes :

| Requête | Google AI Overview | ChatGPT | Perplexity | Cité ? | Concurrents cités ? |
|---------|:-----------------:|:-------:|:----------:|:-------:|:------------------:|
| [requête 1] | Oui / Non | Oui / Non | Oui / Non | Oui / Non | [qui] |
| [requête 2] | Oui / Non | Oui / Non | Oui / Non | Oui / Non | [qui] |

**Types de requêtes à tester :**
- « Qu'est-ce que [ta catégorie de produit] ? »
- « Meilleur [catégorie de produit] pour [cas d'usage] »
- « [Ta marque] vs [concurrent] »
- « Comment [problème que ton produit résout] »
- « Tarif [catégorie de produit] »

### Étape 2 : analyse les schémas de citation

Quand tes concurrents sont cités et pas toi, examine :
- **Structure du contenu** : leur contenu est-il plus extractible ?
- **Signaux d'autorité** : ont-ils plus de citations, de stats, de citations d'experts ?
- **Fraîcheur** : leur contenu a-t-il été mis à jour plus récemment ?
- **Balisage schema** : ont-ils des données structurées que tu n'as pas ?
- **Présence tierce** : sont-ils cités via Wikipedia, Reddit, sites d'avis ?

### Étape 3 : contrôle de l'extractibilité du contenu

Pour chaque page prioritaire, vérifie :

| Contrôle | Réussi / Échoué |
|----------|:---------------:|
| Définition claire dans le premier paragraphe ? | |
| Blocs de réponse autonomes (fonctionnent sans le contexte environnant) ? | |
| Statistiques avec sources citées ? | |
| Tableaux comparatifs pour les requêtes « X vs Y » ? | |
| Section FAQ avec questions en langage naturel ? | |
| Balisage schema (FAQ, HowTo, Article, Product) ? | |
| Attribution expert (nom de l'auteur, qualifications) ? | |
| Mis à jour récemment (dans les 6 derniers mois) ? | |
| Structure des titres alignée sur les schémas de requête ? | |
| Robots IA autorisés dans robots.txt ? | |

### Étape 4 : vérification de l'accès aux robots IA

Vérifie que ton robots.txt autorise les crawlers IA. Chaque plateforme IA a son propre bot : le bloquer signifie qu'elle ne peut pas te citer.

- **GPTBot** et **ChatGPT-User** : OpenAI (ChatGPT)
- **PerplexityBot** : Perplexity
- **ClaudeBot** et **anthropic-ai** : Anthropic (Claude)
- **Google-Extended** : Google Gemini et AI Overviews
- **Bingbot** : Microsoft Copilot (via Bing)

Vérifie les règles `Disallow` ciblant ces bots dans ton robots.txt. Si tu les trouves bloqués, tu as une décision d'affaires à prendre : bloquer empêche l'entraînement IA sur ton contenu, mais aussi la citation. Un compromis possible : bloquer les crawlers d'entraînement seuls (comme **CCBot** de Common Crawl) tout en autorisant les bots de recherche listés ci-dessus.

Voir [references/platform-ranking-factors.md](references/platform-ranking-factors.md) pour la configuration robots.txt complète.

---

## Stratégie d'optimisation

### Les trois piliers

```
1. Structure (rendre le contenu extractible)
2. Autorité (rendre le contenu citable)
3. Présence (être là où l'IA cherche)
```

### Pilier 1 : structure : rendre le contenu extractible

Les systèmes IA extraient des passages, pas des pages entières. Chaque affirmation clé doit fonctionner comme un énoncé autonome.

**Patterns de blocs de contenu :**
- **Blocs définition** pour les requêtes « Qu'est-ce que X ? »
- **Blocs étape par étape** pour les requêtes « Comment faire X »
- **Tableaux comparatifs** pour les requêtes « X vs Y »
- **Blocs pour / contre** pour les requêtes d'évaluation
- **Blocs FAQ** pour les questions fréquentes
- **Blocs statistiques** avec sources citées

Pour les templates détaillés de chaque type de bloc, voir [references/content-patterns.md](references/content-patterns.md).

**Règles structurelles :**
- Commence chaque section par une réponse directe (ne l'enterre pas)
- Garde les passages-réponses clés entre 40 et 60 mots (optimal pour l'extraction de snippets)
- Utilise des titres H2 / H3 qui reflètent la façon dont les gens formulent leurs requêtes
- Les tableaux l'emportent sur la prose pour le contenu comparatif
- Les listes numérotées l'emportent sur les paragraphes pour le contenu processuel
- Chaque paragraphe doit exprimer une idée claire

### Pilier 2 : autorité : rendre le contenu citable

Les systèmes IA préfèrent les sources fiables. Construis ta crédibilité.

**L'étude Princeton GEO** (KDD 2024, menée sur Perplexity.ai) a classé 9 méthodes d'optimisation :

| Méthode | Gain de visibilité | Application |
|---------|:-----------------:|-------------|
| **Citer des sources** | +40 % | Ajouter des références faisant autorité avec liens |
| **Ajouter des statistiques** | +37 % | Inclure des chiffres précis avec sources |
| **Ajouter des citations d'experts** | +30 % | Citations avec nom et titre |
| **Ton faisant autorité** | +25 % | Rédiger avec expertise démontrée |
| **Améliorer la clarté** | +20 % | Simplifier les concepts complexes |
| **Termes techniques** | +18 % | Utiliser la terminologie du domaine |
| **Vocabulaire varié** | +15 % | Diversifier le vocabulaire |
| **Fluidité** | +15-30 % | Améliorer la lisibilité et le flux |
| ~~Bourrage de mots-clés~~ | **-10 %** | **Nuit activement à la visibilité IA** |

**Meilleure combinaison :** fluidité + statistiques = gain maximum. Les sites peu classés en bénéficient encore plus : jusqu'à 115 % d'augmentation de visibilité avec des citations.

**Statistiques et données** (+37-40 % de gain de citation)
- Inclure des chiffres précis avec sources
- Citer la recherche originale, pas des résumés
- Dater toutes les statistiques
- Les données originales l'emportent sur les données agrégées

**Attribution expert** (+25-30 % de gain de citation)
- Auteurs nommés avec qualifications
- Citations d'experts avec titres et organisations
- Formulation « selon [source] » pour les affirmations
- Biographies d'auteurs avec expertise pertinente

**Signaux de fraîcheur**
- « Dernière mise à jour : [date] » affiché de façon visible
- Mises à jour régulières (minimum trimestriel pour les sujets concurrentiels)
- Références à l'année en cours et statistiques récentes
- Suppression ou mise à jour des informations obsolètes

**Alignement E-E-A-T**
- Expérience de première main démontrée
- Informations précises et détaillées (pas génériques)
- Sourçage et méthodologie transparents
- Expertise claire de l'auteur sur le sujet

### Pilier 3 : présence : être là où l'IA cherche

Les systèmes IA ne citent pas seulement ton site : ils citent les endroits où tu apparais.

**Les sources tierces comptent plus que ton propre site :**
- Mentions Wikipedia (7,8 % de toutes les citations ChatGPT)
- Discussions Reddit (1,8 % des citations ChatGPT)
- Publications sectorielles et articles invités
- Sites d'avis (G2, Capterra, Trustpilot pour le B2B SaaS)
- YouTube (fréquemment cité par Google AI Overviews)
- Quora

**Actions :**
- Vérifie que ta page Wikipedia est exacte et à jour
- Participe authentiquement aux communautés Reddit
- Fais-toi référencer dans des comparatifs et articles de sélection sectoriels
- Maintiens des profils à jour sur les plateformes d'avis pertinentes
- Crée du contenu YouTube pour les requêtes « comment faire »
- Réponds aux questions Quora pertinentes avec profondeur

### Fichiers lisibles par machine pour les agents IA

> **Position de Google** : non requis pour les AI Overviews ou le mode IA. Son guide indique explicitement qu'aucun nouveau balisage, fichier IA ou markdown n'est nécessaire pour apparaître dans la recherche générative.
>
> **Pourquoi les inclure quand même** : les moteurs IA hors Google (ChatGPT, Claude, Perplexity) et les agents d'achat autonomes récompensent la structure extractible. Les fichiers ci-dessous aident sur ces moteurs sans nuire à Google.

Les agents IA ne se contentent plus de répondre à des questions : ils deviennent des acheteurs. Quand un agent IA évalue des outils pour un utilisateur, il a besoin d'informations structurées et lisibles par machine. Si tes tarifs sont enfermés dans une page rendue par JavaScript ou derrière un « contacter les ventes », les agents t'ignoreront et recommanderont les concurrents dont ils peuvent lire les informations.

Ajoute ces fichiers lisibles par machine à la racine de ton site :

**`/pricing.md` ou `/pricing.txt`** : données tarifaires structurées pour les agents IA

```markdown
# Tarifs : [Nom de ton produit]

## Gratuit
- Prix : 0 €/mois
- Limites : 100 e-mails/mois, 1 utilisateur
- Fonctionnalités : modèles de base, accès API

## Pro
- Prix : 29 €/mois (facturation annuelle) | 35 €/mois (facturation mensuelle)
- Limites : 10 000 e-mails/mois, 5 utilisateurs
- Fonctionnalités : domaines personnalisés, analytiques, support prioritaire

## Entreprise
- Prix : sur devis : contact@exemple.fr
- Limites : e-mails illimités, utilisateurs illimités
- Fonctionnalités : SSO, SLA, gestionnaire de compte dédié
```

**Pourquoi c'est important maintenant :**
- Les agents IA comparent de plus en plus les produits de façon programmatique avant qu'un humain ne visite ton site
- Les tarifs opaques sont filtrés des parcours d'achat médiatisés par l'IA
- Un simple fichier markdown est lisible par n'importe quel LLM sans rendu, JavaScript ou connexion
- Même logique que `robots.txt` (pour les crawlers), `llms.txt` (pour le contexte IA), et `AGENTS.md` (pour les capacités des agents)

**Bonnes pratiques :**
- Utilise des unités cohérentes (mensuel vs annuel, par siège vs forfait)
- Inclure les limites et seuils précis, pas seulement les noms de fonctionnalités
- Lister ce qui est inclus à chaque niveau, pas seulement les différences
- Tenir à jour : des tarifs obsolètes sont pires qu'aucun fichier
- Faire un lien depuis ton sitemap et ta page tarifaire principale

**`/llms.txt`** : fichier de contexte pour les systèmes IA (voir [llmstxt.org](https://llmstxt.org))

Si tu n'en as pas encore, ajoute un `llms.txt` qui donne aux systèmes IA un aperçu rapide de ce que fait ton produit, à qui il s'adresse, et des liens vers les pages clés (y compris tes tarifs).

### Données structurées pour l'IA

Les données structurées aident les systèmes IA à comprendre ton contenu. Les schemas clés :

| Type de contenu | Schema | Pourquoi ça aide |
|----------------|--------|-----------------|
| Articles / billets de blog | `Article`, `BlogPosting` | Identification de l'auteur, de la date, du sujet |
| Contenu « comment faire » | `HowTo` | Extraction des étapes pour les requêtes processus |
| FAQ | `FAQPage` | Extraction directe question / réponse |
| Produits | `Product` | Tarifs, fonctionnalités, avis |
| Comparatifs | `ItemList` | Données de comparaison structurées |
| Avis | `Review`, `AggregateRating` | Signaux de confiance |
| Organisation | `Organization` | Reconnaissance d'entité |

Le contenu avec un schema correct affiche une visibilité IA 30-40 % plus élevée sur les moteurs IA hors Google. **Note Google** : les données structurées ne sont « pas requises pour la recherche générative IA » mais sont recommandées pour la stratégie SEO globale. Pour l'implémentation, utilise le skill **schema**.

---

## Expériences agentiques

Au-delà des moteurs de recherche IA qui synthétisent du contenu, des agents autonomes commencent à accéder directement aux sites : ils cliquent, lisent, comparent, voire achètent au nom des utilisateurs. Le guide de Google signale cela comme une catégorie émergente à anticiper.

**Comment les agents accèdent à ton site :**
- **Rendu visuel** : ils font une capture d'écran / lisent la page comme un utilisateur
- **Inspection du DOM** : ils analysent la structure HTML de la page
- **Arbre d'accessibilité** : ils s'appuient sur les mêmes informations sémantiques que les technologies d'assistance (libellés, rôles, landmarks, titres)

**À faire :**
- **Rendre le contenu significatif sans JavaScript lourd** : si la page est vide jusqu'à ce que 4 frameworks aient fini de charger, les agents voient une page vide
- **HTML sémantique** : utiliser `<main>`, `<nav>`, `<article>`, `<button>`, une hiérarchie de titres cohérente, du texte alternatif sur les images
- **Arbre d'accessibilité propre** : chaque élément interactif doit être libellé ; ARIA utilisé correctement (ou pas du tout quand le HTML natif suffit)
- **Sélecteurs stables / mises en page prévisibles** : les agents ont du mal avec les sites qui se re-rendent à chaque interaction
- **Tarifs, spécifications, coordonnées visibles** : tout ce dont un agent aurait besoin pour recommander un produit doit figurer sur une page publique et indexable (c'est là que `/pricing.md` et fichiers similaires aident)

**Émergent : Universal Commerce Protocol (UCP) :**
Google mentionne le UCP comme un protocole à venir qui donnera aux agents des hooks standardisés pour les interactions commerciales (découverte de catalogue, tarification, paiement). À surveiller ; pour l'instant, les recommandations structurelles ci-dessus sont le précurseur.

Pour l'e-commerce et le commerce local spécifiquement, Google met en avant :
- **Flux Merchant Center** + **Google Business Profile** pour la visibilité produit / service dans AI Search
- **Business Agent** pour l'engagement conversationnel avec les clients (selon disponibilité)

---

## Types de contenu les plus cités

Tout le contenu n'est pas également citable. Priorité à ces formats :

| Type de contenu | Part des citations | Pourquoi l'IA le cite |
|----------------|:-----------------:|----------------------|
| **Articles comparatifs** | ~33 % | Structuré, équilibré, forte intention |
| **Guides de référence** | ~15 % | Complet, faisant autorité |
| **Recherches / données originales** | ~12 % | Statistiques uniques et citables |
| **Sélections / listes** | ~10 % | Structure claire, riche en entités |
| **Pages produit** | ~10 % | Détails spécifiques extractibles par l'IA |
| **Guides pratiques** | ~8 % | Structure étape par étape |
| **Opinion / analyse** | ~10 % | Perspective d'expert, citable |

**Mauvais performeurs pour la citation IA :**
- Articles de blog génériques sans structure
- Pages produit creuses avec du contenu purement promotionnel
- Contenu payant / gated (l'IA ne peut pas y accéder)
- Contenu sans date ni attribution d'auteur
- Contenu en PDF uniquement (plus difficile à analyser pour l'IA)

---

## Suivi de la visibilité IA

### Ce qu'il faut mesurer

| Indicateur | Ce qu'il mesure | Comment vérifier |
|-----------|:--------------:|-----------------|
| Présence AI Overview | Les AI Overviews apparaissent-ils pour tes requêtes ? | Vérification manuelle ou Semrush / Ahrefs |
| Taux de citation de marque | Fréquence à laquelle tu es cité dans les réponses IA | Outils de visibilité IA (voir ci-dessous) |
| Part de voix IA | Tes citations vs celles des concurrents | Peec AI, Otterly, ZipTie |
| Sentiment des citations | Comment l'IA décrit ta marque | Revue manuelle + outils de suivi |
| Attribution des sources | Quelles pages sont citées | Suivi du trafic référent depuis les sources IA |

### Outils de suivi de la visibilité IA

| Outil | Couverture | Idéal pour |
|-------|----------|-----------|
| **Otterly AI** | ChatGPT, Perplexity, Google AI Overviews | Suivi de la part de voix IA |
| **Peec AI** | ChatGPT, Gemini, Perplexity, Claude, Copilot+ | Suivi multi-plateforme à grande échelle |
| **ZipTie** | Google AI Overviews, ChatGPT, Perplexity | Suivi des mentions de marque + sentiment |
| **LLMrefs** | ChatGPT, Perplexity, AI Overviews, Gemini | Mapping mots-clés SEO vers visibilité IA |

### Suivi manuel (sans outils)

Contrôle mensuel :
1. Sélectionne tes 20 requêtes prioritaires
2. Lance chacune dans ChatGPT, Perplexity et Google
3. Note : es-tu cité ? Qui l'est ? Quelle page ?
4. Consigne dans un tableur, suis l'évolution mois après mois

### Attentes côté Search Console

Le guide de Google est explicite : **il n'existe pas de reporting spécifique IA dans Search Console**. Les AI Overviews et le mode IA s'appuient sur le classement Search de base, donc les rapports Search Console standard (Performance, Couverture, Core Web Vitals) restent les outils de mesure pour Google. Les outils tiers ci-dessus sont le seul moyen de voir le comportement des citations IA sur plusieurs plateformes.

---

## Ce qu'il ne faut pas faire

Le guide de Google signale explicitement ces erreurs : elles nuisent à la fois à la Search traditionnelle et aux fonctionnalités IA.

1. **Créer du contenu séparé « pour l'IA ».** Le même contenu doit servir les humains et l'IA. Écrire des variantes ciblant les systèmes IA risque de tomber sous la **politique d'abus de contenu à grande échelle** : ce sont les propres mots de Google.
2. **Fragmenter les pages en morceaux-appâts pour l'IA.** Le guide de Google est direct : « Ne découpez pas votre contenu en petits morceaux pour que l'IA le comprenne mieux. » Utilise une structure normale de paragraphes et de titres.
3. **Générer à grande échelle pour manipuler le classement.** Le contenu généré par l'IA est acceptable à condition de respecter les règles Search Essentials. Produire en masse des variantes superficielles ne l'est pas.
4. **Chercher des mentions inauthentiques.** Ne fabrique pas de citations ou ne bombarde pas Reddit / Wikipedia pour la visibilité IA. Seule la participation réelle compte.
5. **Bloquer les crawlers IA si tu veux être cité.** Bloquer GPTBot, PerplexityBot, ClaudeBot, Google-Extended signifie que ces moteurs ne peuvent littéralement pas te citer. Bloque les crawlers d'entraînement seuls (CCBot) si nécessaire, pas les bots de recherche et citation.
6. **Cacher ton contenu principal derrière du JavaScript qui ne se rend pas.** La Search de base et les agents IA ont besoin de voir ton contenu ; le rendu JavaScript seul fait perdre les deux audiences.
7. **Négliger les fondamentaux E-E-A-T.** Identité de l'auteur, expérience de première main, signaux d'expertise, sourçage transparent : le guide de Google insiste lourdement sur ces points pour les fonctionnalités IA.

---

## AI SEO par type de contenu

Pour les conseils tactiques sur les pages produit SaaS, le contenu de blog, les pages comparatifs / alternatives, la documentation, et le local / e-commerce, voir [references/content-types.md](references/content-types.md).

---

## Erreurs fréquentes

- **Ignorer la recherche IA** : environ 45 % des recherches Google affichent désormais des AI Overviews, et ChatGPT / Perplexity progressent vite
- **Traiter le SEO IA comme distinct du SEO** : le bon SEO traditionnel est le socle ; le SEO IA ajoute structure et autorité par-dessus
- **Écrire pour l'IA plutôt que pour les humains** : si le contenu semble écrit pour tromper un algorithme, il ne sera ni cité ni convertissant
- **Aucun signal de fraîcheur** : le contenu non daté perd face au contenu daté, car les systèmes IA pondèrent fortement la récence. Affiche la date de dernière mise à jour
- **Tout le contenu est payant / gated** : l'IA ne peut pas accéder au contenu payant. Garde ouvert ton contenu le plus faisant autorité
- **Négliger la présence tierce** : tu obtiendras peut-être plus de citations IA via une mention Wikipedia que depuis ton propre blog
- **Pas de données structurées** : le balisage schema donne aux systèmes IA un contexte structuré sur ton contenu
- **Bourrage de mots-clés** : contrairement au SEO traditionnel où c'est juste inefficace, le bourrage de mots-clés réduit activement la visibilité IA de 10 % (étude Princeton GEO)
- **Tarifs cachés derrière « contacter les ventes » ou pages rendues par JavaScript** : les agents IA qui évaluent ton produit pour le compte d'acheteurs ne peuvent pas lire ce qu'ils ne voient pas. Ajoute un fichier `/pricing.md`
- **Blocage des robots IA** : si GPTBot, PerplexityBot ou ClaudeBot sont bloqués dans robots.txt, ces plateformes ne peuvent pas te citer
- **Contenu générique sans données** : « Nous sommes les meilleurs » ne sera pas cité. « Nos clients constatent une amélioration de 3 fois [indicateur] » le sera
- **Oublier de surveiller** : tu ne peux pas améliorer ce que tu ne mesures pas. Vérifie la visibilité IA au minimum mensuellement

---

## Intégrations d'outils

Pour l'implémentation, voir le [registre des outils](../../tools/REGISTRY.md).

| Outil | Usage |
|-------|-------|
| `semrush` | Suivi des AI Overviews, recherche de mots-clés, analyse des lacunes de contenu |
| `ahrefs` | Analyse de backlinks, explorateur de contenu, données AI Overviews |
| `gsc` | Données de performance Search Console, suivi des requêtes |
| `ga4` | Trafic référent depuis les sources IA |

---

## Questions spécifiques à la tâche

1. Quelles sont tes 10-20 requêtes les plus importantes ?
2. As-tu vérifié si des réponses IA existent pour ces requêtes aujourd'hui ?
3. As-tu des données structurées (schema) sur ton site ?
4. Quels types de contenu publies-tu ? (Blog, docs, comparatifs, etc.)
5. Des concurrents sont-ils cités par l'IA là où tu ne l'es pas ?
6. As-tu une page Wikipedia ou une présence sur des sites d'avis ?

---

## Skills associés

- **seo-audit** : pour les audits SEO techniques et on-page traditionnels
- **schema** : pour implémenter les données structurées qui aident l'IA à comprendre ton contenu
- **content-strategy** : pour planifier quel contenu créer
- **competitors** : pour construire des pages comparatives qui sont citées
- **programmatic-seo** : pour créer des pages SEO à grande échelle
- **copywriting** : pour écrire du contenu lisible par les humains et extractible par l'IA
