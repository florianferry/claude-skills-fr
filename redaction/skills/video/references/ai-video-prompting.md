# Guide de prompt pour la vidéo IA

Comment rédiger des prompts efficaces pour les modèles de génération vidéo IA (Veo, Runway, Kling, Pika).

---

## Structure d'un prompt

Un prompt vidéo solide suit cette formule :

```
[Sujet] + [Action] + [Mouvement de caméra] + [Style visuel] + [Éclairage/ambiance] + [Specs techniques]
```

### Exemples de prompts par cas d'usage

**Plan héro de produit :**
```
Un ordinateur portable élégant posé sur un bureau minimaliste blanc, écran allumé affichant un tableau de bord,
la caméra orbite lentement à 180 degrés autour du bureau,
éclairage volumétrique doux venant de la gauche, faible profondeur de champ,
esthétique publicitaire cinématique, 4K
```

**B-roll lifestyle :**
```
Une femme dans un espace de coworking moderne, souriant en regardant son téléphone,
lumière naturelle venant d'une fenêtre, ambiance documentaire candide,
caméra portée à l'épaule avec un léger mouvement, étalonnage chaud
```

**Abstrait / marque :**
```
Des particules d'or liquide en mouvement formant la silhouette d'un graphe réseau,
fond sombre, les particules captent la lumière en se déplaçant,
style macro en ralenti, éclairage dramatique en contre-jour
```

**Scène pour explainer SaaS :**
```
Vue aérienne d'une équipe réunie autour d'une table de réunion pointant des graphiques,
la caméra pousse lentement vers l'avant, bureau moderne et lumineux,
style corporate propre, éclairage uniforme, 1080p
```

---

## Vocabulaire des mouvements de caméra

Ces termes sont compris par les modèles vidéo :

| Terme | Effet |
|-------|-------|
| **Static** | Caméra fixe, aucun mouvement |
| **Pan left/right** | Rotation horizontale de la caméra |
| **Tilt up/down** | Rotation verticale de la caméra |
| **Dolly in/out** | La caméra avance/recule vers le sujet |
| **Orbit** | La caméra tourne autour du sujet |
| **Tracking shot** | La caméra suit un sujet en mouvement |
| **Crane/aerial** | La caméra monte ou descend |
| **Handheld** | Légère instabilité, ambiance documentaire |
| **Zoom** | Zoom optique (différent du dolly) |
| **Slow push** | Dolly avant progressif : crée tension et focus |

---

## Mots-clés de style

### Cinématique
- « cinematic color grading »
- « anamorphic lens flare »
- « shallow depth of field »
- « film grain »
- « 35mm film »

### Commercial / corporate
- « clean commercial lighting »
- « bright and airy »
- « professional corporate aesthetic »
- « even, diffused lighting »

### Documentaire
- « handheld documentary style »
- « natural lighting »
- « candid, unposed »
- « observational camera »

### Social / tendance
- « vertical 9:16 »
- « fast-paced cuts »
- « bold text overlays »
- « high contrast, saturated colors »

---

## Conseils spécifiques par modèle

### Veo (Google)

- Excelle en photoréalisme et scènes complexes
- Prend en charge la génération audio synchronisée à la vidéo
- Réagit mieux aux prompts détaillés et descriptifs
- Préciser « high resolution » ou « 1080p » pour la meilleure qualité
- Capable de gérer plusieurs sujets et des transitions de scène

### Runway Gen-4

- Excellent contrôle du mouvement : préciser les mouvements de caméra avec soin
- Meilleure cohérence temporelle du marché (les sujets restent constants entre les frames)
- Utiliser le pinceau de mouvement pour animer une zone spécifique
- L'image-to-video fonctionne bien : fournir une frame de référence
- Garder les prompts sous 100 mots pour de meilleurs résultats

### Kling

- Peut générer jusqu'à 2 minutes (bien plus long que les autres)
- Adapté aux séquences narratives longues
- Plus accessible pour la génération en volume
- La qualité baisse légèrement sur les longues durées
- Fonctionne mieux avec des scènes simples et peu de sujets

### Pika

- Génération la plus rapide (moins de 2 minutes)
- Idéal pour les itérations rapides et l'expérimentation
- Le mode Effets anime des images fixes
- Optimal pour les clips courts (5 à 15 secondes)
- Contrôle du mouvement de caméra limité

---

## Erreurs fréquentes

| Erreur | Pourquoi ça ne fonctionne pas | Correction |
|--------|------------------------------|------------|
| « Une personne qui utilise notre appli » | Trop vague, aucun détail visuel | Décrire la personne, le lieu, l'éclairage, la caméra |
| Inclure du texte ou des logos | L'IA ne rend pas du texte lisible | Ajouter le texte en post-production via Hyperframes/CapCut |
| « Rends ça viral » | Ce n'est pas une instruction visuelle | Décrire le style visuel souhaité |
| Prompts très longs (200+ mots) | Les modèles perdent le fil | Rester entre 50 et 100 mots, être précis |
| Aucune direction de caméra | Caméra aléatoire ou fixe par défaut | Toujours préciser le mouvement ou « static » |
| « Réaliste » seul | Pas assez précis | « Photoréaliste, éclairage naturel, tourné sur RED camera » |

---

## Workflow de prompting

1. **Trouver une référence d'abord** : identifier une vraie vidéo qui ressemble au résultat souhaité
2. **La décrire** : décomposer en sujet, action, caméra, style, ambiance
3. **Générer 3 à 4 variations** : même concept, angles ou styles différents
4. **Itérer sur la meilleure** : affiner le prompt d'après les résultats
5. **Composer** : combiner les images IA avec du texte/des overlays programmatiques

---

## Formats d'image

Toujours préciser dans le prompt ou les réglages de génération :

| Plateforme | Format | Résolution |
|------------|--------|-----------|
| YouTube | 16:9 | 1920 × 1080 ou 3840 × 2160 |
| TikTok/Reels/Shorts | 9:16 | 1080 × 1920 |
| Instagram (fil) | 1:1 ou 4:5 | 1080 × 1080 ou 1080 × 1350 |
| Site web (héro) | 16:9 | 1920 × 1080 |
| LinkedIn | 16:9 ou 1:1 | 1920 × 1080 |

---

## Optimisation des coûts

- **Itérer en basse résolution** : upscaler uniquement la version finale
- **Utiliser Kling pour les brouillons** : le moins cher par seconde, passer à Veo/Runway pour les finaux
- **Image-to-video** : fournir une frame de référence économise des crédits de génération et donne de meilleurs résultats
- **Regrouper les prompts similaires** : les modèles proposent souvent des remises en volume
- **Mettre en cache et réutiliser** : les clips B-roll peuvent servir dans plusieurs vidéos
