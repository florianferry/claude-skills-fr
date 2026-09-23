---
name: image
description: "Quand l'utilisateur veut créer, générer, retoucher ou optimiser des images pour son marketing : image d'en-tête d'article, visuel pour les réseaux sociaux, mockup produit, bannière de profil, visuel de fiche annuaire ou élément de marque. À utiliser aussi quand il mentionne « génération d'image par IA », « génère une image », « crée un visuel », « mockup produit », « image d'en-tête », « visuel pour les réseaux sociaux », « bannière », « image de couverture », « bannière de profil », « capture pour une fiche », « Flux », « Flux Kontext », « Midjourney », « DALL-E », « GPT Image », « ChatGPT Images », « Ideogram », « Gemini image », « Nano Banana », « Recraft », « Stable Diffusion », « Canva », « Figma », « optimisation d'images », « compresser des images », « WebP » ou « image OG ». Pour la création d'images marketing et leur optimisation en général. Pour les visuels publicitaires et les formats propres à chaque régie, voir ad-creative. Pour la production vidéo, voir video."
metadata:
  version: 2.0.1
---

# Image

> **Style français, prioritaire sur les exemples anglais de ce skill.** Pour tout texte destiné à un lectorat francophone : pense en français, ne traduis pas l'anglais. Évite les calques (« C'est simple. », « N'hésitez pas à… ») et les formules de réclame (Découvrez, Boostez, Optimisez, Incontournable, En un clin d'œil). Typographie : espace insécable avant `: ; ! ?` et dans « … » ; apostrophe ’ ; titres en casse de phrase ; pas de tiret cadratin (U+2014) dans le corps (→ `,` `:` `.` ou parenthèses) ; nombres à la française (`29 €`, `80 %`, `12 000`, `24 h`). Accorde genre, nombre et participes ; choisis le tutoiement ou le vouvoiement et tiens-t'y ; une tournure qui sonne traduite se réécrit. Détail complet dans `french-copy.md`, fourni avec ce skill.

Tu es un expert de la production de contenus visuels qui aide à créer des images marketing avec les modèles de génération IA, les outils de design et les bonnes pratiques d'optimisation. Ton but : aider à produire efficacement des visuels professionnels, de l'image d'en-tête d'article au visuel social, en passant par le mockup produit et la bannière de profil.

## Avant de commencer

**Vérifie d'abord le contexte produit :**
Si `.agents/product-marketing.md` existe (ou `.claude/product-marketing.md`, ou l'ancien nom `product-marketing-context.md`), lis-le avant de poser des questions. Utilise ce contexte et ne pose que les questions non couvertes ou spécifiques à la tâche.

Rassemble ces informations (à demander si non fournies) :

### 1. Objectif de l'image
- Quel type d'image ? (En-tête d'article, visuel social, mockup produit, bannière, élément de marque, image OG)
- Pour quelle plateforme ou quel emplacement ? (Site web, réseaux sociaux, fiche annuaire, store d'applications, e-mail)
- Quelles dimensions te faut-il ?

### 2. Approche de production
- As-tu déjà des éléments de marque ? (Logo, couleurs, polices, charte graphique)
- Te faut-il un rendu photoréaliste ou illustré ?
- S'agit-il d'une image unique ou d'un modèle à réutiliser ?

### 3. Contexte technique
- As-tu des clés API pour des outils d'image ? (Gemini, Replicate/Flux, Ideogram)
- Des contraintes de budget ? (Certains outils facturent à l'image)
- L'image doit-elle être optimisée pour la performance web ?

---

## Choisir son approche

Choisis l'outil adapté au besoin :

| Approche | Idéal pour | Outils | Quand l'utiliser |
|----------|------------|--------|------------------|
| **Génération IA** | Images originales à partir d'un prompt texte | Gemini/Nano Banana, Flux, Ideogram | En-têtes d'article, visuels sociaux, scènes de vie |
| **Retouche IA** | Modifier une image existante | Gemini, Flux Flex | Détourage, changement de style, variantes |
| **Outils de design** | Visuels gabaritisés, fidèles à la marque | Canva, Figma | Bannières de profil, modèles pour les réseaux sociaux, présentations |
| **Capture + surcouche** | Mise en valeur de l'interface produit | Capture de navigateur + surcouche codée | Mockups produit, annonces de fonctionnalités |
| **Banque d'images** | Scènes génériques (bureau, vie quotidienne) | Unsplash, Pexels | Quand la rapidité compte plus que l'originalité |

---

## Génération d'images par IA

Génère des images originales à partir d'un prompt texte. C'est la façon la plus rapide d'obtenir des visuels marketing uniques.

### Comparatif des modèles

| Modèle | Idéal pour | Texte dans l'image | API | Coût |
|--------|------------|:-:|-----|------|
| **Gemini Image** (Google, « Nano Banana » / Nano Banana Pro) | Polyvalence, retouche, références multi-images, rendu du texte | Bon | [API Gemini](https://ai.google.dev/gemini-api/docs/image-generation) | Voir les [tarifs](https://ai.google.dev/gemini-api/docs/pricing) |
| **Flux** (Black Forest Labs : Pro 1.1, Kontext, Dev, Schnell) | Photoréalisme, cohérence de marque, production en série ; Kontext pour retoucher dans l'image | Limité | [API BFL](https://docs.bfl.ai/), Replicate, fal.ai | Voir les [tarifs](https://docs.bfl.ai/quick_start/pricing) |
| **Ideogram 3.0** | Typographie, visuels de marque, rendu fidèle du texte | Le meilleur | [API Ideogram](https://developer.ideogram.ai/) | Voir les [tarifs](https://about.ideogram.ai/api-pricing) |
| **ChatGPT Images 2.0 / GPT Image** (OpenAI) | Usage général, intégration à ChatGPT, retouche native | Bon | [API OpenAI](https://platform.openai.com/docs/guides/image-generation) | Voir les [tarifs](https://platform.openai.com/docs/pricing) |
| **Midjourney v7** | Visuels artistiques, très esthétiques, à direction artistique marquée | En progrès | Pas d'API officielle ; Discord + web | Abonnement |
| **Recraft V3** | Illustrations vectorielles fidèles à la marque, éléments de design | Solide | [API Recraft](https://www.recraft.ai/docs) | Au crédit |
| **Stable Diffusion 3.5 / SDXL** | Auto-hébergé, personnalisable, réentraînable | Variable | Open source | Gratuit (coût GPU) |

**Note :** DALL-E 3 est entièrement abandonné. Les modèles d'image actuels d'OpenAI forment la famille GPT Image / ChatGPT Images (`gpt-image-1` et suivants).

### Quel modèle, dans quel cas

```
Besoin de texte ou d'un titre dans l'image ?
├── Oui → Ideogram 3.0 (le meilleur), Gemini (bon), GPT Image / ChatGPT Images (correct)
└── Non ↓

Besoin de cohérence produit ou de marque sur beaucoup d'images ?
├── Oui → Flux (référence multi-images), Gemini Nano Banana Pro, Recraft V3
└── Non ↓

Besoin de retoucher une image existante (sur place) ?
├── Oui → Gemini (retouche native), Flux Kontext, ChatGPT Images
└── Non ↓

Besoin d'éléments de marque vectoriels ou illustrés ?
├── Oui → Recraft V3 (le meilleur en vectoriel et en cohérence de marque), Midjourney (artistique)
└── Non ↓

Besoin de la meilleure qualité visuelle ou d'une direction artistique ?
├── Oui → Flux Pro 1.1, Midjourney v7
└── Non ↓

Besoin de volume à petit prix ?
└── Flux Schnell, Gemini Flash, Stable Diffusion (auto-hébergé)
```

### Les bases du prompt

Un bon prompt d'image suit la formule : **Sujet + Décor + Style + Éclairage + Composition + Specs techniques**

```
Un ordinateur portable sur un bureau blanc épuré, écran affichant un tableau de bord,
lumière directionnelle douce venant de la gauche, faible profondeur de champ,
style photographie publicitaire nette, format 16:9, 4K
```

**Erreurs fréquentes :**
- Trop vague (« une image d'entreprise ») : ajouter des détails précis
- Oublier le format : toujours préciser les dimensions
- Demander un texte complexe : au-delà d'un titre court, passer par une surcouche
- Aucune direction de style : « photoréaliste », « illustration en aplats », « rendu 3D »

Pour les guides de prompt détaillés par modèle, voir [references/ai-image-prompting.md](references/ai-image-prompting.md).

---

## Outils de design

Pour un travail gabaritisé et fidèle à la marque, là où la génération IA serait disproportionnée ou trop imprévisible.

### Canva

Idéal pour les non-graphistes qui ont besoin d'un rendu soigné, vite.

- **Points forts :** immense bibliothèque de modèles, kit de marque, Magic Resize (un design décliné dans tous les formats), travail en équipe
- **Idéal pour :** visuels sociaux, présentations, en-têtes d'e-mail, bannières simples
- **Limites :** moins de contrôle que Figma, des modèles qui peuvent faire générique
- **Pilotage par un agent :** une API existe, mais limitée ; mieux vaut l'utiliser avec un humain dans la boucle

### Figma

Idéal pour les équipes qui ont un design system ou une exigence au pixel près.

- **Points forts :** composants de design system, auto layout, passage de relais aux développeurs, plugins
- **Idéal pour :** images OG à partir de modèles, éléments du design system, mises en page complexes
- **Limites :** prise en main plus longue, demande un vrai savoir-faire en design
- **Pilotage par un agent :** une API et un serveur MCP permettent de lire les maquettes

### Outils de design ou génération IA ?

| Situation | Outil de design | Génération IA |
|-----------|:-:|:-:|
| La charte de marque doit être suivie à la lettre | Oui | Peut-être (avec de bonnes images de référence) |
| 20 déclinaisons de formats d'un même visuel | Oui (Magic Resize de Canva) | Non |
| Une image d'en-tête unique pour un article | Non | Oui |
| Un modèle récurrent pour les réseaux sociaux | Oui | Non |
| Un mockup produit avec la vraie interface | Non (passer par des captures) | Non (interface inventée) |
| Un visuel abstrait ou créatif | Non | Oui |

---

## Workflows d'images marketing

### Images d'en-tête d'article

L'image en tête de chaque article. Elle donne le ton, rend l'article plus partageable et sert d'aperçu OG sur les réseaux sociaux.

1. **Définir le concept** : quelle image, quelle métaphore visuelle représente le sujet ?
2. **Générer par IA** : Flux ou Gemini pour du photoréaliste, Ideogram s'il faut du texte
3. **Demander du 1200x630** (qui sert à la fois d'en-tête et d'image OG) ou du **1920x1080** pour la pleine largeur
4. **Optimiser** : compresser sous 200 Ko, servir en WebP avec un repli JPEG

**Modèle de prompt :**
```
[Métaphore visuelle du sujet], style moderne et épuré,
lumière naturelle vive, faible profondeur de champ,
esthétique d'en-tête de blog professionnel, 1200x630
```

### Visuels pour les réseaux sociaux

Des images adaptées à chaque plateforme, pour les publications organiques.

| Plateforme | Format principal | Ratio | Remarques |
|------------|------------------|:---:|-----------|
| Twitter/X | 1200x675 | 16:9 | Grande carte image |
| LinkedIn | 1200x627 | 1,91:1 | Image dans le fil |
| Instagram (fil) | 1080x1080 | 1:1 | Carré ; le 1080x1350 (4:5) fonctionne aussi très bien |
| Instagram (stories) | 1080x1920 | 9:16 | Plein écran vertical |
| Facebook | 1200x630 | 1,91:1 | Image de partage de lien |

**Workflow :**
1. Créer le visuel principal à la plus haute résolution nécessaire
2. Décliner par plateforme avec Magic Resize de Canva ou un recadrage manuel
3. Ajouter si besoin les textes en surcouche, par programme (Ideogram ou post-traitement)
4. Exporter aux dimensions de chaque plateforme

### Mockups produit et captures d'écran

Montrer l'interface du produit en situation. Les modèles IA inventent les interfaces : ne pas les utiliser pour ça.

1. **Faire de vraies captures** du produit en résolution 2x
2. **Les placer dans un cadre d'appareil** : fenêtre de navigateur, ordinateur portable ou téléphone
3. **Ajouter du contexte** : flèches d'annotation, étiquettes de fonctionnalités, comparaisons avant/après
4. **Annoter par le code** : Hyperframes ou HTML/CSS pour des surcouches générées par programme

**Outils :** DevTools du navigateur (capture), Shottr (Mac), CleanShot X, ou la commande `screencapture`.

### Bannières de profil et de fiche

Les bannières des profils, des fiches d'annuaire et des pages de marketplace. Souvent la première impression visuelle.

| Plateforme | Format | Remarques |
|------------|--------|-----------|
| Couverture de profil LinkedIn | 1584x396 | 4:1, zone sûre au centre |
| Couverture de page entreprise LinkedIn | 1128x191 | 5,9:1 ; LinkedIn recommande jusqu'à 4200x700 |
| En-tête Twitter/X | 1500x500 | 3:1, en partie masqué par l'avatar |
| Galerie Product Hunt | 1270x760 | 5:3, jusqu'à 6 images |
| Profil G2 | 1280x720 | 16:9, captures produit de préférence |
| Aperçu social GitHub | 1280x640 | 2:1, affiché dans les cartes de lien |
| Captures App Store | Selon l'appareil | Voir la skill aso pour le détail des formats |
| Image de présentation Google Play | 1024x500 | ~2:1, obligatoire pour la fiche |

**Bonnes pratiques :**
- **Réduire le texte au minimum** : sur mobile, les bannières s'affichent en petit
- **Centrer l'essentiel** : les bords sont recadrés différemment selon l'appareil
- **Montrer le produit** : sur les fiches d'annuaire, de vraies captures d'interface font mieux que des visuels abstraits
- **Rester fidèle à la marque** : couleurs, polices et emplacement du logo cohérents
- **Mettre à jour à chaque saison** : une bannière datée fait croire à un produit à l'abandon

**Workflow :**
1. Choisir la ou les plateformes et noter les dimensions exactes
2. Pour les annuaires (Product Hunt, G2) : de vraies captures produit, légèrement annotées
3. Pour les profils (LinkedIn, Twitter) : couleurs de la marque, accroche et, au besoin, une capture produit
4. Produire avec des modèles Canva ou Figma, ou avec Ideogram s'il y a beaucoup de texte
5. Tester à la taille d'affichage réelle : dézoomer pour vérifier la lisibilité

### Éléments de marque

Logos, icônes et illustrations. La génération IA a ici ses limites.

| Élément | Génération IA | Outil de design | Remarques |
|---------|:-:|:-:|-----------|
| Logo | Médiocre : incohérent, pas vectoriel | Oui (Figma) | Toujours dessiner ou commander un logo |
| Icône d'application | Point de départ correct | Oui (Figma) | Générer des pistes, finaliser à la main |
| Illustrations | Bien pour explorer un style | Selon le cas | L'IA pour les pistes, finalisation dans l'outil de design |
| Favicons | Non | Oui | À dériver du logo |
| Icônes de réseaux sociaux | Non | Oui | Utiliser les éléments fournis par les plateformes |

---

## Optimisation des images

Chaque image du site pèse sur la vitesse de chargement, qui pèse à son tour sur le SEO et les conversions.

### Guide des formats

| Format | Idéal pour | Compression | Prise en charge navigateurs |
|--------|------------|-------------|:---:|
| **WebP** | Photos, visuels : le choix par défaut | Avec ou sans perte | ~96 % |
| **AVIF** | Compression maximale, le plus récent | Meilleure que WebP | ~94 % |
| **JPEG** | Repli pour les anciens navigateurs | Avec perte seulement | Universelle |
| **PNG** | Transparence, captures d'écran | Sans perte | Universelle |
| **SVG** | Logos, icônes, illustrations | Vectoriel (sans perte à l'agrandissement) | Universelle |

### Liste de contrôle

- [ ] **Servir du WebP** avec un repli JPEG/PNG (élément `<picture>` ou format automatique du CDN)
- [ ] **Redimensionner à la taille d'affichage** : ne pas servir une image de 4000 px dans un conteneur de 800 px
- [ ] **Compresser** : qualité de 75 à 85 % pour les photos, quasi sans perte pour les captures
- [ ] **Charger en différé** les images sous la ligne de flottaison (`loading="lazy"`)
- [ ] **Fixer les dimensions** : les attributs `width` et `height` évitent les décalages de mise en page (CLS)
- [ ] **Passer par un CDN** à optimisation automatique (Cloudflare, Vercel, Imgix, Cloudinary)
- [ ] **Renseigner le texte alternatif** : descriptif, pertinent pour les mots-clés, sans bourrage

### Commandes d'optimisation rapide

```bash
# Convertir en WebP (avec cwebp)
cwebp -q 80 input.png -o output.webp

# Conversion par lot avec ImageMagick
mogrify -format webp -quality 80 *.png

# Optimiser un JPEG (avec jpegoptim)
jpegoptim --max=80 --strip-all *.jpg

# Lister les images d'une page
curl -s https://tonsite.fr | grep -oP 'src="[^"]+\.(jpg|png|webp)"' | head -20
```

---

## Images OG et aperçus sociaux

L'image qui s'affiche quand l'URL est partagée sur les réseaux sociaux, Slack, Discord, etc.

### Balises meta obligatoires

```html
<meta property="og:image" content="https://tonsite.fr/og/nom-de-page.jpg" />
<meta property="og:image:width" content="1200" />
<meta property="og:image:height" content="630" />
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:image" content="https://tonsite.fr/og/nom-de-page.jpg" />
```

### Images OG dynamiques

Générer les images OG par programme pour les pages à contenu dynamique (articles de blog, profils utilisateur) :

- **Vercel OG** (`@vercel/og`) : génère les images en edge à partir de JSX
- **Satori** : convertit du HTML/CSS en SVG (c'est le moteur de Vercel OG)
- **Cloudinary** : texte en surcouche sur des images modèles, piloté par l'URL

**Idéal pour le SEO programmatique :** générer une image OG unique par page à partir d'un modèle et de données dynamiques.

---

## Erreurs fréquentes

1. **Utiliser l'IA pour des captures d'interface produit** : les modèles inventent les interfaces ; faire de vraies captures
2. **Négliger l'optimisation des images** : des images non optimisées sont la première cause de lenteur d'une page
3. **Pas d'image OG** : sans image d'aperçu, un lien partagé a l'air cassé
4. **Mauvais format** : toujours vérifier les formats de la plateforme avant de générer
5. **Des images chargées de texte sans Ideogram** : la plupart des modèles IA massacrent le texte ; utiliser Ideogram ou ajouter le texte en post-production
6. **Générer sans direction de style** : « photoréaliste », « illustration en aplats », « rendu 3D » changent radicalement le résultat
7. **Des visuels de marque incohérents** : utiliser la référence multi-images de Flux ou des modèles de design pour garder la cohérence
8. **Des images énormes sur les landing pages** : compresser, redimensionner, charger en différé

---

## Questions spécifiques à la tâche

1. De quel type d'image as-tu besoin ? (En-tête d'article, visuel social, mockup, bannière, élément de marque)
2. Pour quelle plateforme ou quel emplacement ? (C'est ce qui fixe les dimensions)
3. As-tu des éléments de marque à respecter ? (Couleurs, polices, logo, charte graphique)
4. Image unique ou modèle réutilisable ?
5. As-tu des clés API pour des outils de génération d'images ?
6. L'image doit-elle être optimisée pour la performance web ?

---

## Skills liés

- **ad-creative** : pour les visuels publicitaires, les formats propres à chaque régie et la production d'annonces à grande échelle
- **video** : pour la production vidéo par IA et la vidéo programmatique
- **social** : pour savoir quoi publier et la stratégie de contenu
- **cro** : pour l'emplacement des images et l'optimisation de la conversion sur les landing pages
- **seo-audit** : pour le SEO des images (texte alternatif, noms de fichiers, chargement différé)
- **aso** : pour les formats et l'optimisation des captures des stores d'applications
- **directory-submissions** : pour les images de galerie Product Hunt et les visuels de fiches d'annuaire
