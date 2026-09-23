# Exemples de balisage schema

Exemples JSON-LD complets pour les types de schema courants. Les clés et les valeurs d'énumération (`@type`, `dayOfWeek`, URL `https://schema.org/...`) restent en anglais : c'est le vocabulaire de schema.org, que les moteurs lisent tel quel. Seules les valeurs de contenu se rédigent en français.

## Sommaire
- Organization
- WebSite (avec SearchAction)
- Article / BlogPosting
- Product
- SoftwareApplication
- FAQPage
- HowTo
- BreadcrumbList
- LocalBusiness
- Event
- Plusieurs types de schema
- Exemple d'implémentation (Next.js)

## Organization

Pour la page d'accueil ou la page « À propos » d'une entreprise ou d'une marque.

```json
{
  "@context": "https://schema.org",
  "@type": "Organization",
  "name": "Exemple SAS",
  "url": "https://exemple.fr",
  "logo": "https://exemple.fr/logo.png",
  "sameAs": [
    "https://twitter.com/exemple",
    "https://linkedin.com/company/exemple",
    "https://facebook.com/exemple"
  ],
  "contactPoint": {
    "@type": "ContactPoint",
    "telephone": "+33-1-23-45-67-89",
    "contactType": "customer service"
  }
}
```

---

## WebSite (avec SearchAction)

Pour la page d'accueil : ouvre droit au champ de recherche dans les liens annexes.

```json
{
  "@context": "https://schema.org",
  "@type": "WebSite",
  "name": "Exemple",
  "url": "https://exemple.fr",
  "potentialAction": {
    "@type": "SearchAction",
    "target": {
      "@type": "EntryPoint",
      "urlTemplate": "https://exemple.fr/recherche?q={search_term_string}"
    },
    "query-input": "required name=search_term_string"
  }
}
```

---

## Article / BlogPosting

Pour les articles de blog et d'actualité.

```json
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "Comment implémenter le balisage schema",
  "image": "https://exemple.fr/image.jpg",
  "datePublished": "2024-01-15T08:00:00+01:00",
  "dateModified": "2024-01-20T10:00:00+01:00",
  "author": {
    "@type": "Person",
    "name": "Camille Martin",
    "url": "https://exemple.fr/auteurs/camille"
  },
  "publisher": {
    "@type": "Organization",
    "name": "Exemple SAS",
    "logo": {
      "@type": "ImageObject",
      "url": "https://exemple.fr/logo.png"
    }
  },
  "description": "Le guide complet pour implémenter le balisage schema...",
  "mainEntityOfPage": {
    "@type": "WebPage",
    "@id": "https://exemple.fr/guide-schema"
  }
}
```

---

## Product

Pour les pages produit (e-commerce ou SaaS).

```json
{
  "@context": "https://schema.org",
  "@type": "Product",
  "name": "Widget Premium",
  "image": "https://exemple.fr/widget.jpg",
  "description": "Notre widget le plus vendu, pensé pour les professionnels",
  "sku": "WIDGET-001",
  "brand": {
    "@type": "Brand",
    "name": "Exemple"
  },
  "offers": {
    "@type": "Offer",
    "url": "https://exemple.fr/produits/widget",
    "priceCurrency": "EUR",
    "price": "99.99",
    "availability": "https://schema.org/InStock",
    "priceValidUntil": "2024-12-31"
  },
  "aggregateRating": {
    "@type": "AggregateRating",
    "ratingValue": "4.8",
    "reviewCount": "127"
  }
}
```

Dans le JSON-LD, un prix ou une note s'écrit avec un point décimal (`99.99`, `4.8`), jamais avec une virgule : c'est une valeur machine, pas un texte affiché.

---

## SoftwareApplication

Pour les pages produit SaaS et les landing pages d'application.

```json
{
  "@context": "https://schema.org",
  "@type": "SoftwareApplication",
  "name": "Exemple App",
  "applicationCategory": "BusinessApplication",
  "operatingSystem": "Web, iOS, Android",
  "offers": {
    "@type": "Offer",
    "price": "0",
    "priceCurrency": "EUR"
  },
  "aggregateRating": {
    "@type": "AggregateRating",
    "ratingValue": "4.6",
    "ratingCount": "1250"
  }
}
```

---

## FAQPage

Pour les pages qui portent une foire aux questions.

```json
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    {
      "@type": "Question",
      "name": "Qu'est-ce que le balisage schema ?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "Le balisage schema est un vocabulaire de données structurées qui aide les moteurs de recherche à comprendre votre contenu..."
      }
    },
    {
      "@type": "Question",
      "name": "Comment implémenter un schema ?",
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "La méthode recommandée est le format JSON-LD, avec le script placé dans le head de la page..."
      }
    }
  ]
}
```

Les questions et les réponses sont du texte lu par un humain dans les résultats enrichis : elles suivent la typographie française et reprennent mot pour mot la FAQ visible sur la page.

---

## HowTo

Pour les contenus pédagogiques et les tutoriels.

```json
{
  "@context": "https://schema.org",
  "@type": "HowTo",
  "name": "Comment ajouter un balisage schema à son site",
  "description": "Un guide pas à pas pour implémenter un schema JSON-LD",
  "totalTime": "PT15M",
  "step": [
    {
      "@type": "HowToStep",
      "name": "Choisir le type de schema",
      "text": "Identifiez le type de schema adapté au contenu de la page...",
      "url": "https://exemple.fr/guide#etape1"
    },
    {
      "@type": "HowToStep",
      "name": "Rédiger le JSON-LD",
      "text": "Écrivez le balisage JSON-LD en suivant les spécifications de schema.org...",
      "url": "https://exemple.fr/guide#etape2"
    },
    {
      "@type": "HowToStep",
      "name": "L'ajouter à la page",
      "text": "Insérez la balise script dans la section head de la page...",
      "url": "https://exemple.fr/guide#etape3"
    }
  ]
}
```

---

## BreadcrumbList

Pour toute page dotée d'un fil d'Ariane.

```json
{
  "@context": "https://schema.org",
  "@type": "BreadcrumbList",
  "itemListElement": [
    {
      "@type": "ListItem",
      "position": 1,
      "name": "Accueil",
      "item": "https://exemple.fr"
    },
    {
      "@type": "ListItem",
      "position": 2,
      "name": "Blog",
      "item": "https://exemple.fr/blog"
    },
    {
      "@type": "ListItem",
      "position": 3,
      "name": "Guide SEO",
      "item": "https://exemple.fr/blog/guide-seo"
    }
  ]
}
```

---

## LocalBusiness

Pour les pages d'établissement d'un commerce local.

```json
{
  "@context": "https://schema.org",
  "@type": "LocalBusiness",
  "name": "Café Exemple",
  "image": "https://exemple.fr/cafe.jpg",
  "address": {
    "@type": "PostalAddress",
    "streetAddress": "12 rue de la Paix",
    "addressLocality": "Paris",
    "addressRegion": "Île-de-France",
    "postalCode": "75002",
    "addressCountry": "FR"
  },
  "geo": {
    "@type": "GeoCoordinates",
    "latitude": "48.8686",
    "longitude": "2.3316"
  },
  "telephone": "+33-1-23-45-67-89",
  "openingHoursSpecification": [
    {
      "@type": "OpeningHoursSpecification",
      "dayOfWeek": ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"],
      "opens": "08:00",
      "closes": "18:00"
    }
  ],
  "priceRange": "€€"
}
```

---

## Event

Pour les pages d'événement, de webinaire ou de conférence.

```json
{
  "@context": "https://schema.org",
  "@type": "Event",
  "name": "Conférence marketing annuelle",
  "startDate": "2024-06-15T09:00:00+02:00",
  "endDate": "2024-06-15T17:00:00+02:00",
  "eventAttendanceMode": "https://schema.org/OnlineEventAttendanceMode",
  "eventStatus": "https://schema.org/EventScheduled",
  "location": {
    "@type": "VirtualLocation",
    "url": "https://exemple.fr/conference"
  },
  "image": "https://exemple.fr/conference.jpg",
  "description": "Rejoignez-nous pour notre conférence marketing annuelle...",
  "offers": {
    "@type": "Offer",
    "url": "https://exemple.fr/conference/billets",
    "price": "199",
    "priceCurrency": "EUR",
    "availability": "https://schema.org/InStock",
    "validFrom": "2024-01-01"
  },
  "performer": {
    "@type": "Organization",
    "name": "Exemple SAS"
  },
  "organizer": {
    "@type": "Organization",
    "name": "Exemple SAS",
    "url": "https://exemple.fr"
  }
}
```

---

## Plusieurs types de schema

Combiner plusieurs types de schema avec @graph.

```json
{
  "@context": "https://schema.org",
  "@graph": [
    {
      "@type": "Organization",
      "@id": "https://exemple.fr/#organization",
      "name": "Exemple SAS",
      "url": "https://exemple.fr"
    },
    {
      "@type": "WebSite",
      "@id": "https://exemple.fr/#website",
      "url": "https://exemple.fr",
      "name": "Exemple",
      "publisher": {
        "@id": "https://exemple.fr/#organization"
      }
    },
    {
      "@type": "BreadcrumbList",
      "itemListElement": [...]
    }
  ]
}
```

---

## Exemple d'implémentation (Next.js)

```jsx
export default function ProductPage({ product }) {
  const schema = {
    "@context": "https://schema.org",
    "@type": "Product",
    name: product.name,
    // ... autres propriétés
  };

  return (
    <>
      <Head>
        <script
          type="application/ld+json"
          dangerouslySetInnerHTML={{ __html: JSON.stringify(schema) }}
        />
      </Head>
      {/* Contenu de la page */}
    </>
  );
}
```
