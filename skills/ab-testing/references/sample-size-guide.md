# Guide de taille d'échantillon

Référence pour calculer la taille d'échantillon et la durée des tests.

## Sommaire
- Fondamentaux de la taille d'échantillon (données requises, définitions)
- Tableaux de référence rapide
- Calculateur de durée (formule, exemples, durée minimale, durée maximale)
- Calculateurs en ligne
- Ajustements pour plusieurs variantes
- Erreurs courantes sur la taille d'échantillon
- Quand les besoins en trafic sont trop élevés
- Tests séquentiels
- Cadre de décision rapide

## Fondamentaux de la taille d'échantillon

### Données requises

1. **Taux de conversion de référence** : ton taux actuel
2. **Effet minimal détectable (EMD)** : le plus petit changement qui vaut la peine d'être mesuré
3. **Niveau de significativité statistique** : généralement 95 % (α = 0,05)
4. **Puissance statistique** : généralement 80 % (β = 0,20)

### Ce que ces données signifient

**Taux de conversion de référence** : si ta page convertit à 5 %, c'est ton taux de référence.

**EMD (effet minimal détectable)** : la plus petite amélioration que tu veux pouvoir détecter. Fixe-la en fonction de :
- L'impact business (une hausse de 5 % est-elle significative ?)
- Le coût de mise en œuvre (est-ce que ça vaut l'effort ?)
- Des attentes réalistes (qu'ont montré les tests passés ?)

**Significativité statistique (95 %)** : moins de 5 % de chance que la différence observée soit due au hasard.

**Puissance statistique (80 %)** : si un vrai effet de taille EMD existe, tu as 80 % de chances de le détecter.

---

## Tableaux de référence rapide

### Taux de conversion : 1 %

| Hausse à détecter | Échantillon par variante | Échantillon total |
|-------------------|--------------------------|-------------------|
| 5 % (1 % → 1,05 %) | 1 500 000 | 3 000 000 |
| 10 % (1 % → 1,1 %) | 380 000 | 760 000 |
| 20 % (1 % → 1,2 %) | 97 000 | 194 000 |
| 50 % (1 % → 1,5 %) | 16 000 | 32 000 |
| 100 % (1 % → 2 %) | 4 200 | 8 400 |

### Taux de conversion : 3 %

| Hausse à détecter | Échantillon par variante | Échantillon total |
|-------------------|--------------------------|-------------------|
| 5 % (3 % → 3,15 %) | 480 000 | 960 000 |
| 10 % (3 % → 3,3 %) | 120 000 | 240 000 |
| 20 % (3 % → 3,6 %) | 31 000 | 62 000 |
| 50 % (3 % → 4,5 %) | 5 200 | 10 400 |
| 100 % (3 % → 6 %) | 1 400 | 2 800 |

### Taux de conversion : 5 %

| Hausse à détecter | Échantillon par variante | Échantillon total |
|-------------------|--------------------------|-------------------|
| 5 % (5 % → 5,25 %) | 280 000 | 560 000 |
| 10 % (5 % → 5,5 %) | 72 000 | 144 000 |
| 20 % (5 % → 6 %) | 18 000 | 36 000 |
| 50 % (5 % → 7,5 %) | 3 100 | 6 200 |
| 100 % (5 % → 10 %) | 810 | 1 620 |

### Taux de conversion : 10 %

| Hausse à détecter | Échantillon par variante | Échantillon total |
|-------------------|--------------------------|-------------------|
| 5 % (10 % → 10,5 %) | 130 000 | 260 000 |
| 10 % (10 % → 11 %) | 34 000 | 68 000 |
| 20 % (10 % → 12 %) | 8 700 | 17 400 |
| 50 % (10 % → 15 %) | 1 500 | 3 000 |
| 100 % (10 % → 20 %) | 400 | 800 |

### Taux de conversion : 20 %

| Hausse à détecter | Échantillon par variante | Échantillon total |
|-------------------|--------------------------|-------------------|
| 5 % (20 % → 21 %) | 60 000 | 120 000 |
| 10 % (20 % → 22 %) | 16 000 | 32 000 |
| 20 % (20 % → 24 %) | 4 000 | 8 000 |
| 50 % (20 % → 30 %) | 700 | 1 400 |
| 100 % (20 % → 40 %) | 200 | 400 |

---

## Calculateur de durée

### Formule

```
Durée (jours) = (Échantillon par variante × Nombre de variantes) / (Trafic journalier × % exposé)
```

### Exemples

**Scénario 1 : page à fort trafic**
- Besoin : 10 000 par variante (2 variantes = 20 000 au total)
- Trafic journalier : 5 000 visiteurs
- 100 % exposés au test
- Durée : 20 000 / 5 000 = **4 jours**

**Scénario 2 : page à trafic moyen**
- Besoin : 30 000 par variante (60 000 au total)
- Trafic journalier : 2 000 visiteurs
- 100 % exposés
- Durée : 60 000 / 2 000 = **30 jours**

**Scénario 3 : faible trafic avec exposition partielle**
- Besoin : 15 000 par variante (30 000 au total)
- Trafic journalier : 500 visiteurs
- 50 % exposés au test
- Trafic effectif journalier : 250
- Durée : 30 000 / 250 = **120 jours** (trop long !)

### Durée minimale

Même avec une taille d'échantillon suffisante, fais toujours tourner le test au moins :
- **1 semaine complète** : pour capturer les variations jour par jour
- **2 cycles business** : si B2B (différences semaine/week-end)
- **Jusqu'à la fin de mois** : si e-commerce (comportements liés aux jours de paie)

### Durée maximale

Évite de faire tourner un test plus de 4 à 8 semaines :
- Les effets de nouveauté s'estompent
- Des facteurs externes viennent biaiser les résultats
- Le coût d'opportunité par rapport aux autres tests augmente

---

## Calculateurs en ligne

### Outils recommandés

**Calculateur Evan Miller**
https://www.evanmiller.org/ab-testing/sample-size.html
- Interface simple
- À mettre en favoris

**Calculateur Optimizely**
https://www.optimizely.com/sample-size-calculator/
- Langage orienté business
- Estimations de durée

**Calculateur AB Test Guide**
https://www.abtestguide.com/calc/
- Option bayésienne incluse
- Plusieurs types de tests

**Calculateur de durée VWO**
https://vwo.com/tools/ab-test-duration-calculator/
- Axé sur la durée
- Pratique pour la planification

---

## Ajustements pour plusieurs variantes

Avec plus de 2 variantes (tests A/B/n), il faut davantage d'échantillon :

| Variantes | Multiplicateur |
|-----------|---------------|
| 2 (A/B) | 1x |
| 3 (A/B/C) | ~1,5x |
| 4 (A/B/C/D) | ~2x |
| 5 ou plus | Envisager de réduire le nombre de variantes |

**Pourquoi ?** Multiplier les comparaisons augmente le risque de faux positifs. On compare :
- A vs B
- A vs C
- B vs C (parfois)

Applique la correction de Bonferroni ou utilise des outils qui la gèrent automatiquement.

---

## Erreurs courantes sur la taille d'échantillon

### 1. Tests sous-dimensionnés
**Problème** : pas assez d'échantillon pour détecter des effets réalistes
**Solution** : être réaliste sur l'EMD, obtenir plus de trafic ou ne pas tester

### 2. Tests surdimensionnés
**Problème** : attendre la taille d'échantillon alors qu'on a déjà la significativité
**Solution** : en réalité, ça va, on avait fixé la taille d'échantillon, on la respecte

### 3. Mauvais taux de référence
**Problème** : utiliser un taux de conversion incorrect pour le calcul
**Solution** : utiliser la métrique et la page précises, pas les moyennes du site

### 4. Ignorer la segmentation prévue
**Problème** : calculer pour le trafic total, puis analyser par segment
**Solution** : si tu prévois une analyse par segment, calcule pour le segment le plus petit

### 5. Trop de variantes simultanées
**Problème** : trafic trop fragmenté
**Solution** : priorise sans compromis, lance moins de tests en parallèle

---

## Quand les besoins en trafic sont trop élevés

Options si le trafic est insuffisant :

1. **Augmenter l'EMD** : n'accepter de détecter que des effets plus importants (20 % de hausse ou plus)
2. **Baisser le niveau de confiance** : passer à 90 % au lieu de 95 % (risqué, à documenter)
3. **Réduire les variantes** : ne tester que la variante la plus prometteuse
4. **Combiner le trafic** : tester sur plusieurs pages similaires
5. **Tester plus en amont dans le funnel** : là où le trafic est plus élevé
6. **Ne pas tester** : prendre la décision sur la base de données qualitatives
7. **Accepter une durée plus longue** : quelques semaines ou mois

---

## Tests séquentiels

Si tu dois consulter les résultats avant d'atteindre la taille d'échantillon :

### Qu'est-ce que c'est ?
Une méthode statistique qui s'ajuste pour les consultations multiples en cours de test.

### Quand l'utiliser
- Changements à risque élevé
- Besoin de stopper rapidement une mauvaise variante
- Décisions urgentes

### Outils compatibles
- Optimizely (Stats Accelerator)
- VWO (SmartStats)
- PostHog (approche bayésienne)

### Compromis
- Plus de flexibilité pour stopper tôt
- Taille d'échantillon légèrement plus grande
- Analyse plus complexe

---

## Cadre de décision rapide

### Puis-je lancer ce test ?

```
Trafic journalier vers la page : _____
Taux de conversion de référence : _____
EMD qui m'intéresse : _____

Échantillon nécessaire par variante : _____ (cf. tableaux ci-dessus)
Jours nécessaires : Échantillon / Trafic journalier = _____

Si durée > 60 jours : envisager des alternatives
Si durée > 30 jours : acceptable pour les tests à fort impact
Si durée < 14 jours : probablement faisable
Si durée < 7 jours : facile à lancer, envisager quand même de faire tourner plus longtemps
```
