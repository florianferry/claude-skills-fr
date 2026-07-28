# Modèles de tests A/B

Modèles pour planifier, documenter et analyser les expérimentations.

## Sommaire
- Modèle de plan de test
- Modèle de documentation des résultats
- Modèle d'entrée dans le registre des tests
- Modèle de brief de test rapide
- Modèle de mise à jour pour les parties prenantes
- Tableau de priorisation des expérimentations
- Modèle de banque d'hypothèses

## Modèle de plan de test

```markdown
# A/B test : [Nom]

## Vue d'ensemble
- **Responsable** : [Nom]
- **ID du test** : [ID dans l'outil de test]
- **Page/fonctionnalité** : [Ce qui est testé]
- **Dates prévues** : [Début] - [Fin]

## Hypothèse

Parce que [observation/donnée],
nous pensons que [changement]
produira [résultat attendu]
pour [audience].
Nous le saurons quand [métriques].

## Conception du test

| Élément | Détails |
|---------|---------|
| Type de test | A/B / A/B/n / MVT |
| Durée | X semaines |
| Taille d'échantillon | X par variante |
| Répartition du trafic | 50/50 |
| Outil | [Nom de l'outil] |
| Implémentation | Côté client / côté serveur |

## Variantes

### Contrôle (A)
[Capture d'écran]
- Expérience actuelle
- [Détails clés sur l'état actuel]

### Variante (B)
[Capture d'écran ou maquette]
- [Changement spécifique n° 1]
- [Changement spécifique n° 2]
- Justification : [Pourquoi on pense que cette variante va l'emporter]

## Métriques

### Principale
- **Métrique** : [nom de la métrique]
- **Définition** : [comment elle est calculée]
- **Référence actuelle** : [X %]
- **Effet minimal détectable** : [X %]

### Secondaires
- [Métrique 1] : [ce qu'elle nous apprend]
- [Métrique 2] : [ce qu'elle nous apprend]
- [Métrique 3] : [ce qu'elle nous apprend]

### Garde-fous
- [Métrique qui ne doit pas se dégrader]
- [Autre métrique de sécurité]

## Plan d'analyse par segment
- Mobile vs. desktop
- Nouveaux vs. visiteurs récurrents
- Source de trafic
- [Autres segments pertinents]

## Critères de succès
- Vainqueur : [la métrique principale s'améliore de X % avec une confiance à 95 %]
- Perdant : [la métrique principale baisse significativement]
- Non concluant : [ce qu'on fera si aucun résultat significatif]

## Checklist avant lancement
- [ ] Hypothèse documentée et revue
- [ ] Métrique principale définie et traçable
- [ ] Taille d'échantillon calculée
- [ ] Durée du test estimée
- [ ] Variantes correctement implémentées
- [ ] Tracking vérifié dans toutes les variantes
- [ ] QA effectué sur toutes les variantes
- [ ] Parties prenantes informées
- [ ] Date d'analyse bloquée dans l'agenda
```

---

## Modèle de documentation des résultats

```markdown
# Résultats du test A/B : [Nom]

## Résumé
| Élément | Valeur |
|---------|--------|
| ID du test | [ID] |
| Dates | [Début] - [Fin] |
| Durée | X jours |
| Résultat | Vainqueur / Perdant / Non concluant |
| Décision | [Ce qu'on fait] |

## Hypothèse (rappel)
[Copier depuis le plan de test]

## Résultats

### Taille d'échantillon
| Variante | Cible | Atteint | % de la cible |
|----------|-------|---------|---------------|
| Contrôle | X | Y | Z % |
| Variante | X | Y | Z % |

### Métrique principale : [Nom de la métrique]
| Variante | Valeur | IC 95 % | vs. contrôle |
|----------|--------|---------|--------------|
| Contrôle | X % | [X %, Y %] | — |
| Variante | X % | [X %, Y %] | +X % |

**Significativité statistique** : p = X,XX (seuil 95 % : significatif / non significatif)
**Significativité pratique** : [cet effet est-il utile pour le business ?]

### Métriques secondaires

| Métrique | Contrôle | Variante | Variation | Significatif ? |
|----------|----------|----------|-----------|----------------|
| [Métrique 1] | X | Y | +Z % | Oui/Non |
| [Métrique 2] | X | Y | +Z % | Oui/Non |

### Métriques de garde-fou

| Métrique | Contrôle | Variante | Variation | Problème ? |
|----------|----------|----------|-----------|------------|
| [Métrique 1] | X | Y | +Z % | Oui/Non |

### Analyse par segment

**Mobile vs. desktop**
| Segment | Contrôle | Variante | Hausse |
|---------|----------|----------|--------|
| Mobile | X % | Y % | +Z % |
| Desktop | X % | Y % | +Z % |

**Nouveaux vs. récurrents**
| Segment | Contrôle | Variante | Hausse |
|---------|----------|----------|--------|
| Nouveaux | X % | Y % | +Z % |
| Récurrents | X % | Y % | +Z % |

## Interprétation

### Que s'est-il passé ?
[Explication des résultats en langage clair]

### Pourquoi, selon nous ?
[Analyse et raisonnement]

### Réserves
[Limites, facteurs externes ou points de vigilance]

## Décision

**Vainqueur** : [Contrôle / Variante]

**Action** : [Déployer la variante / Garder le contrôle / Retester]

**Calendrier** : [Quand les changements seront mis en place]

## Enseignements

### Ce qu'on a appris
- [Enseignement clé 1]
- [Enseignement clé 2]

### Ce qu'on va tester ensuite
- [Idée de test de suivi 1]
- [Idée de test de suivi 2]

### Impact
- **Hausse projetée** : [X % d'amélioration sur la métrique Y]
- **Impact business** : [chiffre d'affaires, conversions, etc.]
```

---

## Modèle d'entrée dans le registre des tests

Pour centraliser tous les tests :

```markdown
| ID test | Nom | Page | Dates | Métrique principale | Résultat | Hausse | Lien |
|---------|-----|------|-------|---------------------|----------|--------|------|
| 001 | Test titre hero | Accueil | 1/01-15/01 | CTR | Vainqueur | +12 % | [Lien] |
| 002 | Mise en page tarifs | Tarifs | 10/01-31/01 | Sélection d'offre | Perdant | -5 % | [Lien] |
| 003 | Champs formulaire inscription | Inscription | 1/02-14/02 | Taux de complétion | Non concluant | +2 % | [Lien] |
```

---

## Modèle de brief de test rapide

Pour les tests simples qui n'ont pas besoin d'une documentation complète :

```markdown
## [Nom du test]

**Quoi** : [Description en une phrase]
**Pourquoi** : [Hypothèse en une phrase]
**Métrique** : [Métrique principale]
**Durée** : [X semaines]
**Résultat** : [À déterminer / Vainqueur / Perdant / Non concluant]
**Enseignements** : [Point clé retenu]
```

---

## Modèle de mise à jour pour les parties prenantes

```markdown
## Mise à jour du test A/B : [Nom]

**Statut** : En cours / Terminé
**Jours restants** : X (ou terminé)
**Échantillon actuel** : X % de la cible

### Observations préliminaires
[Ce qu'on observe, sans tirer de conclusions]

### Prochaines étapes
[Ce qui se passe ensuite]

### Calendrier
- [Date] : analyse terminée
- [Date] : décision et recommandation
- [Date] : mise en production (si vainqueur)
```

---

## Tableau de priorisation des expérimentations

Pour décider quels tests lancer :

| Facteur | Poids | Test A | Test B | Test C |
|---------|-------|--------|--------|--------|
| Impact potentiel | 30 % | | | |
| Confiance dans l'hypothèse | 25 % | | | |
| Facilité de mise en œuvre | 20 % | | | |
| Risque si ça rate | 15 % | | | |
| Alignement stratégique | 10 % | | | |
| **Total** | | | | |

Notation : 1 à 5 (5 = meilleur)

---

## Modèle de banque d'hypothèses

Pour collecter les idées de tests :

```markdown
| ID | Page/zone | Observation | Hypothèse | Impact potentiel | Statut |
|----|-----------|-------------|-----------|-----------------|--------|
| H1 | Accueil | Faible profondeur de scroll | Un hero plus court augmentera le scroll | Élevé | En cours |
| H2 | Tarifs | Les utilisateurs comparent les offres | Un tableau comparatif aidera | Moyen | Backlog |
| H3 | Inscription | Chute à l'étape e-mail | La connexion sociale augmentera le taux de complétion | Moyen | Backlog |
```
