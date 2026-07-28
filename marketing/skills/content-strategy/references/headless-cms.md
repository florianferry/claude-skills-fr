# Guide headless CMS

Référence pour choisir, modéliser et mettre en œuvre un headless CMS pour le contenu marketing.

## Quand utiliser cette référence

À utiliser lors du choix d'un CMS pour un nouveau projet, de la conception de modèles de contenu pour des sites marketing, de la mise en place de workflows éditoriaux, ou de la connexion de contenu CMS à des pages programmatiques.

---

## Headless vs CMS traditionnel

Un headless CMS sépare la gestion du contenu de sa présentation. Le contenu est stocké dans un back-end structuré et livré via API à n'importe quel front-end.

### Quand le headless s'impose

- Plusieurs front-ends consomment le même contenu (web, mobile, e-mail)
- Les développeurs veulent un contrôle total sur la stack front-end
- Le contenu doit être réutilisé sur plusieurs canaux
- Tu construis avec un framework moderne (Next.js, Remix, Astro)
- Le marketing a besoin de blocs de contenu structurés et réutilisables

### Quand le traditionnel suffit

- Petite équipe sans développeur dédié
- Blog simple ou site vitrine
- L'édition WYSIWYG est une contrainte absolue
- Le budget est serré et WordPress/Webflow fait le travail

### Tableau de décision

| Critère | Headless | Traditionnel |
|---------|----------|--------------|
| Livraison multicanal | Oui | Limitée |
| Contrôle développeur | Total | Contraint |
| Édition non technique | Nécessite un paramétrage | Intégré |
| Délai de mise en ligne | Plus long | Plus rapide |
| Réutilisation du contenu | Native | Manuelle |
| Flexibilité d'hébergement | N'importe quel front-end | Dépend de la plateforme |

---

## Modélisation du contenu marketing

### Principes de base

1. **Penser en types, pas en pages.** Une « Page d'accueil » est un type de contenu avec des champs, pas un fichier HTML. Cela permet de réutiliser des composants sur plusieurs pages.
2. **Séparer le contenu de la présentation.** Stocke le texte du titre, pas le titre mis en forme. La présentation appartient au front-end.
3. **Concevoir pour la réutilisation.** Si des témoignages apparaissent sur 5 pages, crée un type Témoignage et référence-le, ne le duplique pas.
4. **Garder les modèles plats.** Les structures profondément imbriquées sont difficiles à requêter et à maintenir. Préfère les références à l'imbrication.

### Types de contenu marketing courants

| Type | Champs clés | Notes |
|------|------------|-------|
| **Page d'atterrissage** | titre, slug, hero, sections[], seo | Sections modulaires pour plus de flexibilité |
| **Article de blog** | titre, slug, corps, auteur, catégorie, tags, publiéLe, seo | Corps en texte enrichi ou Portable Text |
| **Étude de cas** | titre, client, problème, solution, résultats, métriques[], logo | Lier aux produits/fonctionnalités concernés |
| **Témoignage** | citation, auteur, poste, entreprise, avatar, note | Référencer depuis les pages d'atterrissage |
| **FAQ** | question, réponse, catégorie | Regrouper par catégorie pour les pages programmatiques |
| **Auteur** | nom, bio, avatar, liens sociaux | Référencer depuis les articles de blog |
| **Bloc CTA** | titre, corps, texteBouton, urlBouton, variante | Réutilisable sur toutes les pages |

### Checklist des champs SEO

Chaque type de contenu au niveau page a besoin de :

- `metaTitre` : 50 à 60 caractères
- `metaDescription` : 150 à 160 caractères
- `ogImage` : aperçu social 1 200 × 630 px
- `slug` : segment du chemin URL
- `urlCanonique` : remplacement optionnel
- `noIndex` : booléen pour exclure des résultats de recherche
- `donnéesStructurées` : remplacement optionnel JSON-LD

---

## Workflows éditoriaux

### Cycle brouillon → relecture → publication

1. **Brouillon** : l'auteur crée ou modifie le contenu
2. **Relecture** : l'éditeur vérifie l'exactitude, la voix de marque, le SEO
3. **Validation** : le responsable donne son accord
4. **Planification** : définition de la date et de l'heure de publication
5. **Publication** : le contenu est mis en ligne via l'API

### Aperçus avant publication

Toutes les grandes plateformes headless prennent en charge les aperçus de brouillons :

- **Sanity** : aperçu en temps réel avec `useLiveQuery` ou l'outil Presentation
- **Contentful** : Preview API (`preview.contentful.com`) avec un token d'accès séparé
- **Strapi** : système Draft & Publish avec le paramètre `status=draft` (v5 ; remplace `publicationState` de la v4)

Configure une route d'aperçu dans ton front-end (ex. : `/api/apercu`) qui authentifie et affiche le contenu en brouillon.

### Rôles et permissions

| Rôle | Peut créer | Peut modifier | Peut publier | Peut supprimer |
|------|:----------:|:-------------:|:------------:|:--------------:|
| Auteur | Oui | Les siens | Non | Ses brouillons |
| Éditeur | Oui | Tous | Oui | Brouillons |
| Administrateur | Oui | Tous | Oui | Tout |

Les modèles de permissions varient selon les plateformes. Sanity utilise le contrôle d'accès basé sur les rôles. Contentful a des rôles au niveau de l'espace. Strapi propose un RBAC granulaire.

---

## Comparatif des plateformes

| Fonctionnalité | Sanity | Contentful | Strapi |
|----------------|--------|------------|--------|
| Hébergement | Cloud (managé) | Cloud (managé) | Auto-hébergé ou cloud |
| Langage de requête | GROQ | REST / GraphQL | REST / GraphQL |
| Offre gratuite | Généreuse | Limitée | Open source (gratuit) |
| Collaboration temps réel | Oui (natif) | Limitée | Non |
| Idéal pour | Flexibilité développeur | Entreprise multilingue | Budget / auto-hébergé |
| Modélisation du contenu | Schéma en code | Interface web | Interface web ou code |
| Gestion des médias | DAM intégré | Intégré | Via plugin |

### Sanity

**Points forts** : GROQ est un langage de requête puissant et flexible. Schéma défini en code (versionnable). Édition collaborative en temps réel. Portable Text pour le contenu enrichi. Offre gratuite généreuse.

**Points de vigilance** : courbe d'apprentissage plus raide pour les non-développeurs. La personnalisation du Studio nécessite des connaissances en React. Dépendance aux requêtes GROQ.

**Adéquation marketing** : idéal quand développeurs et équipes marketing collaborent étroitement. Excellent pour les sites à fort contenu avec des modèles complexes.

### Contentful

**Points forts** : plateforme enterprise mature. Excellent support multilingue. Vaste écosystème d'intégrations. Contenu composable avec Studio. APIs bien documentées.

**Points de vigilance** : le tarif monte avec le nombre de types de contenu et de locales. Deux APIs séparées (Delivery et Management). Les limites de débit peuvent être serrées sur les petits plans.

**Adéquation marketing** : idéal pour les entreprises avec des besoins de contenu multi-marchés. Bon choix quand la fiabilité d'un fournisseur établi est un critère.

### Strapi

**Points forts** : open source, option auto-hébergée. Contrôle total sur les données. Pas de tarification par siège. Panel d'administration personnalisable. Écosystème de plugins. REST par défaut, GraphQL via plugin.

**Points de vigilance** : l'auto-hébergement implique de gérer l'infrastructure. Écosystème plus réduit que Sanity/Contentful. La migration v5 depuis la v4 peut être significative.

**Adéquation marketing** : idéal pour les équipes avec des capacités DevOps qui veulent un contrôle total et pas de dépendance fournisseur. Bon pour les projets avec des contraintes budgétaires.

### Autres plateformes à connaître

- **Hygraph** : natif GraphQL, fort pour la fédération et les contenus multi-sources
- **Keystatic** : basé sur Git, adapté aux workflows hybrides développeur-contenu
- **Payload** : TypeScript-first, auto-hébergé, configuré en code comme Sanity
- **Builder.io** : éditeur visuel avec back-end headless, adapté aux équipes marketing non techniques
- **Prismic** : modélisation par tranches (slices), forte intégration Next.js

---

## Intégration avec les autres skills

### SEO programmatique

Utilise le CMS comme source de données pour les pages programmatiques. Stocke des données structurées (FAQ, comparatifs, pages locales) sous forme de types de contenu et génère des pages à partir de requêtes. Voir le skill **programmatic-seo**.

### Copywriting

Les modèles de contenu CMS imposent une structure cohérente. Définis des champs qui correspondent à tes frameworks de copy (titre, sous-titre, preuve sociale, CTA). Voir le skill **copywriting**.

### Architecture de site

La structure d'URL, la hiérarchie de navigation et le maillage interne dépendent de la façon dont le contenu est organisé dans le CMS. Planifie ton modèle de contenu et ton architecture de site ensemble. Voir le skill **site-architecture**.

### Séquences e-mail

Intègre le contenu CMS dans les templates d'e-mail pour une cohérence de message entre web et e-mail. Les études de cas, témoignages et articles de blog peuvent alimenter des séquences de nurture. Voir le skill **emails**.

---

## Checklist de mise en œuvre

- [ ] Définir les types de contenu en fonction des types de pages et des blocs réutilisables
- [ ] Ajouter les champs SEO à chaque type de contenu au niveau page
- [ ] Configurer le mode aperçu/brouillon dans le front-end
- [ ] Paramétrer les rôles et permissions pour l'équipe
- [ ] Créer du contenu exemple pour chaque type avant de construire le front-end
- [ ] Configurer les notifications webhook pour les changements de contenu (déclencheurs de rebuild)
- [ ] Documenter les consignes de contenu pour les éditeurs (descriptions de champs, limites de caractères)
- [ ] Tester les performances de livraison du contenu (CDN, cache, ISR)
- [ ] Planifier la stratégie de migration depuis le CMS existant

---

## Guides d'intégration associés

- [Sanity](../../../tools/integrations/sanity.md) : requêtes GROQ, mutations, CLI
- [Contentful](../../../tools/integrations/contentful.md) : API Delivery/Management, publication
- [Strapi](../../../tools/integrations/strapi.md) : CRUD REST, filtres, API document
