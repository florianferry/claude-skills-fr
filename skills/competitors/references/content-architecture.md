# Architecture de contenu pour les pages concurrentielles

Comment structurer et maintenir les données concurrentielles pour des pages de comparaison évolutives.

## Sommaire
- Données concurrentielles centralisées
- Gabarit de fiche concurrent
- Données de ton produit
- Génération des pages
- Structure des pages index (index des alternatives, index des comparaisons vs, bonnes pratiques)
- Navigation pied de page

## Données concurrentielles centralisées

Crée une source unique de vérité pour chaque concurrent :

```
donnees_concurrents/
├── notion.md
├── airtable.md
├── monday.md
└── ...
```

---

## Gabarit de fiche concurrent

Pour chaque concurrent, documente :

```yaml
nom: Notion
site: notion.so
tagline: "L'espace de travail tout-en-un"
fondee: 2016
siege: San Francisco

# Positionnement
cas_usage_principal: "docs + bases de données légères"
audience_cible: "équipes souhaitant un espace de travail flexible"
position_marche: "premium, riche en fonctionnalités"

# Tarifs
modele_tarifaire: par siège
version_gratuite: true
limites_version_gratuite: "blocs limités, 1 utilisateur"
tarif_starter: 8 €/utilisateur/mois
tarif_business: 15 €/utilisateur/mois
entreprise: sur devis

# Fonctionnalités (note de 1 à 5 ou description)
fonctionnalites:
  documents: 5
  bases_de_donnees: 4
  gestion_de_projet: 3
  collaboration: 4
  integrations: 3
  application_mobile: 3
  mode_hors_ligne: 2
  api: 4

# Points forts (sois honnête)
points_forts:
  - Très flexible et personnalisable
  - Interface moderne et soignée
  - Riche écosystème de templates
  - Communauté active

# Faiblesses (sois équitable)
faiblesses:
  - Peut ralentir avec de grandes bases de données
  - Courbe d'apprentissage pour les fonctionnalités avancées
  - Automatisations limitées comparées aux outils dédiés
  - Mode hors ligne insuffisant

# Pour qui c'est fait
ideal_pour:
  - Équipes souhaitant un espace de travail tout-en-un
  - Workflows centrés sur le contenu
  - Équipes documentation-first
  - Startups et petites équipes

# Pas idéal pour
pas_ideal_pour:
  - Besoins complexes de gestion de projet
  - Grandes bases de données (milliers de lignes)
  - Équipes ayant besoin d'un bon mode hors ligne
  - Grandes entreprises avec des exigences de conformité strictes

# Plaintes fréquentes (issues des avis)
plaintes_frequentes:
  - "Ça ralentit avec beaucoup de contenu"
  - "Difficile de retrouver quelque chose quand l'espace de travail grossit"
  - "L'application mobile est lourde"

# Notes de migration
migration_depuis:
  difficulte: moyenne
  export_donnees: "Markdown, CSV, HTML"
  ce_qui_migre: "Pages, bases de données"
  ce_qui_ne_migre_pas: "Automatisations, configuration des intégrations"
  temps_estime: "1 à 3 jours pour une petite équipe"
```

---

## Données de ton produit

Même structure pour toi, avec honnêteté :

```yaml
nom: [Ton produit]
# ... mêmes champs

points_forts:
  - [Tes vrais points forts]

faiblesses:
  - [Tes faiblesses honnêtes]

ideal_pour:
  - [Tes clients idéaux]

pas_ideal_pour:
  - [Qui devrait choisir autre chose]
```

---

## Génération des pages

Chaque page pioche dans les données centralisées :

- **Page alternative à [Concurrent]** : données du concurrent + tes données
- **Page meilleures alternatives à [Concurrent]** : données du concurrent + tes données + autres alternatives
- **Page [Ton produit] vs [Concurrent]** : tes données + données du concurrent
- **Page [A] vs [B]** : données des deux concurrents + tes données

**Avantages** :
- Mets à jour le tarif d'un concurrent une fois : ça se propage partout
- Ajoute un critère de comparaison une fois : il apparaît sur toutes les pages
- Cohérence et exactitude garanties sur toutes les pages
- Plus facile à maintenir à grande échelle

---

## Structure des pages index

### Index des alternatives

**URL** : `/alternatives` ou `/alternatives/index`

**Objectif** : liste toutes les pages « Alternative à [Concurrent] »

**Structure de la page** :
1. Titre : « [Ton produit] comme alternative »
2. Courte intro sur pourquoi les gens migrent vers toi
3. Liste de toutes les pages d'alternatives avec :
   - Nom/logo du concurrent
   - Résumé en une phrase du différenciateur clé face à ce concurrent
   - Lien vers la comparaison complète
4. Raisons courantes de migration (agrégées)
5. CTA

**Exemple** :
```markdown
## [Ton produit] comme alternative

Tu envisages de migrer ? Voici comment [Ton produit] se compare aux outils que tu évalues :

- **[Alternative à Notion](/alternatives/notion)** : Idéal pour les équipes qui ont besoin de [X]
- **[Alternative à Airtable](/alternatives/airtable)** : Idéal pour les équipes qui ont besoin de [Y]
- **[Alternative à Monday](/alternatives/monday)** : Idéal pour les équipes qui ont besoin de [Z]
```

---

### Index des comparaisons vs

**URL** : `/vs` ou `/comparer`

**Objectif** : liste toutes les pages « [Ton produit] vs [Concurrent] » et « [A] vs [B] »

**Structure de la page** :
1. Titre : « Comparer [Ton produit] »
2. Section : « [Ton produit] vs les concurrents » : liste des comparaisons directes
3. Section : « Face-à-face » : liste des pages [A] vs [B]
4. Courte note sur la méthodologie
5. CTA

---

### Bonnes pratiques pour les pages index

**Tiens-les à jour** : dès que tu ajoutes une nouvelle page comparative, ajoute-la à l'index correspondant.

**Maillage interne** :
- De l'index vers les pages individuelles
- Des pages individuelles vers l'index
- Entre comparaisons liées

**Valeur SEO** :
- Les pages index peuvent se positionner sur des requêtes larges comme « comparatifs outils de gestion de projet »
- Elles transmettent du jus de lien aux pages individuelles
- Elles aident les moteurs de recherche à explorer tout le contenu comparatif

**Options de tri** :
- Par popularité (volume de recherche)
- Par ordre alphabétique
- Par catégorie ou cas d'usage
- Par date d'ajout (signal de fraîcheur)

**À inclure sur les pages index** :
- Date de dernière mise à jour (crédibilité)
- Nombre de comparaisons disponibles
- Filtres rapides si tu as beaucoup de pages

---

## Navigation pied de page

Le pied de page apparaît sur toutes les pages marketing : c'est une opportunité puissante de maillage interne pour les pages concurrentielles.

### Option 1 : lien vers les pages index (minimum)

Au minimum, ajoute des liens vers tes pages index dans le pied de page :

```
Pied de page
├── Comparer
│   ├── Alternatives →  /alternatives
│   └── Comparaisons →  /vs
```

Cela garantit que chaque page marketing transmet du jus de lien vers ton hub de contenu comparatif.

### Option 2 : colonnes par format (recommandé pour le SEO)

Pour un maillage interne plus fort, crée des colonnes dédiées par format, avec des liens directs vers tes principaux concurrents :

```
Pied de page
├── [Produit] vs               ├── Alternatives à              ├── Comparer
│   ├── vs Notion              │   ├── Alternative Notion      │   ├── Notion vs Airtable
│   ├── vs Airtable            │   ├── Alternative Airtable    │   ├── Monday vs Asana
│   ├── vs Monday              │   ├── Alternative Monday      │   ├── Notion vs Monday
│   ├── vs Asana               │   ├── Alternative Asana       │   ├── ...
│   ├── vs Clickup             │   ├── Alternative Clickup     │   └── Voir tout →
│   ├── ...                    │   ├── ...                     │
│   └── Voir tout →            │   └── Voir tout →             │
```

**Conseils** :
- 8 liens maximum par colonne (les concurrents à plus fort volume de recherche)
- Ajoute un lien « Voir tout » vers la page index complète
- Ne crée des colonnes que pour les formats sur lesquels tu as réellement des pages
- Priorise les concurrents avec le plus fort volume de recherche

### Pourquoi les liens en pied de page comptent

1. **Distribution sitewide** : les liens pied de page apparaissent sur toutes les pages marketing et transmettent du jus de lien à l'ensemble du contenu comparatif
2. **Exploration efficace** : les moteurs de recherche découvrent toutes les pages comparatives rapidement
3. **Découverte utilisateur** : les visiteurs en phase d'évaluation trouvent facilement les comparaisons
4. **Positionnement concurrentiel** : signale aux moteurs de recherche que tu es un acteur clé de l'espace

### Notes d'implémentation

- Mets à jour le pied de page quand tu ajoutes de nouvelles pages comparatives prioritaires
- Garde le pied de page sobre : liste les principaux concurrents seulement, pas tous
- Aligne les intitulés de colonnes avec la structure d'URL (ex. colonne « vs » → URLs `/vs/`)
- Pense au mobile : les colonnes s'empilent, ordonne-les par priorité
