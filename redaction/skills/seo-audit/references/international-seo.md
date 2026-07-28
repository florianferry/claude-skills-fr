# SEO international : sources et preuves

Données détaillées étayant la section « SEO international et localisation » du skill SEO Audit. Organisées par thème avec les URL sources et les citations clés.

---

## Hreflang

### Méthodes de placement

Google accepte trois méthodes équivalentes : `<link>` HTML dans le `<head>`, headers HTTP `Link` et éléments `<xhtml:link>` dans le sitemap XML. Google a confirmé qu'aucune méthode n'est prioritaire sur les autres.

Google combine les signaux HTML et sitemap. Si la même paire langue-région pointe vers des URL différentes selon les méthodes, Google écarte cette paire plutôt que de deviner.

- [Google Search Central : versions localisées](https://developers.google.com/search/docs/specialty/international/localized-versions)
- [SEJ : Google combine les signaux hreflang](https://www.searchenginejournal.com/google-combines-hreflang-signals-from-html-sitemaps/389219/)

### Exigence de réciprocité

Documentation Google : « Si la page X pointe vers la page Y, la page Y doit pointer en retour vers la page X. Si ce n'est pas le cas, ces annotations peuvent être ignorées ou mal interprétées. »

Chaque page doit s'inclure elle-même (autoréférence) dans l'ensemble hreflang. L'absence d'autoréférence est l'erreur n° 1 détectée par les audits Semrush. Une étude portant sur 374 756 domaines a révélé que 67 % des implémentations hreflang présentaient des problèmes.

- [Google Search Central : versions localisées](https://developers.google.com/search/docs/specialty/international/localized-versions)
- [Semrush : 9 erreurs hreflang courantes](https://www.semrush.com/blog/hreflang-errors/)
- [SE Land : 31 % des sites internationaux contiennent des erreurs hreflang](https://searchengineland.com/study-31-of-international-websites-contain-hreflang-errors-395161)

### x-default

Introduit en avril 2013. Désigne la page de repli pour les utilisateurs dont la langue ou la région ne correspond à aucune variante déclarée. Peut pointer vers la même URL que l'un des alternates par langue. Doit être inclus dans l'ensemble complet des annotations sur chaque page variante.

- [Google Blog : x-default hreflang](https://developers.google.com/search/blog/2013/04/x-default-hreflang-for-international-pages)
- [Google Blog : comment x-default peut vous aider (2023)](https://developers.google.com/search/blog/2023/05/x-default)

### Codes langue et région

Langue : ISO 639-1 (2 lettres). Région : ISO 3166-1 Alpha 2 (2 lettres). Format : `langue[-script][-région]`.

Il n'est pas possible de spécifier un code région seul. Erreurs courantes : `fr-FRA` (correct : `fr-FR`), `es-419` (non conforme ISO 3166-1). Une étude a montré que 8,9 % des sites utilisant hreflang contiennent des codes de langue invalides.

- [Google Search Central : versions localisées](https://developers.google.com/search/docs/specialty/international/localized-versions)
- [SE Land : étude 31 %](https://searchengineland.com/study-31-of-international-websites-contain-hreflang-errors-395161)

### Hreflang à grande échelle (20 locales et plus)

Avec 20 locales, le hreflang HTML dans le `<head>` ajoute environ 1,5 Ko par page sans aucun bénéfice pour l'utilisateur. Le hreflang via sitemap n'a aucun impact sur les performances à l'exécution. Les éléments enfants `<xhtml:link>` ne comptent PAS dans la limite des 50 000 URL par sitemap (seuls les éléments `<loc>` comptent).

John Mueller recommande de concentrer le hreflang sur les pages recevant du trafic dans la mauvaise langue, pas sur toutes les pages : « Je ne le ferais pas sur toutes les autres pages du site, c'est tellement complexe et difficile à maintenir. »

- [SERoundtable : les éléments enfants ne comptent pas](https://www.seroundtable.com/google-child-elements-dont-count-towards-sitemap-url-limit-34377.html)
- [SERoundtable : où concentrer le hreflang](https://www.seroundtable.com/using-hreflang-34127.html)
- [Yoast : guide complet hreflang](https://yoast.com/hreflang-ultimate-guide/)

### Google vs Bing

Bing traite le hreflang comme un « signal faible ». Bing s'appuie sur la balise meta `content-language`, l'attribut HTML `lang`, les ccTLD et la localisation du serveur. Yandex supporte le hreflang comme Google.

Pour les deux moteurs : implémente le hreflang (Google / Yandex) + `<html lang="...">` + `<meta http-equiv="content-language">` (Bing).

- [Digital Ready Marketing : Bing n'utilise pas les annotations hreflang](https://digitalreadymarketing.com/bing-doesnt-use-hreflang-annotation-what-does-it-use/)
- [Yoast : guide complet hreflang](https://yoast.com/hreflang-ultimate-guide/)

---

## Canonicalisation et i18n

### Canoniques autoréférencées

Chaque page par locale doit pointer vers elle-même en canonique. John Mueller : « N'utilise pas rel=canonical entre langues ou pays, utilise-le uniquement à l'échelle d'un pays ou d'une langue. »

Documentation Google : « Indique une page canonique dans la même langue, ou la meilleure langue de substitution disponible si aucune canonique dans la même langue n'existe. »

- [John Mueller : hreflang et canonique](https://johnmu.com/hreflang-canonical/)
- [Google : consolider les URL en double](https://developers.google.com/search/docs/crawling-indexing/consolidate-duplicate-urls)

### Le canonique prime sur le hreflang

Mueller : « Si ton canonique pointe ailleurs, Google le suivra et ignorera ton annotation hreflang. » L'URL canonique doit être l'une des URL de l'ensemble hreflang, sinon tout le balisage hreflang est ignoré.

Google indique également : « Google préfère les URL appartenant aux clusters hreflang pour la canonicalisation », quand les signaux sont alignés, le hreflang renforce le choix canonique.

- [John Mueller : hreflang et canonique](https://johnmu.com/hreflang-canonical/)
- [SEJ : les tags hreflang sont des indices, pas des directives](https://www.searchenginejournal.com/google-reminds-that-hreflang-tags-are-hints-not-directives/546428/)
- [Google : consolider les URL en double](https://developers.google.com/search/docs/crawling-indexing/consolidate-duplicate-urls)

### Variantes régionales quasi identiques

Mueller (Office Hours 2023) : « Si le contenu est exactement le même et qu'on ne peut pas faire la différence, par souci de simplicité et d'expérience utilisateur, on peut n'afficher qu'une seule version, même si le hreflang est présent. »

La détection des doublons par Google s'exécute AVANT l'évaluation du hreflang. Pour que les deux versions soient indexées, il faut des différences de contenu substantielles, au-delà des seuls symboles monétaires.

- [International Web Mastery : pages en double pour la même langue](https://internationalwebmastery.com/blog/how-google-handles-canonicalization-of-same-language-duplicate-near-duplicate-pages/)
- [Google : gestion des sites multi-régionaux](https://developers.google.com/search/docs/specialty/international/managing-multi-regional-sites)

### Pagination et locales

Google : « N'utilise pas la première page d'une séquence paginée comme page canonique. Donne à chaque page sa propre URL canonique. » Chaque page paginée dans chaque locale a sa propre canonique autoréférencée. `rel="next/prev"` déprécié depuis mars 2019.

- [Google : bonnes pratiques pour la pagination](https://developers.google.com/search/docs/specialty/ecommerce/pagination-and-incremental-page-loading)

---

## Sitemaps internationaux

### Structure

Chaque entrée `<url>` inclut des alternates `<xhtml:link>` pour chaque locale. Requiert le namespace `xmlns:xhtml="http://www.w3.org/1999/xhtml"`.

Divise les sitemaps par type de contenu, pas par locale. Diviser par locale crée des problèmes de maintenance car chaque sitemap de locale doit référencer toutes les autres locales (exigence de réciprocité).

- [Google Search Central : versions localisées](https://developers.google.com/search/docs/specialty/international/localized-versions)
- [Lumar : comment Google gère le hreflang](https://www.lumar.io/office-hours/hreflang/)

### Limites de taille

50 000 URL / 50 Mo non compressé par sitemap. Seuls les éléments `<loc>` comptent dans la limite des 50 000. Mais avec 20 alternates hreflang par entrée, la limite de 50 Mo devient le goulot d'étranglement. Prévois 2 000 à 5 000 URL par sitemap si tu utilises un hreflang complet.

- [Google : créer et soumettre un sitemap](https://developers.google.com/search/docs/crawling-indexing/sitemaps/build-sitemap)
- [SERoundtable : limite de 50 000 du sitemap](https://www.seroundtable.com/google-sitemap-50-000-limit-based-on-location-urls-not-alternative-urls-33843.html)

### Soumission

Soumets l'index du sitemap dans la Search Console ET référence-le dans robots.txt. Les sitemaps enfants individuels peuvent être soumis séparément pour un reporting par sitemap.

- [Google : créer et soumettre un sitemap](https://developers.google.com/search/docs/crawling-indexing/sitemaps/build-sitemap)

### Remarque Next.js

Next.js `alternates.languages` n'inclut PAS automatiquement de `<xhtml:link>` autoréférencé pour l'URL `<loc>`. Tu dois inclure explicitement la langue de l'URL `<loc>` courante dans l'objet `languages`.

- [Next.js Docs : sitemap.xml](https://nextjs.org/docs/app/api-reference/file-conventions/metadata/sitemap)

---

## Structure des URL

### Comparaison des stratégies

Google traite les sous-répertoires et les sous-domaines de façon équivalente. Mueller : « De notre point de vue… les sous-domaines et les sous-répertoires sont fondamentalement équivalents. »

Les paramètres d'URL (`?lang=fr`) sont explicitement déconseillés dans la documentation Google.

- [Google : gestion des sites multi-régionaux](https://developers.google.com/search/docs/specialty/international/managing-multi-regional-sites)

### Langue par défaut

Mueller recommande : définir `/` comme x-default, placer chaque langue dans son propre préfixe. Sans marquer `/` comme x-default, « pour Google, `/` peut sembler être une page séparée des autres. »

- [Google Blog : x-default](https://developers.google.com/search/blog/2023/05/x-default)
- [Google Blog : créer la bonne page d'accueil](https://developers.google.com/search/blog/2014/05/creating-right-homepage-for-your)

### Négociation de contenu et redirections IP

Google déconseille fortement les pages adaptatives par locale. Googlebot explore depuis des IP américaines et n'envoie pas de headers Accept-Language. Des URL séparées + hreflang sont indispensables.

- [Google : pages adaptatives par locale](https://developers.google.com/search/docs/specialty/international/locale-adaptive-pages)

### Cohérence du slash final

Mueller : le slash final « fait partie intégrante de l'URL et la change si elle est présente ou absente. » Choisis un format pour tous les chemins de locale, les liens internes, les canoniques, le hreflang et les sitemaps.

Mueller (2025) : « La cohérence est le plus grand facteur de SEO technique. »

- [SERoundtable : la cohérence est le plus grand facteur de SEO technique](https://www.seroundtable.com/google-consistency-seo-40427.html)

### Ciblage géographique dans la Search Console

Le rapport Ciblage international est déprécié. Google s'appuie désormais entièrement sur le hreflang, l'analyse de la langue du contenu et les schémas de liens. Tu peux ajouter des propriétés de sous-répertoire pour un reporting par locale.

- [Google Support : ciblage international déprécié](https://support.google.com/webmasters/answer/12474899?hl=en)

### Modes locale des frameworks

Utilise `localePrefix: 'always'` (next-intl) ou l'équivalent. Ne masque jamais la locale dans les URL : Google a besoin d'URL uniques par langue. Le mode `'never'` désactive entièrement les liens alternates.

- [next-intl : configuration du routage](https://next-intl.dev/docs/routing/configuration)
- [Discussion Next.js #18419](https://github.com/vercel/next.js/discussions/18419)

---

## Qualité du contenu par locale

### Contenu traduit par IA (position 2025)

Google a retiré ses recommandations historiques déconseillant le contenu traduit automatiquement mi-2025. Position actuelle : « Nos politiques ne définissent pas strictement comme spam le contenu traduit par IA. » La politique d'abus de contenu à grande échelle cite la traduction comme vecteur possible, sans l'interdire.

Reddit a étendu les traductions IA à 35 langues avec la connaissance de Google. La distinction tient à l'intention et à la qualité, pas à la méthode.

- [Politiques anti-spam Google](https://developers.google.com/search/docs/essentials/spam-policies)
- [Glenn Gabe : traduction automatique du contenu](https://www.gsqi.com/marketing-blog/auto-translating-content-google-scaled-content-abuse/)
- [SE Land : traductions IA de Reddit](https://searchengineland.com/google-comments-on-reddits-use-of-ai-to-translate-its-pages-456908)

### Pages de locale légères

Google : « Les versions localisées d'une page ne sont considérées comme des doublons que si le contenu principal reste non traduit. » Les pages avec seulement le boilerplate traduit sont regroupées comme doublons.

Ne pas mettre en noindex les pages de locale indésirables (gaspille le budget de crawl). Ne pas faire de canonique croisé entre locales (entre en conflit avec le hreflang). La meilleure approche : ne pas créer de pages de locale que tu ne peux pas rendre réellement utiles.

- [Google : versions localisées](https://developers.google.com/search/docs/specialty/international/localized-versions)
- [Google : gestion du budget de crawl](https://developers.google.com/search/docs/crawling-indexing/large-site-managing-crawl-budget)

### Impact du système de contenu utile

Fusionné dans le classement principal en mars 2024. Signal à l'échelle du site : « tout contenu, pas seulement le contenu inutile, sur des sites jugés comme ayant des volumes relativement élevés de contenu inutile, a moins de chances de performer dans la recherche. »

Des pages de locale de faible qualité peuvent faire baisser l'ensemble du site. C'est l'argument le plus fort contre la création de pages de locale qui ne sont pas réellement utiles.

- [Google Blog : mise à jour du contenu utile](https://developers.google.com/search/blog/2022/08/helpful-content-update)
- [Amsive : ce qui a changé en 2024](https://www.amsive.com/insights/seo/googles-helpful-content-update-ranking-system-what-happened-and-what-changed-in-2024/)

### Traduction partielle

Google : « Traduire uniquement le texte de boilerplate de tes pages tout en conservant la majorité du contenu dans une seule langue… peut créer une mauvaise expérience utilisateur. » Google utilise le contenu visible (pas l'attribut `lang`) pour déterminer la langue de la page.

Traduis TOUT le contenu d'une page si tu crées une version pour une locale. Les métadonnées non traduites (title, description) dans la mauvaise langue réduisent le CTR.

- [Google : gestion des sites multi-régionaux](https://developers.google.com/search/docs/specialty/international/managing-multi-regional-sites)

### Budget de crawl

Problème uniquement pour les sites de 1 million de pages et plus, ou de 10 000 pages modifiées par jour. Mais les URL alternates (cibles hreflang) consomment du budget de crawl. Les liens hreflang brisés gaspillent le budget ET invalident les signaux.

- [Google : gestion du budget de crawl](https://developers.google.com/search/docs/crawling-indexing/large-site-managing-crawl-budget)
- [Google Blog : budget de crawl](https://developers.google.com/search/blog/2017/01/what-crawl-budget-means-for-googlebot)

### Signaux spécifiques à la locale

Google identifie l'audience cible via : « les adresses locales et numéros de téléphone sur les pages, l'utilisation de la langue et de la devise locales, les liens provenant d'autres sites locaux, ou les signaux de votre fiche Google Business. »

- [Google : gestion des sites multi-régionaux](https://developers.google.com/search/docs/specialty/international/managing-multi-regional-sites)
