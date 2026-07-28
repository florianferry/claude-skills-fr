# Patterns de navigation

Patterns de navigation détaillés pour différents types de sites et contextes.

---

## Navigation principale (en-tête)

### En-tête simple (4 à 6 entrées)

Idéal pour : PME, SaaS simples, portfolios.

```
[Logo]   Fonctionnalités   Tarifs   Blog   À propos   [Bouton CTA]
```

Règles :
- Le logo renvoie toujours à l'accueil
- Le bouton CTA est le plus à droite, visuellement distinct (bouton plein, couleur contrastée)
- Entrées classées par priorité (les plus visitées en premier)
- La page active a un indicateur visuel (soulignement, gras, couleur)

### En-tête avec méga-menu

Idéal pour : SaaS avec de nombreuses fonctionnalités, e-commerce avec catégories, sites de contenu volumineux.

```
[Logo]   Produit ▾   Solutions ▾   Ressources ▾   Tarifs   Docs   [CTA]
```

Au survol/clic sur « Produit » :

```
┌─────────────────────────────────────────────────────┐
│  Fonctionnalités    Plateforme      Intégrations     │
│  ───────────────    ──────────      ────────────     │
│  Analytics          Sécurité        Slack            │
│  Automatisation     API             HubSpot          │
│  Rapports           Conformité      Salesforce       │
│  Tableaux de bord                   Zapier           │
│                                                      │
│  [Voir toutes les fonctionnalités →]                 │
└─────────────────────────────────────────────────────┘
```

Règles du méga-menu :
- 2 à 4 colonnes maximum
- Regroupe les entrées par logique (domaine fonctionnel, cas d'usage, audience)
- Inclus un lien « Tout voir » en bas
- Ne pas imbriquer des menus déroulants dans le méga-menu
- Affiche des descriptions pour les entrées dont le libellé seul manque de clarté

### Navigation séparée

Idéal pour : applications combinant nav marketing et nav produit.

```
[Logo]   Fonctionnalités   Tarifs   Blog        [Connexion]   [Inscription]
├── Nav marketing (gauche) ──────┘              └── Nav auth (droite) ──┤
```

La droite gère les actions d'authentification. La gauche gère la navigation entre pages.

---

## Navigation de pied de page

### Pied de page en colonnes (standard)

Idéal pour : la plupart des sites. Organise les liens en 3 à 5 colonnes thématiques.

```
┌──────────────────────────────────────────────────────────────┐
│                                                              │
│  Produit          Ressources        Entreprise    Légal      │
│  ─────────        ──────────        ──────────    ─────      │
│  Fonctionnalités  Blog              À propos      Conf.      │
│  Tarifs           Guides            Recrutement   CGU        │
│  Intégrations     Modèles           Contact       RGPD       │
│  Changelog        Études de cas     Presse                   │
│  Sécurité         Webinaires        Partenaires              │
│                                                              │
│  [Logo]  © 2026 Nom de l'entreprise                          │
│  Réseaux : [Twitter] [LinkedIn] [GitHub]                     │
│                                                              │
└──────────────────────────────────────────────────────────────┘
```

### Pied de page minimal

Idéal pour : sites simples, landing pages.

```
┌──────────────────────────────────────────────────────────────┐
│  [Logo]                                                      │
│  © 2026 Entreprise  ·  Confidentialité  ·  CGU  ·  Contact  │
└──────────────────────────────────────────────────────────────┘
```

### Pied de page développé

Idéal pour : sites qui utilisent le pied de page pour le SEO (pages comparatives, pages locales, liens vers ressources).

```
┌──────────────────────────────────────────────────────────────┐
│  Produit        Ressources     Comparatifs      Cas d'usage  │
│  Fonctionnalités Blog          vs Concurrent A  Pour PME     │
│  Tarifs         Guides         vs Concurrent B  Pour ETI     │
│  API            Modèles        vs Concurrent C  Pour agences │
│                                                              │
│  Intégrations                  Articles populaires           │
│  Slack          Zapier         Comment faire X               │
│  HubSpot        Salesforce     Guide complet de Y            │
│                                Modèle : Z                    │
│                                                              │
│  [Logo]  © 2026  ·  Conf.  ·  CGU  ·  Sécurité              │
└──────────────────────────────────────────────────────────────┘
```

---

## Navigation latérale

### Sidebar de documentation

Sidebar persistante à gauche avec sections repliables.

```
Démarrage rapide
  ├── Installation
  ├── Démarrage en 5 min
  └── Configuration

Guides
  ├── Authentification
  ├── Modèles de données
  └── Déploiement

Référence API
  ├── API REST
  │   ├── Utilisateurs
  │   ├── Projets
  │   └── Webhooks
  └── GraphQL

Exemples
  ├── Next.js
  ├── Rails
  └── Python

Changelog
```

Règles :
- Page en cours mise en évidence
- Sections repliables (dépliées par défaut pour la section active)
- Champ de recherche en haut de la sidebar
- Navigation « Précédent / Suivant » en bas de la zone de contenu
- Fixe au défilement (ne disparaît pas en scrollant)

### Sidebar de catégories de blog

```
Catégories
  ├── SEO (24)
  ├── CRO (18)
  ├── Contenu (15)
  ├── Publicité (12)
  └── Analytics (9)

Articles populaires
  ├── Comment améliorer son SEO
  ├── Guide landing page
  └── Configurer Analytics

Newsletter
  └── [Formulaire d'inscription]
```

---

## Fil d'Ariane

### Format standard

```
Accueil > Fonctionnalités > Analytics
Accueil > Blog > Catégorie SEO > Comment faire de la recherche de mots-clés
Accueil > Docs > Référence API > Authentification
```

Règles :
- Séparateur : `>` ou `/` (cohérent sur tout le site)
- Chaque segment est un lien, sauf la page en cours
- La page en cours est en texte simple (non lié)
- N'inclus pas la page en cours si son titre est déjà visible en H1

### Avec balisage Schema

```html
<nav aria-label="Fil d'Ariane">
  <ol itemscope itemtype="https://schema.org/BreadcrumbList">
    <li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
      <a itemprop="item" href="/"><span itemprop="name">Accueil</span></a>
      <meta itemprop="position" content="1" />
    </li>
    <li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
      <a itemprop="item" href="/fonctionnalites"><span itemprop="name">Fonctionnalités</span></a>
      <meta itemprop="position" content="2" />
    </li>
    <li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem">
      <span itemprop="name">Analytics</span>
      <meta itemprop="position" content="3" />
    </li>
  </ol>
</nav>
```

Ou en JSON-LD (recommandé) :

```json
{
  "@context": "https://schema.org",
  "@type": "BreadcrumbList",
  "itemListElement": [
    { "@type": "ListItem", "position": 1, "name": "Accueil", "item": "https://exemple.fr/" },
    { "@type": "ListItem", "position": 2, "name": "Fonctionnalités", "item": "https://exemple.fr/fonctionnalites" },
    { "@type": "ListItem", "position": 3, "name": "Analytics" }
  ]
}
```

---

## Navigation mobile

### Menu hamburger

Standard pour le mobile. Toutes les entrées de nav se replient dans une icône de menu.

Règles :
- Icône hamburger (trois traits) en haut à droite ou à gauche
- Panneau plein écran ou glissant
- Bouton CTA visible sans ouvrir le menu (en-tête fixe)
- Recherche accessible depuis le menu mobile
- Accordéon pour les entrées imbriquées

### Barre d'onglets en bas

Idéal pour : applications web, PWA, produits mobile-first.

```
┌──────────────────────────────────────────┐
│                                          │
│           [Contenu de la page]           │
│                                          │
├──────────────────────────────────────────┤
│  Accueil   Recherche   Créer   Profil    │
│    🏠         🔍          ➕      👤     │
└──────────────────────────────────────────┘
```

Règles :
- 3 à 5 entrées maximum
- Icônes avec libellés (pas d'icônes seules)
- État actif clairement indiqué
- L'action principale au centre

---

## Erreurs à éviter

### Ce qu'il ne faut pas faire

- **Trop d'entrées dans l'en-tête (8+)** : paralysie du choix, nav illisible sur petits écrans
- **Menus déroulants imbriqués** : des menus dans des menus dans des menus
- **Icônes mystères** : icônes sans libellé, les visiteurs ne savent pas ce qu'elles signifient
- **Nav principale cachée** : des pages importantes enfouies dans le hamburger sur desktop
- **Nav incohérente entre pages** : la navigation doit être identique sur tout le site (sauf app vs marketing)
- **Aucune adaptation mobile** : une nav desktop qui ne passe pas sur mobile
- **Pied de page fourre-tout** : 50+ liens sans organisation
- **Fil d'Ariane qui ne correspond pas aux URL** : le fil dit « Produits > Widget » mais l'URL est `/boutique/widget-pro`

### Corrections fréquentes

| Problème | Solution |
|---|---|
| Trop d'entrées nav | Regrouper en menus déroulants ou méga-menus |
| Pages introuvables | Ajouter une recherche, améliorer les libellés |
| Taux de rebond élevé depuis la nav | Simplifier les choix, utiliser des libellés plus clairs |
| Pages SEO sans lien | Les ajouter au pied de page ou aux sections ressources |
| Nav mobile cassée | Tester sur de vrais appareils, utiliser le pattern hamburger |

---

## Navigation et SEO

Les liens de navigation transmettent du PageRank. Utilise-le de façon stratégique :

- **Les liens de la nav principale ont le plus de poids** : mets-y tes pages les plus importantes
- **Les liens du pied de page ont moins de valeur** mais comptent tout de même : utiles pour les pages comparatives, les pages locales
- **Les liens de la sidebar** renforcent l'autorité d'une section : bons pour les catégories de blog, les sections de docs
- **Les fils d'Ariane** envoient des signaux structurels aux moteurs de recherche : implémente-les avec le balisage Schema
- **Évite les navs en JavaScript pur** : les moteurs de recherche ont besoin de liens HTML crawlables
- **Utilise des textes d'ancre descriptifs** : « Fonctionnalités analytics » plutôt que simplement « Fonctionnalités »
