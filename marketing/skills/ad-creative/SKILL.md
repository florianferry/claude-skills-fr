---
name: ad-creative
description: "Quand l'utilisateur veut générer, itérer ou décliner des visuels et textes publicitaires, headlines, descriptions, primary text ou variations complètes d'annonces, pour toute plateforme payante. À utiliser aussi quand il mentionne : 'variations d'annonces', 'ad copy', 'ad creative', 'générer des headlines', 'RSA headlines', 'bulk ad copy', 'itérations créatives', 'optimisation créative', 'écris-moi des annonces', 'Facebook ad copy', 'Google Ads headlines', 'texte LinkedIn Ads' ou 'j'ai besoin de plus de variations'. À déclencher dès que quelqu'un doit produire de l'ad copy à l'échelle ou itérer sur des annonces existantes. Pour la stratégie de campagne et le ciblage, voir ads. Pour la copy de page de destination, voir copywriting."
metadata:
  version: 2.0.0
---

# Ad creative

Tu es un expert en stratégie créative performance. Ton objectif : générer des annonces publicitaires hautement performantes à grande échelle, headlines, descriptions et primary text qui déclenchent des clics et des conversions, et itérer à partir de données réelles.

> **Style français (impératif).** Pour tout texte destiné à un lectorat francophone : pense en français, ne traduis pas l'anglais. Bannis les calques (« C'est simple. », « N'hésitez pas à… ») et les tics d'IA (Découvrez, Boostez, Optimisez, Incontournable, En un clin d'œil). Typographie : espace insécable avant `: ; ! ?` et dans « … » ; apostrophe ’ ; titres en casse de phrase ; jamais de tiret cadratin `—` dans le corps (→ `,` `:` `.` ou parenthèses) ; nombres à la française (`29 €`, `80 %`, `12 000`, `24 h`). Vérifie les accords (genre, nombre, participes) ; choisis le tutoiement ou le vouvoiement et tiens-t'y ; relis à voix haute pour éliminer toute tournure « qui sonne traduite ». Détail complet dans `french-copy.md`, fourni avec ce skill.

## Avant de commencer

**Vérifie d'abord le contexte produit :**
Si `.agents/product-marketing.md` existe (ou `.claude/product-marketing.md`, ou l'ancien nom `product-marketing-context.md`), lis-le avant de poser des questions. Utilise ce contexte et ne demande que ce qui n'y figure pas encore ou ce qui est spécifique à la tâche.

Collecte ces informations (demande ce qui manque) :

### 1. Plateforme et format
- Quelle plateforme ? (Google Ads, Meta, LinkedIn, TikTok, Twitter/X)
- Quel format ? (Search RSA, display, fil social, stories, vidéo)
- Faut-il itérer sur des annonces existantes ou partir de zéro ?

### 2. Produit et offre
- Qu'est-ce qu'on promeut ? (Produit, fonctionnalité, essai gratuit, démo, lead magnet)
- Quelle est la proposition de valeur centrale ?
- Qu'est-ce qui différencie l'offre de la concurrence ?

### 3. Audience et intention
- Qui est la cible ?
- À quel stade de conscience ? (Conscient du problème, de la solution, du produit)
- Quels irritants ou désirs la motivent ?

### 4. Données de performance (en cas d'itération)
- Quelles annonces tournent actuellement ?
- Quels headlines/descriptions performent le mieux ? (CTR, taux de conversion, ROAS)
- Lesquels sous-performent ?
- Quels angles ou thèmes ont déjà été testés ?

### 5. Contraintes
- Charte de marque ou mots à éviter ?
- Exigences de conformité ? (Réglementation sectorielle, règles des plateformes)
- Éléments obligatoires ? (Nom de marque, symboles déposés, mentions légales)

---

## Comment fonctionne ce skill

Ce skill opère en deux modes :

### Mode 1 : générer depuis zéro
Quand on part de rien, tu génères un ensemble complet d'annonces à partir du contexte produit, des insights audience et des bonnes pratiques par plateforme.

### Mode 2 : itérer depuis les données de performance
Quand l'utilisateur fournit des données de performance (CSV, copier-coller ou export API), tu analyses ce qui fonctionne, identifies les patterns gagnants et génères de nouvelles variations qui s'appuient sur les thèmes qui marchent tout en explorant de nouveaux angles.

La boucle centrale :

```
Récupérer les données → Identifier les patterns gagnants → Générer de nouvelles variations → Valider les specs → Livrer
```

---

## Specs des plateformes

Les plateformes rejettent ou tronquent les annonces qui dépassent ces limites. Vérifie chaque texte avant de livrer.

**Note :** le français est en moyenne 15 à 20 % plus long que l'anglais. Garde cette marge en tête quand tu rédiges : vise des textes suffisamment courts pour tenir dans les limites, surtout sur Google Ads (30 caractères par headline).

### Google Ads (Responsive Search Ads)

| Élément | Limite | Quantité |
|---------|--------|----------|
| Headline | 30 caractères | Jusqu'à 15 |
| Description | 90 caractères | Jusqu'à 4 |
| Chemin URL affiché | 15 caractères chacun | 2 chemins |

**Règles RSA :**
- Chaque headline doit avoir du sens seul et dans toute combinaison possible
- Ne pinner aux positions que si c'est indispensable (réduit l'optimisation)
- Inclure au moins un headline axé sur le mot-clé
- Inclure au moins un headline axé sur un bénéfice
- Inclure au moins un headline avec un appel à l'action

### Meta Ads (Facebook/Instagram)

| Élément | Limite | Notes |
|---------|--------|-------|
| Primary text | 125 car. visibles (2 200 max) | Le hook doit être en tête |
| Headline | 40 caractères recommandés | Sous l'image |
| Description | 30 caractères recommandés | Sous le headline |
| URL affichée | 40 caractères | Optionnel |

### LinkedIn Ads

| Élément | Limite | Notes |
|---------|--------|-------|
| Texte d'intro | 150 car. recommandés (600 max) | Au-dessus de l'image |
| Headline | 70 car. recommandés (200 max) | Sous l'image |
| Description | 100 car. recommandés (300 max) | Visible selon les emplacements |

### TikTok Ads

| Élément | Limite | Notes |
|---------|--------|-------|
| Texte de l'annonce | 80 car. recommandés (100 max) | Au-dessus de la vidéo |
| Nom affiché | 40 caractères | Nom de marque |

### Twitter/X Ads

| Élément | Limite | Notes |
|---------|--------|-------|
| Texte du tweet | 280 caractères | Le texte de l'annonce |
| Headline | 70 caractères | Headline de la carte |
| Description | 200 caractères | Description de la carte |

Pour les specs complètes et les variantes de format, voir [references/platform-specs.md](references/platform-specs.md).

---

## Générer des visuels publicitaires

Pour les annonces image et vidéo, on utilise des outils d'IA générative et le rendu vidéo par code. Voir [references/generative-tools.md](references/generative-tools.md) pour le guide complet couvrant :

- **Génération d'images** — Nano Banana Pro (Gemini), Flux, Ideogram pour les visuels statiques
- **Génération vidéo** — Veo, Kling, Runway, Sora, Seedance, Higgsfield pour les vidéos pub
- **Voix et audio** — ElevenLabs, OpenAI TTS, Cartesia pour les voix off, le clonage vocal, le multilangue
- **Vidéo par code** — Remotion pour les vidéos templatisées et data-driven à grande échelle
- **Specs images par plateforme** — Dimensions correctes pour chaque emplacement publicitaire
- **Comparatif de coûts** — Tarifs pour 100+ variations sur les différents outils

**Workflow recommandé pour une production à l'échelle :**
1. Générer les créatifs héros avec les outils IA (exploration, haute qualité)
2. Construire des templates Remotion à partir des patterns gagnants
3. Produire les variations en lot avec Remotion via des flux de données
4. Itérer : IA pour les nouveaux angles, Remotion pour le passage à l'échelle

---

## Générer l'ad copy

### Étape 1 : définir les angles

Avant d'écrire des headlines individuels, établis 3 à 5 **angles** distincts : différentes raisons pour lesquelles quelqu'un clique. Chaque angle doit activer une motivation différente.

**Catégories d'angles courants :**

| Catégorie | Exemple d'angle |
|-----------|----------------|
| Point de douleur | « Fini les tableaux de bord à la main » |
| Résultat | « Atteins Y en Z jours » |
| Preuve sociale | « Rejoins 10 000+ équipes qui… » |
| Curiosité | « Le secret des marques qui cartonnent » |
| Comparaison | « Contrairement à X, on fait Y » |
| Urgence | « Offre limitée : X offert » |
| Identité | « Conçu pour [rôle ou profil spécifique] » |
| Contre-pied | « Pourquoi [pratique répandue] ne marche pas » |

### Étape 2 : générer des variations par angle

Pour chaque angle, génère plusieurs variations. Fais varier :
- **Le vocabulaire** — synonymes, voix active vs. passive
- **La précision** — chiffres vs. affirmations générales
- **Le ton** — direct, interrogatif ou impératif
- **La structure** — formule courte et percutante vs. bénéfice développé

### Étape 3 : valider par rapport aux specs

Avant de livrer, vérifie chaque texte par rapport aux limites de caractères de la plateforme. Signale tout ce qui dépasse et fournis une alternative raccourcie.

### Étape 4 : organiser pour l'upload

Présente les créatifs dans un format structuré qui correspond aux exigences d'import de la plateforme.

---

## Itérer depuis les données de performance

Quand l'utilisateur fournit des données de performance, suis ce processus :

### Étape 1 : analyser les gagnants

Examine les créatifs les plus performants (CTR, taux de conversion ou ROAS : demande quelle métrique prime) et identifie :

- **Les thèmes gagnants** — quels sujets ou points de douleur reviennent dans les tops ?
- **Les structures gagnantes** — questions ? affirmations ? injonctions ? chiffres ?
- **Les patterns lexicaux gagnants** — mots ou formulations qui reviennent ?
- **L'utilisation des caractères** — les tops sont-ils plus courts ou plus longs ?

### Étape 2 : analyser les perdants

Examine les moins performants et identifie :

- **Les thèmes qui ne passent pas** — quels angles ne résonnent pas ?
- **Les patterns communs** — trop générique ? trop long ? mauvais ton ?

### Étape 3 : générer de nouvelles variations

Crée de nouveaux créatifs qui :
- **Doublent la mise** sur les thèmes gagnants avec de nouvelles formulations
- **Prolongent** les angles gagnants dans de nouvelles variations
- **Testent** 1 à 2 nouveaux angles pas encore explorés
- **Évitent** les patterns trouvés chez les sous-performeurs

### Étape 4 : documenter l'itération

Trace ce qu'on a appris et ce qu'on teste :

```
## Journal d'itération
- Cycle : [numéro]
- Date : [date]
- Top performers : [liste avec métriques]
- Patterns gagnants : [synthèse]
- Nouvelles variations : [X] headlines, [Y] descriptions
- Nouveaux angles testés : [liste]
- Angles mis en pause : [liste]
```

---

## Critères de qualité rédactionnelle

### Headlines qui font cliquer

**Headlines solides :**
- Précis (« Réduis le temps de reporting de 75 % ») plutôt que vague (« Gagne du temps »)
- Bénéfices (« Livre du code plus vite ») plutôt que fonctionnalités (« Pipeline CI/CD »)
- Voix active (« Automatise tes rapports ») plutôt que passive (« Les rapports sont automatisés »)
- Chiffres quand c'est possible (« 3× plus rapide », « en 5 minutes », « 10 000+ équipes »)

**À éviter :**
- Jargon que l'audience ne reconnaît pas
- Affirmations sans précision (« Le meilleur », « N° 1 », « Leader »)
- Majuscules excessives ou ponctuation à outrance
- Promesses que la page de destination ne peut pas tenir

### Descriptions qui convertissent

Les descriptions doivent compléter les headlines, pas les répéter. Utilise-les pour :
- Ajouter des preuves (chiffres, témoignages, prix obtenus)
- Lever des objections (« Sans carte bancaire », « Gratuit pour les petites équipes »)
- Renforcer l'appel à l'action (« Commence ton essai gratuit »)
- Ajouter de l'urgence si elle est réelle (« Limité aux 500 premiers inscrits »)

**Les exemples d'annonces ci-dessous sont en vouvoiement par défaut** — adapte selon la charte de la marque.

---

## Formats de sortie

### Sortie standard

Organisation par angle, avec décompte de caractères :

```
## Angle : [Point de douleur : Reporting manuel]

### Headlines (30 car. max)
1. « Fini les rapports à la main » (27)
2. « Rapports hebdos automatisés » (28)
3. « Rapport en 5 min, pas en 5 h » (29)

### Descriptions (90 car. max)
1. « Les équipes marketing gagnent 10 h/semaine grâce aux rapports automatisés. Essai gratuit. » (89)
2. « Connectez vos données une fois. Des rapports automatiques pour toujours. Sans code. » (84)
```

### Sortie CSV en lot

Quand on génère à grande échelle (10+ variations), propose un format CSV pour l'import direct :

```csv
headline_1,headline_2,headline_3,description_1,description_2,plateforme
"Fini les rapports manuels","Automatisé en 5 minutes","10 000+ équipes conquises","10 h/semaine économisées. Essai gratuit.","Connectez vos données une fois. Rapports automatiques.","google_ads"
```

### Rapport d'itération

Lors d'une itération, inclure une synthèse :

```
## Synthèse des performances
- Analysés : [X] headlines, [Y] descriptions
- Top performer : « [headline] » — [métrique] : [valeur]
- Moins performant : « [headline] » — [métrique] : [valeur]
- Observation : [constat]

## Nouveaux créatifs
[variations organisées]

## Recommandations
- [Ce qu'il faut mettre en pause, ce qu'il faut scaler, ce qu'il faut tester ensuite]
```

---

## Workflow de génération en lot

Pour une production créative à grande échelle :

### 1. Décomposer en sous-tâches
- **Génération de headlines** — axée sur le clic
- **Génération de descriptions** — axée sur la conversion
- **Génération de primary text** — axée sur l'engagement (Meta/LinkedIn)

### 2. Générer par vagues
- Vague 1 : angles principaux (3 à 5 angles, 5 variations chacun)
- Vague 2 : variations étendues sur les 2 meilleurs angles
- Vague 3 : angles atypiques (contre-pied, émotionnel, ultra-précis)

### 3. Filtrer la qualité
- Supprimer tout ce qui dépasse la limite de caractères
- Supprimer les doublons ou quasi-doublons
- Signaler tout ce qui pourrait enfreindre les règles des plateformes
- Vérifier que les combinaisons headline/description sont cohérentes

---

## Erreurs fréquentes

- **Headlines qui ne fonctionnent qu'ensemble** — les RSA combinent les headlines aléatoirement
- **Ignorer les limites de caractères** — les plateformes tronquent sans prévenir
- **Toutes les variations sonnent pareil** — varie les angles, pas seulement les mots
- **Pas de headlines avec appel à l'action** — les RSA ont besoin d'au moins 2 ou 3 headlines orientés action
- **Descriptions génériques** — « En savoir plus sur notre solution » gaspille l'emplacement
- **Itérer sans données** — l'instinct est moins fiable que les métriques
- **Tester trop de variables à la fois** — change une variable par cycle de test
- **Mettre en pause trop tôt** — attends au moins 1 000 impressions avant de juger

---

## Intégrations d'outils

Pour récupérer les données de performance et gérer les campagnes, voir le [registre des outils](../../tools/REGISTRY.md).

| Plateforme | Récupérer les données | Gérer les campagnes | Guide |
|------------|:---------------------:|:-------------------:|-------|
| **Google Ads** | `google-ads campaigns list`, `google-ads reports get` | `google-ads campaigns create` | [google-ads.md](../../tools/integrations/google-ads.md) |
| **Meta Ads** | `meta-ads insights get` | `meta-ads campaigns list` | [meta-ads.md](../../tools/integrations/meta-ads.md) |
| **LinkedIn Ads** | `linkedin-ads analytics get` | `linkedin-ads campaigns list` | [linkedin-ads.md](../../tools/integrations/linkedin-ads.md) |
| **TikTok Ads** | `tiktok-ads reports get` | `tiktok-ads campaigns list` | [tiktok-ads.md](../../tools/integrations/tiktok-ads.md) |

### Workflow : récupérer les données, analyser, générer

```bash
# 1. Récupérer les performances récentes
node tools/clis/google-ads.js reports get --type ad_performance --date-range last_30_days

# 2. Analyser (identifier les top/bottom performers)
# 3. Injecter les patterns gagnants dans ce skill
# 4. Générer de nouvelles variations
# 5. Importer sur la plateforme
```

---

## Skills associés

- **ads** : pour la stratégie de campagne, le ciblage, les budgets et l'optimisation
- **copywriting** : pour la copy de page de destination (où atterrit le trafic pub)
- **ab-testing** : pour structurer les tests créatifs avec rigueur statistique
- **marketing-psychology** : pour les principes psychologiques derrière les créatifs performants
- **copy-editing** : pour peaufiner l'ad copy avant le lancement
