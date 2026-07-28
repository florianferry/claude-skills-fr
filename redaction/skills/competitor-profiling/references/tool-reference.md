# Référence des outils MCP pour l’analyse concurrentielle

Référence rapide des outils MCP Firecrawl et DataForSEO utilisés dans l’analyse concurrentielle.

## Sommaire
- Outils Firecrawl (exploration des sites)
- Outils DataForSEO (données SEO et marché)
- Ordre d’exécution recommandé
- Gestion des erreurs

---

## Outils Firecrawl

### firecrawl_map
**Objectif** : découvrir toutes les URLs d’un site concurrent pour repérer les pages clés.
**Quand l’utiliser** : première étape pour chaque concurrent, avant de scraper les pages individuelles.
**Sortie principale** : liste d’URLs avec leurs types / chemins de page.
**Astuce** : cherche les chemins contenant `/tarifs`, `/pricing`, `/fonctionnalites`, `/features`, `/a-propos`, `/about`, `/clients`, `/integrations`, `/blog`, `/changelog`.

### firecrawl_scrape
**Objectif** : extraire le contenu d’une page en markdown propre.
**Quand l’utiliser** : après la cartographie, scrape chaque page clé individuellement.
**Sortie principale** : contenu de la page en markdown (titres, corps de texte, données structurées).
**Astuce** : commence par la page d’accueil ; elle révèle d’emblée le positionnement, l’audience et les preuves sociales.

### firecrawl_search
**Objectif** : chercher sur le web du contenu spécifique à un concurrent.
**Quand l’utiliser** : pour trouver des pages d’avis, des articles de presse ou des mentions du concurrent qui ne figurent pas sur son propre site.
**Exemples de requêtes** :
- `"[Nom du concurrent]" site:g2.com`
- `"[Nom du concurrent]" avis`
- `"[Nom du concurrent]" levée de fonds OR financement`

### firecrawl_crawl
**Objectif** : explorer plusieurs pages d’un site en une seule opération.
**Quand l’utiliser** : pour les profils complets où tu veux analyser de nombreuses pages (toutes les pages de fonctionnalités, tous les articles de blog). Plus coûteux : à utiliser avec discernement.
**Astuce** : fixe des limites de pages pour ne pas crawler des sites entiers. Cible des patterns d’URL précis.

### firecrawl_extract
**Objectif** : extraire des données structurées d’une page à partir d’un schéma.
**Quand l’utiliser** : quand tu as besoin de points de données précis dans un format cohérent (ex. : détails des formules tarifaires, listes de fonctionnalités).
**Astuce** : définis un schéma clair pour ce que tu veux extraire : plus fiable que de parser du markdown brut.

---

## Outils MCP DataForSEO

### Intelligence au niveau domaine

#### backlinks_summary
**Objectif** : obtenir l’autorité de domaine, le total de backlinks, les domaines référents, le score de spam.
**Entrée** : domaine cible (ex. : `concurrent.com`)
**Métriques clés** : `domain_rank`, `total_backlinks`, `referring_domains`, `backlinks_spam_score`

#### backlinks_referring_domains
**Objectif** : lister les principaux domaines référents pour identifier l’origine du jus de lien.
**Entrée** : domaine cible + limite
**Métriques clés** : par domaine : `rank`, `backlinks`, nom de `domain`

#### dataforseo_labs_google_domain_rank_overview
**Objectif** : vue d’ensemble de la recherche organique : trafic, mots-clés, valeur du trafic.
**Entrée** : domaine cible
**Métriques clés** : `organic_count` (mots-clés), `organic_traffic` (mensuel estimé), `organic_cost` (valeur du trafic en €)

#### dataforseo_labs_google_ranked_keywords
**Objectif** : mots-clés sur lesquels un domaine est positionné, avec leurs positions.
**Entrée** : domaine cible
**Métriques clés** : par mot-clé : `keyword`, `position`, `search_volume`, `url` (page positionnée)
**Astuce** : trie par trafic pour identifier leurs mots-clés à plus forte valeur.

#### dataforseo_labs_google_keywords_for_site
**Objectif** : mots-clés pertinents pour un domaine : plus large que les mots-clés positionnés, inclut des opportunités.
**Entrée** : domaine cible
**Métriques clés** : `keyword`, `search_volume`, `competition`, `cpc`

### Analyse concurrentielle

#### dataforseo_labs_google_competitors_domain
**Objectif** : trouver les concurrents organiques les plus proches par chevauchement de mots-clés.
**Entrée** : domaine cible
**Métriques clés** : `domain`, `avg_position`, `intersections` (mots-clés partagés), `full_domain_rank`
**Astuce** : peut révéler des concurrents que l’utilisateur n’avait pas identifiés.

#### dataforseo_labs_google_domain_intersection
**Objectif** : trouver les mots-clés sur lesquels deux domaines sont tous les deux positionnés : mesure la concurrence directe.
**Entrée** : deux domaines cibles
**Métriques clés** : `keyword`, position de chaque domaine, `search_volume`
**Astuce** : utilise cet outil pour comparer le domaine de l’utilisateur avec chaque concurrent.

#### dataforseo_labs_google_relevant_pages
**Objectif** : trouver les pages les plus importantes d’un domaine par trafic organique.
**Entrée** : domaine cible
**Métriques clés** : `page`, `metrics` (trafic, mots-clés par page)
**Astuce** : révèle la stratégie de contenu : quelles pages génèrent le plus de valeur.

### Détection technologique

#### domain_analytics_technologies_domain_technologies
**Objectif** : détecter le stack technologique utilisé par un domaine.
**Entrée** : domaine cible
**Métriques clés** : technologies regroupées par catégorie (CMS, analytics, marketing, paiements, etc.)

### Analyse approfondie des backlinks

#### backlinks_backlinks
**Objectif** : lister les backlinks individuels pointant vers un domaine.
**Entrée** : domaine cible + limite
**Métriques clés** : `url_from`, `url_to`, `anchor`, `domain_from_rank`, `is_new`

#### backlinks_bulk_ranks
**Objectif** : comparer les scores d’autorité de plusieurs domaines en une seule fois.
**Entrée** : tableau de domaines cibles
**Métriques clés** : `domain_rank` par domaine
**Astuce** : à utiliser pour le tableau de synthèse comparative.

---

## Ordre d’exécution recommandé

### Analyse rapide (par concurrent)

```
1. firecrawl_map → obtenir les URLs du site
2. En parallèle :
   a. firecrawl_scrape → page d'accueil
   b. firecrawl_scrape → page tarifs
   c. dataforseo_labs_google_domain_rank_overview → métriques organiques
   d. backlinks_summary → autorité de domaine
3. Synthétiser en profil abrégé
```

### Profil complet (par concurrent)

```
1. firecrawl_map → obtenir les URLs du site
2. En parallèle (lot 1 : scraping) :
   a. firecrawl_scrape → page d'accueil
   b. firecrawl_scrape → page tarifs
   c. firecrawl_scrape → page(s) fonctionnalités
   d. firecrawl_scrape → page à propos
   e. firecrawl_scrape → page clients / études de cas
   f. firecrawl_scrape → page intégrations
3. En parallèle (lot 2 : données SEO) :
   a. dataforseo_labs_google_domain_rank_overview
   b. dataforseo_labs_google_ranked_keywords
   c. backlinks_summary
   d. backlinks_referring_domains
   e. dataforseo_labs_google_relevant_pages
   f. dataforseo_labs_google_competitors_domain
4. En parallèle (lot 3 : extras optionnels) :
   a. domain_analytics_technologies_domain_technologies
   b. firecrawl_search → avis G2 / Capterra
   c. dataforseo_labs_google_domain_intersection (vs. domaine de l'utilisateur)
5. Synthétiser en profil complet
```

### Multi-concurrents (3 concurrents ou plus)

```
1. Cartographier tous les sites en parallèle
2. Scraper toutes les pages d'accueil en parallèle, puis toutes les pages tarifs en parallèle
3. Tirer le domain_rank_overview pour tous en parallèle
4. Tirer les backlinks_bulk_ranks pour tous en une seule fois
5. Construire les profils en séquence (la synthèse exige de la concentration)
6. Construire la synthèse comparative en dernier
```

---

## Gestion des erreurs

| Problème | Action |
|----------|--------|
| Le scraping Firecrawl renvoie un résultat vide ou bloqué | Essaye avec `firecrawl_browser_create` pour les sites très chargés en JavaScript |
| Page tarifs introuvable dans la carte | Cherche `/tarifs`, `/pricing`, `/offres`, `/abonnements`, certains sites utilisent des chemins différents |
| DataForSEO ne renvoie aucune donnée pour le domaine | Le domaine est peut-être trop récent ou trop petit, note « données insuffisantes » dans le profil |
| Limites de requêtes atteintes | Espace les appels ; priorise les données à plus forte valeur en premier |
| Scraping des pages d’avis bloqué | Utilise `firecrawl_search` pour trouver des sources d’avis alternatives ou en cache |
