# Modèles de diagrammes Mermaid

Modèles Mermaid prêts à l'emploi pour les plans de site visuels. Adapte les libellés des nœuds et les connexions à ton site.

---

## Hiérarchie de base

Hiérarchie de pages simple du haut vers le bas.

```mermaid
graph TD
    ACCUEIL["Accueil<br/>/"] --> FONC["Fonctionnalités<br/>/fonctionnalites"]
    ACCUEIL --> TARIFS["Tarifs<br/>/tarifs"]
    ACCUEIL --> BLOG["Blog<br/>/blog"]
    ACCUEIL --> APROPOS["À propos<br/>/a-propos"]

    FONC --> F1["Analytics<br/>/fonctionnalites/analytics"]
    FONC --> F2["Automatisation<br/>/fonctionnalites/automatisation"]
    FONC --> F3["Intégrations<br/>/fonctionnalites/integrations"]

    BLOG --> B1["Article : Guide SEO<br/>/blog/guide-seo"]
    BLOG --> B2["Article : Conseils CRO<br/>/blog/conseils-cro"]
```

---

## Hiérarchie avec zones de navigation

Utilise des sous-graphes pour montrer quelles pages apparaissent dans quelle zone de navigation.

```mermaid
graph TD
    subgraph "Navigation principale"
        ACCUEIL["Accueil"]
        FONC["Fonctionnalités"]
        TARIFS["Tarifs"]
        BLOG["Blog"]
        CTA["Commencer ★"]
    end

    subgraph "Pages fonctionnalités"
        F1["Analytics"]
        F2["Automatisation"]
        F3["Intégrations"]
    end

    subgraph "Pied de page"
        APROPOS["À propos"]
        RECRUTEMENT["Recrutement"]
        CONTACT["Contact"]
        CONF["Confidentialité"]
        CGU["CGU"]
    end

    ACCUEIL --> FONC
    ACCUEIL --> TARIFS
    ACCUEIL --> BLOG
    FONC --> F1
    FONC --> F2
    FONC --> F3
    ACCUEIL --> APROPOS
    APROPOS --> RECRUTEMENT
    ACCUEIL --> CONTACT
```

---

## Hiérarchie avec libellés d'URL

Chaque nœud affiche le nom de la page et son chemin URL.

```mermaid
graph TD
    ACCUEIL["Accueil<br/><small>/</small>"] --> PROD["Produit<br/><small>/produit</small>"]
    ACCUEIL --> TARIFS["Tarifs<br/><small>/tarifs</small>"]
    ACCUEIL --> BLOG["Blog<br/><small>/blog</small>"]
    ACCUEIL --> DOCS["Docs<br/><small>/docs</small>"]
    ACCUEIL --> APROPOS["À propos<br/><small>/a-propos</small>"]

    PROD --> P1["Analytics<br/><small>/produit/analytics</small>"]
    PROD --> P2["Rapports<br/><small>/produit/rapports</small>"]

    DOCS --> D1["Démarrage rapide<br/><small>/docs/demarrage-rapide</small>"]
    DOCS --> D2["Référence API<br/><small>/docs/api</small>"]
```

---

## Modèle hub-and-spoke

Montre une page hub reliée à ses articles satellites, avec des liens croisés entre satellites.

```mermaid
graph TD
    HUB["Guide SEO<br/>(Page hub)"]

    HUB --> S1["Recherche de mots-clés"]
    HUB --> S2["SEO on-page"]
    HUB --> S3["SEO technique"]
    HUB --> S4["Netlinking"]

    S1 -.-> S2
    S2 -.-> S3
    S3 -.-> S4

    style HUB fill:#f9f,stroke:#333,stroke-width:2px
```

Légende :
- Traits pleins = liens hub-satellite principaux
- Traits pointillés = liens croisés entre satellites

---

## Flux de maillage interne

Montre comment les différentes sections du site se lient entre elles.

```mermaid
graph LR
    subgraph "Marketing"
        ACCUEIL["Accueil"]
        FONC["Fonctionnalités"]
        TARIFS["Tarifs"]
    end

    subgraph "Contenu"
        BLOG["Blog"]
        GUIDES["Guides"]
        CAS["Études de cas"]
    end

    subgraph "Produit"
        DOCS["Docs"]
        API["Réf. API"]
        CHANGE["Changelog"]
    end

    BLOG --> FONC
    BLOG --> CAS
    CAS --> FONC
    CAS --> TARIFS
    FONC --> DOCS
    GUIDES --> BLOG
    GUIDES --> DOCS
    ACCUEIL --> FONC
    ACCUEIL --> BLOG
    ACCUEIL --> CAS
```

---

## Avant / après restructuration

Compare les structures actuelle et proposée côte à côte.

```mermaid
graph TD
    subgraph "Avant"
        B_ACC["Accueil"] --> B_P1["Page 1"]
        B_ACC --> B_P2["Page 2"]
        B_ACC --> B_P3["Page 3"]
        B_ACC --> B_P4["Page 4"]
        B_ACC --> B_P5["Page 5"]
        B_ACC --> B_P6["Page 6"]
        B_ACC --> B_P7["Page 7"]
        B_ACC --> B_P8["Page 8"]
    end

    subgraph "Après"
        A_ACC["Accueil"] --> A_S1["Fonctionnalités"]
        A_ACC --> A_S2["Ressources"]
        A_ACC --> A_S3["Entreprise"]
        A_S1 --> A_P1["Fonctionnalité A"]
        A_S1 --> A_P2["Fonctionnalité B"]
        A_S2 --> A_P3["Blog"]
        A_S2 --> A_P4["Guides"]
        A_S3 --> A_P5["À propos"]
        A_S3 --> A_P6["Contact"]
    end
```

---

## Code couleur

Utilise des styles pour mettre en évidence le statut, la priorité ou le type des pages.

```mermaid
graph TD
    ACCUEIL["Accueil"] --> FONC["Fonctionnalités"]
    ACCUEIL --> TARIFS["Tarifs"]
    ACCUEIL --> BLOG["Blog"]
    ACCUEIL --> NEW["Nouvelle section"]
    ACCUEIL --> REMOVE["Page à supprimer"]

    FONC --> F1["Fonctionnalité existante"]
    FONC --> F2["Nouvelle fonctionnalité"]

    style ACCUEIL fill:#4CAF50,color:#fff
    style TARIFS fill:#4CAF50,color:#fff
    style FONC fill:#4CAF50,color:#fff
    style BLOG fill:#4CAF50,color:#fff
    style F1 fill:#4CAF50,color:#fff
    style NEW fill:#2196F3,color:#fff
    style F2 fill:#2196F3,color:#fff
    style REMOVE fill:#f44336,color:#fff
```

Code couleur :
- **Vert** (`#4CAF50`) : pages existantes (aucune modification)
- **Bleu** (`#2196F3`) : nouvelles pages à créer
- **Rouge** (`#f44336`) : pages à supprimer ou à rediriger
- **Jaune** (`#FFC107`) : pages à restructurer ou à déplacer
- **Violet** (`#9C27B0`) : pages prioritaires / CTA
