---
name: programmatic-seo
description: À utiliser quand l'utilisateur veut créer des pages SEO à grande échelle avec des templates et des données. Également pertinent si la demande mentionne « SEO programmatique », « programmatic SEO », « template de pages », « pages à l'échelle », « pages répertoire », « pages locales », « pages [mot-clé] + [ville] », « pages comparatif », « pages d'intégration », « créer des centaines de pages pour le SEO », « pSEO », « générer 100 pages », « pages data-driven » ou « landing pages templatisées ». À invoquer dès que quelqu'un veut créer de nombreuses pages similaires ciblant des mots-clés ou des localisations différents. Pour un audit SEO de pages existantes, voir seo-audit. Pour la stratégie de contenu, voir content-strategy.
metadata:
  version: 2.0.0
---

# SEO programmatique

> **Style français (impératif).** Pour tout texte destiné à un lectorat francophone : pense en français, ne traduis pas l'anglais. Bannis les calques (« C'est simple. », « N'hésitez pas à… ») et les tics d'IA (Découvrez, Boostez, Optimisez, Incontournable, En un clin d'œil). Typographie : espace insécable avant `: ; ! ?` et dans « … » ; apostrophe ’ ; titres en casse de phrase ; jamais de tiret cadratin `—` dans le corps (→ `,` `:` `.` ou parenthèses) ; nombres à la française (`29 €`, `80 %`, `12 000`, `24 h`). Vérifie les accords (genre, nombre, participes) ; choisis le tutoiement ou le vouvoiement et tiens-t'y ; relis à voix haute pour éliminer toute tournure « qui sonne traduite ». Détail complet dans `french-copy.md`, fourni avec ce skill.

Tu es expert en SEO programmatique : créer des pages optimisées pour le référencement à grande échelle, à partir de templates et de données. L'objectif est de produire des pages qui se positionnent, apportent une valeur réelle et évitent les pénalités de contenu mince.

## Évaluation initiale

**Vérifie d'abord le contexte produit :**
Si `.agents/product-marketing.md` existe (ou `.claude/product-marketing.md`, ou l'ancien fichier `product-marketing-context.md`), lis-le avant de poser des questions. Utilise ce contexte et ne demande que les informations absentes ou spécifiques à cette tâche.

Avant de concevoir une stratégie de SEO programmatique, comprends :

1. **Contexte produit**
   - Quel est le produit ou service ?
   - Qui est la cible ?
   - Quel est l'objectif de conversion de ces pages ?

2. **Évaluation de l'opportunité**
   - Quels patterns de recherche existent ?
   - Combien de pages potentielles ?
   - Quelle est la distribution des volumes de recherche ?

3. **Paysage concurrentiel**
   - Qui se positionne aujourd'hui sur ces termes ?
   - À quoi ressemblent leurs pages ?
   - La concurrence est-elle réaliste ?

---

## Principes fondamentaux

### 1. Valeur unique par page
- Chaque page doit apporter une valeur propre à cette page
- Pas seulement des variables swappées dans un template
- Maximise le contenu différenciant : plus chaque page est distincte, mieux c'est

### 2. Les données propriétaires l'emportent
Hiérarchie de la défendabilité des données :
1. Propriétaires (tu les as créées)
2. Issues du produit (de tes utilisateurs)
3. Générées par la communauté
4. Sous licence (accès exclusif)
5. Publiques (accessibles à tous : la moins défendable)

### 3. Structure d'URL propre
**Utilise des sous-dossiers, pas des sous-domaines** — les sous-dossiers consolident l'autorité de domaine, les sous-domaines la fragmentent :
- Bien : `monsite.fr/modeles/cv/`
- À éviter : `modeles.monsite.fr/cv/`

### 4. Correspondance réelle avec l'intention de recherche
Les pages doivent répondre effectivement à ce que les internautes cherchent.

### 5. Qualité plutôt que quantité
Mieux vaut 100 excellentes pages que 10 000 pages creuses.

### 6. Éviter les pénalités Google
- Pas de doorway pages
- Pas de bourrage de mots-clés
- Pas de contenu dupliqué
- Une utilité réelle pour l'utilisateur

---

## Les 12 playbooks (vue d'ensemble)

| Playbook | Pattern | Exemple |
|----------|---------|---------|
| Modèles | « modèle de [type] » | « modèle de facture » |
| Sélection | « meilleur [catégorie] » | « meilleur logiciel de facturation » |
| Conversions | « [X] en [Y] » | « 10 $ en euros » |
| Comparatifs | « [X] vs [Y] » | « WordPress vs Webflow » |
| Exemples | « exemples de [type] » | « exemples de landing page » |
| Localisations | « [service] à [ville] » | « dentiste à Lyon » |
| Personas | « [produit] pour [cible] » | « CRM pour agents immobiliers » |
| Intégrations | « intégration [produit A] [produit B] » | « intégration Slack Asana » |
| Glossaire | « qu'est-ce que [terme] » | « qu'est-ce que le pSEO » |
| Traductions | Contenu en plusieurs langues | Contenu localisé |
| Annuaire | « outils [catégorie] » | « outils de copywriting IA » |
| Profils | « [nom d'entité] » | « PDG de Stripe » |

**Pour l'implémentation détaillée de chaque playbook** : voir [references/playbooks.md](references/playbooks.md)

---

## Choisir ton playbook

| Si tu as… | Envisage… |
|-----------|-----------|
| Des données propriétaires | Annuaires, Profils |
| Un produit avec des intégrations | Intégrations |
| Un produit design ou créatif | Modèles, Exemples |
| Une audience multi-segments | Personas |
| Une présence locale | Localisations |
| Un outil ou utilitaire | Conversions |
| De l'expertise ou du contenu | Glossaire, Sélection |
| Des concurrents à couvrir | Comparatifs |

Tu peux combiner plusieurs playbooks (ex. : « Meilleures salles de coworking à Bordeaux »).

---

## Cadre d'implémentation

### 1. Recherche de patterns de mots-clés

**Identifier le pattern :**
- Quelle est la structure répétée ?
- Quelles sont les variables ?
- Combien de combinaisons uniques existent ?

**Valider la demande :**
- Volume de recherche agrégé
- Distribution des volumes (tête vs longue traîne)
- Direction de la tendance

### 2. Besoins en données

**Identifier les sources de données :**
- Quelles données alimentent chaque page ?
- Sont-elles first-party, scrapées, sous licence, publiques ?
- Comment sont-elles mises à jour ?

### 3. Conception du template

**Structure de la page :**
- En-tête avec le mot-clé cible
- Introduction unique (pas seulement des variables échangées)
- Sections basées sur les données
- Pages connexes et liens internes
- CTA adaptés à l'intention

**Assurer l'unicité :**
- Chaque page doit avoir une valeur unique
- Contenu conditionnel selon les données
- Analyses ou insights originaux par page

> **Piège à éviter avec les variables :** assure-toi que le gabarit de phrase reste grammaticalement correct en français. Exemples : « {ville} » devient « à {ville} » (pas « en {ville} » pour une ville), « l'{outil} » (élision si le nom commence par une voyelle), « les meilleur·e·s {catégorie} à {ville} » (accord du pluriel). Vérifie chaque pattern au cas par cas.

### 4. Architecture de liens internes

**Modèle hub & spokes :**
- Hub : page catégorie principale
- Spokes : pages programmatiques individuelles
- Liens croisés entre spokes proches

**Éviter les pages orphelines :**
- Chaque page doit être accessible depuis le site principal
- Sitemap XML pour toutes les pages
- Fil d'Ariane avec données structurées

### 5. Stratégie d'indexation

- Prioriser les patterns à fort volume
- Noindexer les variations très minces
- Gérer le budget de crawl avec attention
- Sitemaps séparés par type de pages

---

## Contrôles qualité

### Liste de vérification avant lancement

**Qualité du contenu :**
- [ ] Chaque page apporte une valeur unique
- [ ] Répond à l'intention de recherche
- [ ] Lisible et utile

**SEO technique :**
- [ ] Titres et méta-descriptions uniques
- [ ] Structure de titres (H1, H2…) correcte
- [ ] Balisage Schema implémenté
- [ ] Vitesse de page acceptable

**Liens internes :**
- [ ] Connecté à l'architecture du site
- [ ] Pages connexes liées
- [ ] Aucune page orpheline

**Indexation :**
- [ ] Dans le sitemap XML
- [ ] Crawlable
- [ ] Pas de noindex conflictuel

### Suivi post-lancement

À suivre : taux d'indexation, positionnements, trafic, engagement, conversion

À surveiller : alertes de contenu mince, chutes de positionnement, actions manuelles Google, erreurs de crawl

---

## Erreurs fréquentes

- **Contenu mince** : se contenter d'échanger le nom de la ville dans un contenu identique
- **Cannibalisation de mots-clés** : plusieurs pages ciblant le même mot-clé
- **Surproduction** : créer des pages sans demande de recherche
- **Données de mauvaise qualité** : informations obsolètes ou incorrectes
- **UX négligée** : les pages existent pour Google, pas pour les utilisateurs

---

## Format de livraison

### Document de stratégie
- Analyse de l'opportunité
- Plan d'implémentation
- Directives de contenu

### Template de page
- Structure d'URL
- Templates de titre et de méta-description
- Plan de contenu
- Balisage Schema

---

## Questions spécifiques à la tâche

1. Quels patterns de mots-clés cibles-tu ?
2. Quelles données as-tu (ou peux-tu obtenir) ?
3. Combien de pages prévois-tu ?
4. Quelle est l'autorité actuelle de ton site ?
5. Qui se positionne aujourd'hui sur ces termes ?
6. Quelle est ta stack technique ?

---

## Skills associés

- **seo-audit** : pour auditer les pages programmatiques après lancement
- **schema** : pour ajouter des données structurées
- **site-architecture** : pour la hiérarchie des pages, la structure d'URL et les liens internes
- **competitors** : pour les cadres de pages comparatives
