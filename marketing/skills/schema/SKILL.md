---
name: schema
description: "Quand l'utilisateur veut ajouter, corriger ou optimiser le balisage schema et les données structurées de son site. À utiliser aussi quand il mentionne « balisage schema », « schema markup », « données structurées », « JSON-LD », « résultats enrichis », « rich snippets », « schema.org », « schema FAQ », « FAQPage », « schema produit », « schema avis », « fil d'Ariane », « breadcrumb », « résultats enrichis Google », « Knowledge Panel », « étoiles dans les résultats de recherche » ou « ajouter des données structurées ». À déclencher dès que quelqu'un veut que ses pages affichent des résultats enrichis dans Google. Pour les questions SEO plus larges, voir seo-audit. Pour l'optimisation pour la recherche IA, voir ai-seo."
metadata:
  version: 2.0.0
---

# Balisage schema

> **Style français, prioritaire sur les exemples anglais de ce skill.** Pour tout texte destiné à un lectorat francophone : pense en français, ne traduis pas l'anglais. Évite les calques (« C'est simple. », « N'hésitez pas à… ») et les formules de réclame (Découvrez, Boostez, Optimisez, Incontournable, En un clin d'œil). Typographie : espace insécable avant `: ; ! ?` et dans « … » ; apostrophe ’ ; titres en casse de phrase ; pas de tiret cadratin (U+2014) dans le corps (→ `,` `:` `.` ou parenthèses) ; nombres à la française (`29 €`, `80 %`, `12 000`, `24 h`). Accorde genre, nombre et participes ; choisis le tutoiement ou le vouvoiement et tiens-t'y ; une tournure qui sonne traduite se réécrit. Détail complet dans `french-copy.md`, fourni avec ce skill.

Tu es expert en données structurées et en balisage schema. Ton but : implémenter un balisage schema.org qui aide les moteurs de recherche à comprendre le contenu et qui ouvre droit aux résultats enrichis.

## Évaluation initiale

**Vérifie d'abord le contexte produit :**
Si `.agents/product-marketing.md` existe (ou `.claude/product-marketing.md`, ou l'ancien nom `product-marketing-context.md`), lis-le avant de poser des questions. Utilise ce contexte et ne pose que les questions non couvertes ou spécifiques à la tâche.

Avant d'implémenter le schema, établis :

1. **Le type de page** : de quelle page s'agit-il ? Quel est son contenu principal ? Quels résultats enrichis sont possibles ?

2. **L'état actuel** : un schema existe-t-il déjà ? Des erreurs d'implémentation ? Quels résultats enrichis apparaissent déjà ?

3. **Les objectifs** : quels résultats enrichis vises-tu ? Qu'apportent-ils à l'activité ?

---

## Principes fondamentaux

### 1. L'exactitude d'abord
- Le schema doit refléter fidèlement le contenu de la page
- Ne pas baliser un contenu qui n'existe pas
- Le tenir à jour quand le contenu change

### 2. Utiliser JSON-LD
- Google recommande le format JSON-LD
- Plus simple à implémenter et à maintenir
- À placer dans le `<head>` ou en fin de `<body>`

### 3. Suivre les consignes de Google
- N'utiliser que le balisage que Google prend en charge
- Éviter les pratiques de spam
- Vérifier les conditions d'éligibilité

### 4. Tout valider
- Tester avant de déployer
- Surveiller la Search Console
- Corriger les erreurs sans attendre

---

## Types de schema courants

| Type | Pour | Propriétés obligatoires |
|------|------|-------------------------|
| Organization | Page d'accueil ou « À propos » de l'entreprise | name, url |
| WebSite | Page d'accueil (champ de recherche) | name, url |
| Article | Articles de blog, actualités | headline, image, datePublished, author |
| Product | Pages produit | name, image, offers |
| SoftwareApplication | Pages SaaS ou d'application | name, offers |
| FAQPage | Contenu de FAQ | mainEntity (tableau de questions-réponses) |
| HowTo | Tutoriels | name, step |
| BreadcrumbList | Toute page avec un fil d'Ariane | itemListElement |
| LocalBusiness | Pages de commerce local | name, address |
| Event | Événements, webinaires | name, startDate, location |

**Pour des exemples JSON-LD complets** : voir [references/schema-examples.md](references/schema-examples.md)

---

## Aide-mémoire

### Organization (page entreprise)
Obligatoires : name, url
Recommandées : logo, sameAs (profils sociaux), contactPoint

### Article/BlogPosting
Obligatoires : headline, image, datePublished, author
Recommandées : dateModified, publisher, description

### Product
Obligatoires : name, image, offers (prix + disponibilité)
Recommandées : sku, brand, aggregateRating, review

### FAQPage
Obligatoire : mainEntity (tableau de paires Question/Answer)

### BreadcrumbList
Obligatoire : itemListElement (tableau avec position, name, item)

---

## Plusieurs types de schema

On peut combiner plusieurs types de schema sur une même page avec `@graph` :

```json
{
  "@context": "https://schema.org",
  "@graph": [
    { "@type": "Organization", ... },
    { "@type": "WebSite", ... },
    { "@type": "BreadcrumbList", ... }
  ]
}
```

---

## Validation et tests

### Outils
- **Test des résultats enrichis de Google** : https://search.google.com/test/rich-results
- **Validateur Schema.org** : https://validator.schema.org/
- **Search Console** : rapports « Améliorations »

### Erreurs fréquentes

**Propriétés obligatoires manquantes** : vérifier dans la documentation de Google les champs exigés

**Valeurs invalides** : les dates au format ISO 8601, les URL complètes, les énumérations exactes

**Décalage avec le contenu de la page** : le schema ne correspond pas au contenu visible

---

## Implémentation

### Sites statiques
- Ajouter le JSON-LD directement dans le gabarit HTML
- Passer par des includes ou des partials pour un schema réutilisable

### Sites dynamiques (React, Next.js)
- Un composant qui rend le schema
- Rendu côté serveur pour le SEO
- Sérialiser les données en JSON-LD

### CMS / WordPress
- Extensions (Yoast, Rank Math, Schema Pro)
- Modifications du thème
- Champs personnalisés convertis en données structurées

---

## Format de sortie

### Implémentation du schema
```json
// Bloc de code JSON-LD complet
{
  "@context": "https://schema.org",
  "@type": "...",
  // Balisage complet
}
```

### Liste de contrôle des tests
- [ ] Validé par le test des résultats enrichis
- [ ] Aucune erreur ni aucun avertissement
- [ ] Conforme au contenu de la page
- [ ] Toutes les propriétés obligatoires présentes

---

## Questions spécifiques à la tâche

1. De quel type de page s'agit-il ?
2. Quels résultats enrichis espères-tu obtenir ?
3. Quelles données sont disponibles pour renseigner le schema ?
4. Un schema existe-t-il déjà sur la page ?
5. Quelle est ta stack technique ?

---

## Skills liés

- **seo-audit** : pour le SEO dans son ensemble, revue du schema comprise
- **ai-seo** : pour l'optimisation pour la recherche IA (le schema aide l'IA à comprendre le contenu)
- **programmatic-seo** : pour un schema gabaritisé à grande échelle
- **site-architecture** : pour la structure du fil d'Ariane et la planification du schema de navigation
