# Méthodes de recherche tarifaire

## Sommaire
- Méthode Van Westendorp (les quatre questions, comment analyser, conseils pour le sondage, exemple de résultats)
- Analyse MaxDiff (fonctionnement, exemple de question, analyse des résultats, utilisation pour le packaging)
- Sondages sur le consentement à payer
- Analyse corrélation usage/valeur

## Méthode Van Westendorp

Le sondage Van Westendorp identifie la plage de prix acceptable pour ton produit.

### Les quatre questions

Poser à chaque répondant :
1. « À quel prix considéreriez-vous que [produit] est trop cher pour que vous l'achetiez ? » (Trop cher)
2. « À quel prix commenceriez-vous à douter de la qualité de [produit] ? » (Trop bon marché)
3. « À quel prix [produit] vous semblerait-il cher, mais seriez-vous quand même prêt(e) à l'envisager ? » (Cher mais envisageable)
4. « À quel prix [produit] vous semblerait-il être une bonne affaire ? » (Bon rapport qualité/prix)

### Comment analyser

1. Tracer les distributions cumulées pour chaque question
2. Identifier les intersections :
   - **Point de marginalité basse (PMB) :** « Trop bon marché » croise « Cher mais envisageable »
   - **Point de marginalité haute (PMH) :** « Trop cher » croise « Bon rapport qualité/prix »
   - **Prix optimal (PO) :** « Trop bon marché » croise « Trop cher »
   - **Prix d'indifférence (PI) :** « Cher mais envisageable » croise « Bon rapport qualité/prix »

**La plage de prix acceptable :** PMB à PMH
**Zone de prix optimale :** entre PO et PI

### Conseils pour le sondage
- 100 à 300 répondants pour des données fiables
- Segmenter par persona (consentement à payer différent selon le profil)
- Utiliser des descriptions de produit réalistes
- Envisager d'ajouter des questions d'intention d'achat

### Exemple de résultats

```
Analyse de sensibilité au prix :
─────────────────────────────────
Point de marginalité basse :   29 €/mois
Prix optimal :                 49 €/mois
Prix d'indifférence :          59 €/mois
Point de marginalité haute :   79 €/mois

Plage recommandée : 49 à 59 €/mois
Prix actuel : 39 €/mois (en dessous de l'optimal)
Opportunité : hausse de 25 à 50 % sans impact significatif sur la demande
```

---

## Analyse MaxDiff (Best-Worst Scaling)

MaxDiff identifie les fonctionnalités que les clients valorisent le plus, pour orienter les décisions de packaging.

### Fonctionnement

1. Lister 8 à 15 fonctionnalités candidates
2. Présenter aux répondants des ensembles de 4 à 5 fonctionnalités
3. Demander : « Quelle est la plus importante ? Quelle est la moins importante ? »
4. Répéter sur plusieurs ensembles jusqu'à ce que toutes les fonctionnalités soient comparées
5. L'analyse statistique produit des scores d'importance

### Exemple de question de sondage

```
Quelle fonctionnalité est la PLUS importante pour vous ?
Quelle fonctionnalité est la MOINS importante pour vous ?

□ Projets illimités
□ Marque blanche personnalisée
□ Support prioritaire
□ Accès API
□ Analytique avancée
```

### Analyse des résultats

Les fonctionnalités sont classées par score d'utilité :
- Utilité élevée : indispensable (à inclure dans le palier de base)
- Utilité moyenne : facteur de différenciation (pour séparer les paliers)
- Utilité faible : agréable à avoir (palier premium ou à supprimer)

### Utilisation pour le packaging

| Score d'utilité | Décision de packaging |
|-----------------|----------------------|
| Top 20 % | Inclure dans tous les paliers (table stakes) |
| 20 à 50 % | Utiliser pour différencier les paliers |
| 50 à 80 % | Paliers supérieurs uniquement |
| 20 % inférieurs | À supprimer ou en option premium |

---

## Sondages sur le consentement à payer

**Méthode directe (simple mais biaisée) :**
« Combien seriez-vous prêt(e) à payer pour [produit] ? »

**Mieux : méthode Gabor-Granger :**
« Achèteriez-vous [produit] à [X €] ? » (Oui/Non)
Faire varier le prix selon les répondants pour construire une courbe de demande.

**Encore mieux : analyse conjointe :**
Présenter des combinaisons de produit à différents prix.
Les répondants choisissent leur option préférée.
L'analyse statistique révèle la sensibilité au prix par fonctionnalité.

---

## Analyse corrélation usage/valeur

### 1. Instrumenter les données d'usage
Mesurer comment les clients utilisent le produit :
- Fréquence d'utilisation des fonctionnalités
- Métriques de volume (utilisateurs, enregistrements, appels API)
- Métriques de résultat (chiffre d'affaires généré, temps gagné)

### 2. Corréler avec le succès client
- Quels comportements d'usage prédisent la rétention ?
- Quels comportements d'usage prédisent l'expansion ?
- Quels clients paient le plus, et pourquoi ?

### 3. Identifier les seuils de valeur
- À quel niveau d'usage les clients « voient la valeur » ?
- À quel niveau d'usage s'étendent-ils ?
- À quel niveau d'usage le prix devrait-il augmenter ?

### Exemple d'analyse

```
Analyse corrélation usage/valeur :
─────────────────────────────────
Segment : clients à forte LTV (plus de 10 000 € d'ARR)
Utilisateurs actifs mensuels moyens : 15
Projets moyens : 8
Intégrations moyennes : 4

Segment : clients churned
Utilisateurs actifs mensuels moyens : 3
Projets moyens : 2
Intégrations moyennes : 0

Insight : la valeur est corrélée à l'adoption en équipe (utilisateurs)
          et à la profondeur d'usage (intégrations)

Recommandation : facturer par utilisateur, bloquer les intégrations dans les paliers supérieurs
```
