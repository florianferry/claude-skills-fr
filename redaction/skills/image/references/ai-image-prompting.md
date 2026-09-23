# Guide de prompt pour l'image IA

Comment rédiger des prompts efficaces pour les modèles de génération d'images (Gemini/Nano Banana, Flux, Ideogram, DALL-E, Midjourney).

---

## Structure d'un prompt

Un bon prompt d'image suit cette formule :

```
[Sujet] + [Décor/contexte] + [Style visuel] + [Éclairage] + [Composition] + [Specs techniques]
```

### Exemples de prompts par cas d'usage

**En-tête d'article, produit SaaS :**
```
Un espace de travail épuré avec un ordinateur portable affichant un tableau de bord analytique coloré,
bureau minimaliste avec une tasse de café et un carnet,
lumière naturelle vive venant d'une fenêtre à droite,
faible profondeur de champ, style photographie publicitaire,
1200x630, haute résolution
```

**Visuel pour les réseaux sociaux, annonce :**
```
Dégradé abstrait et fluide en violet profond et bleu électrique,
formes géométriques dessinant un réseau,
éclairage de contour dramatique sur les bords,
esthétique tech moderne, nette et minimaliste,
1080x1080, couleurs vives
```

**Photo produit en situation :**
```
Une personne dans un bureau moderne qui sourit en regardant une tablette,
l'écran affiche une interface de gestion de projet,
photographie chaleureuse prise sur le vif, lumière naturelle,
plan moyen, faible profondeur de champ, style éditorial
```

**Bannière de profil, professionnelle :**
```
Large fond abstrait panoramique en bleu marine et bleu canard,
trame géométrique discrète avec un dégradé doux,
esthétique corporate épurée, lumière tamisée,
1584x396, sans texte, espace réservé au logo sur le tiers gauche
```

**Fiche d'annuaire, Product Hunt :**
```
Capture du produit sur un fond dégradé épuré,
ombre douce en dessous, légère inclinaison en perspective 3D,
style de présentation de produit SaaS moderne,
1270x760, lumineux et professionnel
```

---

## Mots-clés de style

### Photoréaliste
- « photographie publicitaire »
- « pris avec un Canon EOS R5 »
- « style éditorial »
- « lumière naturelle »
- « faible profondeur de champ »

### Épuré, corporate
- « esthétique moderne et épurée »
- « design minimaliste »
- « style corporate professionnel »
- « lumineux et aéré »
- « fond blanc »

### Illustré
- « illustration vectorielle en aplats »
- « rendu 3D isométrique »
- « style croquis dessiné à la main »
- « illustration à l'aquarelle »
- « dessin au trait »

### Abstrait, marque
- « dégradé fluide »
- « motif géométrique »
- « visualisation de données abstraite »
- « effets de particules »
- « holographique irisé »

### Tech, SaaS
- « esthétique d'interface en mode sombre »
- « éclairage d'accent néon »
- « glassmorphism »
- « minimalisme futuriste »
- « pensé pour les développeurs »

---

## Mots-clés d'éclairage

| Terme | Effet | Idéal pour |
|-------|-------|------------|
| **Lumière naturelle** | Rendu chaleureux, organique | Scènes de vie, éditorial |
| **Éclairage studio** | Homogène, maîtrisé | Photos produit |
| **Éclairage de contour** | Bords soulignés, effet dramatique | Images d'en-tête, abstrait |
| **Lumière directionnelle douce** | Ombres légères, relief | En-têtes de blog |
| **Volumétrique** | Rayons lumineux, atmosphère | Dramatique, cinématique |
| **Plat, homogène** | Pas d'ombres, net | Icônes, schémas |
| **Heure dorée** | Tons orangés chauds | Scènes de vie, extérieur |
| **High key** | Lumineux, ombres minimales | Épuré, corporate |

---

## Mots-clés de composition

| Terme | Effet | Idéal pour |
|-------|-------|------------|
| **Règle des tiers** | Sujet décentré | Éditorial, scènes de vie |
| **Centré** | Sujet au milieu | Photos produit, icônes |
| **Large, panoramique** | Vue étendue | Bannières, en-têtes |
| **Gros plan, macro** | Accent sur le détail | Textures, détails produit |
| **Vue plongeante, du dessus** | Vue en surplomb | Bureaux, mises à plat |
| **Espace négatif** | Place pour un texte en surcouche | En-têtes de blog, bannières |
| **Symétrique** | Équilibré, formel | Corporate, luxe |

---

## Conseils par modèle

### Gemini Image (Google)

- Le plus polyvalent pour les images marketing : bonne qualité, coût raisonnable
- Gère la **retouche d'image** : on importe une image existante et on décrit les changements
- Rendu du texte correct : tient un titre court
- Préciser « haute résolution » pour un meilleur résultat
- Répond bien aux prompts détaillés et descriptifs
- Même API que la génération de texte : facile à intégrer

### Flux (Black Forest Labs)

- La **référence multi-images** est l'atout majeur : on importe des captures produit, des éléments de marque ou des références de style
- Le meilleur pour la **cohérence de marque** sur une série d'images
- Flux Pro pour les visuels définitifs, Flux Dev pour itérer vite
- Flux Klein pour la génération en grand volume (le moins cher)
- Le transfert de style par images de référence l'emporte sur les mots-clés de style dans le prompt
- Les prompts peuvent être plus courts qu'avec les autres modèles : les références font le gros du travail

### Ideogram

- **Le meilleur rendu du texte** de tous les modèles (la précision de référence du marché)
- À utiliser quand il faut un titre, une accroche ou un nom de marque dans l'image
- Système de références de style (jusqu'à 3 images) pour la cohérence de marque
- Propose l'amélioration automatique « Magic Prompt »
- Garder des demandes de texte simples : 3 à 5 mots au plus pour un résultat fiable
- Idéal pour les visuels sociaux et les bannières qui doivent intégrer du texte

### GPT Image (OpenAI)

- Modèles actuels : `gpt-image-1` et ses variantes (DALL-E 3 est abandonné)
- Intégré à ChatGPT : génération d'images en conversation
- Suit bien les prompts détaillés
- Rendu du texte correct (derrière Ideogram, comparable à Gemini)
- Réécrit automatiquement le prompt : peut s'écarter de la demande exacte
- Idéal pour des images ponctuelles, vite faites dans l'interface de ChatGPT
- L'API donne plus de contrôle que l'interface de ChatGPT

### Midjourney

- La meilleure qualité esthétique pour les images artistiques ou éditoriales
- Pas d'API officielle : Discord ou interface web
- **Pas adapté aux agents** : à réserver à l'exploration créative manuelle
- Options de style : `--style raw` pour un rendu moins stylisé, `--ar 16:9` pour le format
- Idéal pour les images d'en-tête où seule compte la qualité visuelle
- Le rendu du texte progresse depuis la V6, mais reste peu fiable

---

## Erreurs de prompt fréquentes

| Erreur | Pourquoi ça échoue | Correction |
|--------|--------------------|------------|
| « Une image professionnelle » | Aucun détail visuel | Décrire le sujet, le décor, le style, l'éclairage |
| Un long paragraphe de texte dans l'image | Les modèles ne savent pas rendre un paragraphe | 3 à 5 mots au plus ; ajouter le texte en post-production |
| « Fais quelque chose de beau » | Rien d'actionnable | Préciser le style : « photographie publicitaire, lumineuse » |
| Des prompts de plus de 200 mots | Le modèle perd le fil | 40 à 80 mots, précis plutôt qu'exhaustifs |
| Pas de format | Taille de sortie aléatoire | Toujours préciser les dimensions ou le ratio |
| « Logo en bas à droite » | Placement peu fiable | Ajouter les logos en post-production |
| « Rends-le viral » | Ce n'est pas une consigne visuelle | Décrire l'esthétique voulue |
| Demander des captures d'interface | L'IA invente les interfaces | Faire de vraies captures à la place |

---

## Workflow de génération en série

Quand il faut plusieurs images d'un style cohérent (par exemple une série d'articles ou une campagne sociale) :

1. **Générer 3 ou 4 images de test** avec des prompts de style différents
2. **Retenir le style gagnant** selon son adéquation à la marque
3. **Conserver le prompt exact** comme modèle
4. **Utiliser la référence multi-images de Flux** : importer l'image gagnante comme référence de style
5. **Générer en série** des variantes au même style, sur des sujets différents
6. **Post-produire** : ajouter textes et logos en surcouche, recadrer aux formats des plateformes

---

## Aide-mémoire des formats

| Cas d'usage | Ratio | Pixels | Remarques |
|-------------|-------|--------|-----------|
| En-tête d'article / image OG | 1,91:1 | 1200x630 | Standard du web |
| En-tête pleine largeur | 16:9 | 1920x1080 | En-têtes de site |
| Instagram (fil) | 1:1 | 1080x1080 | Carré |
| Instagram (fil, vertical) | 4:5 | 1080x1350 | Occupe plus d'écran |
| Stories / Reels | 9:16 | 1080x1920 | Plein écran vertical |
| Couverture LinkedIn | 4:1 | 1584x396 | Profil personnel |
| En-tête Twitter/X | 3:1 | 1500x500 | Bannière de profil |
| Galerie Product Hunt | 5:3 | 1270x760 | Page de lancement |
| Aperçu social GitHub | 2:1 | 1280x640 | Carte de lien du dépôt |

---

## Maîtriser les coûts

- **Itérer d'abord en basse qualité** : Flux Dev ou Gemini Flash pour les brouillons, la montée en gamme pour les versions finales
- **Préférer les références aux longs prompts** : la référence multi-images de Flux donne des résultats plus cohérents avec moins d'essais
- **Regrouper les demandes similaires** : générer tous les en-têtes de blog dans une même séance, au même style
- **Mettre en cache et réutiliser** : fonds abstraits, motifs et textures resservent sur plusieurs images
- **Post-produire plutôt que régénérer** : recadrer, poser le texte et ajuster les couleurs par le code plutôt que générer de nouvelles images
