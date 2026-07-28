# Modèles par type de site

Modèles complets de hiérarchie de pages avec arborescences ASCII, tableaux de correspondance URL et recommandations de navigation pour les types de sites courants.

---

## Site marketing SaaS

### Hiérarchie de pages

```
Accueil (/)
├── Fonctionnalités (/fonctionnalites)
│   ├── Fonctionnalité A (/fonctionnalites/fonctionnalite-a)
│   ├── Fonctionnalité B (/fonctionnalites/fonctionnalite-b)
│   └── Fonctionnalité C (/fonctionnalites/fonctionnalite-c)
├── Tarifs (/tarifs)
├── Clients (/clients)
│   ├── Étude de cas 1 (/clients/nom-entreprise)
│   └── Étude de cas 2 (/clients/nom-entreprise-2)
├── Ressources (/ressources)
│   ├── Blog (/blog)
│   │   └── [Articles] (/blog/slug-article)
│   ├── Modèles (/ressources/modeles)
│   │   └── [Modèle] (/ressources/modeles/slug-modele)
│   └── Guides (/ressources/guides)
│       └── [Guide] (/ressources/guides/slug-guide)
├── Intégrations (/integrations)
│   └── [Intégration] (/integrations/nom-integration)
├── Docs (/docs)
│   ├── Démarrage rapide (/docs/demarrage-rapide)
│   ├── Guides (/docs/guides)
│   └── Référence API (/docs/api)
├── À propos (/a-propos)
│   ├── Recrutement (/a-propos/recrutement)
│   └── Contact (/contact)
├── Comparatifs (/comparer)
│   └── [Concurrent] (/comparer/nom-concurrent)
├── Confidentialité (/confidentialite)
└── CGU (/cgu)
```

### Tableau de correspondance URL

| Page | URL | Emplacement nav | Priorité |
|---|---|---|---|
| Accueil | `/` | En-tête (logo) | Critique |
| Fonctionnalités | `/fonctionnalites` | En-tête | Haute |
| Pages fonctionnalités | `/fonctionnalites/{slug}` | Menu déroulant | Moyenne |
| Tarifs | `/tarifs` | En-tête | Critique |
| Clients | `/clients` | En-tête | Moyenne |
| Études de cas | `/clients/{slug}` | Menu déroulant Clients | Moyenne |
| Blog | `/blog` | En-tête (Ressources) | Haute |
| Articles de blog | `/blog/{slug}` | — | Moyenne |
| Intégrations | `/integrations` | En-tête | Moyenne |
| Docs | `/docs` | En-tête | Moyenne |
| Comparatifs | `/comparer/{slug}` | Pied de page | Haute (SEO) |
| À propos | `/a-propos` | Pied de page | Basse |
| CTA tarifs | `/tarifs` | En-tête (bouton CTA) | Critique |

### Navigation

**En-tête (6 entrées + CTA)** : Fonctionnalités | Tarifs | Clients | Ressources | Intégrations | Docs | [Commencer]

**Colonnes du pied de page** :
- Produit : Fonctionnalités, Tarifs, Intégrations, Changelog, Sécurité
- Ressources : Blog, Modèles, Guides, Études de cas
- Entreprise : À propos, Recrutement, Contact, Presse
- Légal : Confidentialité, CGU, Sécurité

---

## Site de contenu / blog

### Hiérarchie de pages

```
Accueil (/)
├── Blog (/blog)
│   ├── [Catégorie : Sujet A] (/blog/categorie/sujet-a)
│   ├── [Catégorie : Sujet B] (/blog/categorie/sujet-b)
│   ├── [Catégorie : Sujet C] (/blog/categorie/sujet-c)
│   └── [Articles] (/blog/slug-article)
├── Newsletter (/newsletter)
├── Ressources (/ressources)
│   ├── Guides (/ressources/guides)
│   │   └── [Guide] (/ressources/guides/slug-guide)
│   └── Outils (/ressources/outils)
│       └── [Outil] (/ressources/outils/slug-outil)
├── À propos (/a-propos)
├── Contact (/contact)
├── Confidentialité (/confidentialite)
└── CGU (/cgu)
```

### Tableau de correspondance URL

| Page | URL | Emplacement nav | Priorité |
|---|---|---|---|
| Accueil | `/` | En-tête (logo) | Critique |
| Index du blog | `/blog` | En-tête | Haute |
| Catégories | `/blog/categorie/{slug}` | Menu déroulant | Moyenne |
| Articles | `/blog/{slug}` | — | Moyenne |
| Newsletter | `/newsletter` | En-tête (CTA) | Haute |
| Guides | `/ressources/guides` | En-tête | Moyenne |
| À propos | `/a-propos` | En-tête | Basse |

### Navigation

**En-tête (4 entrées + CTA)** : Blog | Ressources | À propos | Contact | [S'abonner]

**Sidebar** (sur le blog) : Catégories, Articles populaires, Formulaire d'inscription newsletter

---

## E-commerce

### Hiérarchie de pages

```
Accueil (/)
├── Boutique (/boutique)
│   ├── Catégorie A (/boutique/categorie-a)
│   │   ├── Sous-catégorie (/boutique/categorie-a/sous-categorie)
│   │   │   └── [Produit] (/boutique/categorie-a/sous-categorie/slug-produit)
│   │   └── [Produit] (/boutique/categorie-a/slug-produit)
│   ├── Catégorie B (/boutique/categorie-b)
│   │   └── [Produit] (/boutique/categorie-b/slug-produit)
│   └── Catégorie C (/boutique/categorie-c)
│       └── [Produit] (/boutique/categorie-c/slug-produit)
├── Collections (/collections)
│   └── [Collection] (/collections/slug-collection)
├── Promotions (/promotions)
├── Blog (/blog)
│   └── [Articles] (/blog/slug-article)
├── À propos (/a-propos)
│   └── Notre histoire (/a-propos/notre-histoire)
├── Aide (/aide)
│   ├── FAQ (/aide/faq)
│   ├── Livraison (/aide/livraison)
│   ├── Retours (/aide/retours)
│   └── Contact (/contact)
├── Panier (/panier)
├── Mon compte (/mon-compte)
├── Confidentialité (/confidentialite)
└── CGU (/cgu)
```

### Tableau de correspondance URL

| Page | URL | Emplacement nav | Priorité |
|---|---|---|---|
| Accueil | `/` | En-tête (logo) | Critique |
| Boutique | `/boutique` | En-tête | Critique |
| Catégories | `/boutique/{categorie}` | Méga-menu | Haute |
| Produits | `/boutique/{categorie}/{produit}` | — | Haute |
| Collections | `/collections/{slug}` | En-tête | Moyenne |
| Promotions | `/promotions` | En-tête (mis en avant) | Haute |
| Panier | `/panier` | En-tête (icône) | Critique |
| Mon compte | `/mon-compte` | En-tête (icône) | Moyenne |

### Navigation

**En-tête (5 entrées + panier/compte)** : Boutique (méga-menu) | Collections | Promotions | Blog | Aide | [Icône panier] [Icône compte]

**Méga-menu sous Boutique** : colonnes de catégories avec produits / visuels en avant

---

## Site de documentation

### Hiérarchie de pages

```
Accueil docs (/docs)
├── Démarrage rapide (/docs/demarrage-rapide)
│   ├── Installation (/docs/demarrage-rapide/installation)
│   ├── Démarrage en 5 min (/docs/demarrage-rapide/demarrage-rapide)
│   └── Configuration (/docs/demarrage-rapide/configuration)
├── Guides (/docs/guides)
│   ├── Guide A (/docs/guides/guide-a)
│   ├── Guide B (/docs/guides/guide-b)
│   └── Guide C (/docs/guides/guide-c)
├── Référence API (/docs/api)
│   ├── Authentification (/docs/api/authentification)
│   ├── Endpoints (/docs/api/endpoints)
│   └── Webhooks (/docs/api/webhooks)
├── Exemples (/docs/exemples)
│   └── [Exemple] (/docs/exemples/slug-exemple)
├── Changelog (/docs/changelog)
└── FAQ (/docs/faq)
```

### Tableau de correspondance URL

| Page | URL | Emplacement nav | Priorité |
|---|---|---|---|
| Accueil docs | `/docs` | En-tête | Haute |
| Démarrage rapide | `/docs/demarrage-rapide` | Sidebar (en haut) | Critique |
| Guides | `/docs/guides` | Sidebar | Haute |
| Référence API | `/docs/api` | Sidebar | Haute |
| Changelog | `/docs/changelog` | Sidebar (en bas) | Basse |

### Navigation

**En-tête** : Docs | API | Blog | Communauté | GitHub | [Tableau de bord]

**Sidebar** (persistante, à gauche) : Démarrage rapide, Guides, Référence API, Exemples, Changelog (avec sous-sections dépliables)

**Dans la page** : navigation Précédent / Suivant en bas de chaque page de doc

---

## Hybride SaaS + contenu

### Hiérarchie de pages

```
Accueil (/)
├── Produit (/produit)
│   ├── Fonctionnalité A (/produit/fonctionnalite-a)
│   ├── Fonctionnalité B (/produit/fonctionnalite-b)
│   └── Fonctionnalité C (/produit/fonctionnalite-c)
├── Solutions (/solutions)
│   ├── Par cas d'usage (/solutions/slug-cas-usage)
│   └── Par secteur (/solutions/slug-secteur)
├── Tarifs (/tarifs)
├── Blog (/blog)
│   ├── [Catégorie] (/blog/categorie/slug)
│   └── [Articles] (/blog/slug-article)
├── Ressources (/ressources)
│   ├── Guides (/ressources/guides)
│   ├── Modèles (/ressources/modeles)
│   ├── Webinaires (/ressources/webinaires)
│   └── Études de cas (/ressources/etudes-de-cas)
├── Docs (/docs)
│   ├── Démarrage rapide (/docs/demarrage-rapide)
│   └── API (/docs/api)
├── Intégrations (/integrations)
│   └── [Intégration] (/integrations/slug)
├── Comparatifs (/comparer)
│   └── [Concurrent] (/comparer/slug-concurrent)
├── À propos (/a-propos)
│   ├── Recrutement (/a-propos/recrutement)
│   └── Contact (/contact)
├── Confidentialité (/confidentialite)
└── CGU (/cgu)
```

### Navigation

**En-tête (7 entrées + CTA)** : Produit | Solutions | Tarifs | Ressources | Blog | Docs | Intégrations | [Démarrer gratuitement]

Utilise des méga-menus pour Produit (liste des fonctionnalités), Solutions (cas d'usage + secteurs) et Ressources (blog, guides, modèles, webinaires, études de cas).

---

## PME / commerce local

### Hiérarchie de pages

```
Accueil (/)
├── Services (/services)
│   ├── Service A (/services/service-a)
│   ├── Service B (/services/service-b)
│   └── Service C (/services/service-c)
├── À propos (/a-propos)
├── Avis clients (/avis-clients)
├── Blog (/blog)
│   └── [Articles] (/blog/slug-article)
├── Contact (/contact)
├── Confidentialité (/confidentialite)
└── CGU (/cgu)
```

### Tableau de correspondance URL

| Page | URL | Emplacement nav | Priorité |
|---|---|---|---|
| Accueil | `/` | En-tête (logo) | Critique |
| Services | `/services` | En-tête | Haute |
| Pages services | `/services/{slug}` | Menu déroulant | Haute |
| À propos | `/a-propos` | En-tête | Moyenne |
| Avis clients | `/avis-clients` | En-tête | Moyenne |
| Blog | `/blog` | En-tête | Moyenne |
| Contact | `/contact` | En-tête (CTA) | Haute |

### Navigation

**En-tête (5 entrées + CTA)** : Services | À propos | Avis clients | Blog | [Nous contacter]

Garde-le simple. Les sites de PME doivent être plats (1 à 2 niveaux maximum). Chaque page doit être accessible depuis l'en-tête.
