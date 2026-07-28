# Template de rapport d'audit ASO

Utilise cette structure pour tous les rapports d'audit ASO.

---

## En-tête

```
# Audit ASO : {Nom de l'app}
**Store :** {App Store d'Apple / Google Play}
**URL :** {URL du listing}
**Date d'audit :** {date}
**Niveau de marque :** {Dominant / Établi / Challenger} : {justification en une ligne}
**Score global :** {score}/100 (Note : {A/B/C/D/F})
```

---

## Tableau de bord

```
| Dimension                | Score  | Note      | Problème clé           |
| ------------------------ | ------ | --------- | ---------------------- |
| Titre et sous-titre      | X/10   | {note}    | {résumé en une ligne}  |
| Description              | X/10   | {note}    | {résumé en une ligne}  |
| Visuels                  | X/10   | {note}    | {résumé en une ligne}  |
| Notes et avis            | X/10   | {note}    | {résumé en une ligne}  |
| Métadonnées et fraîcheur | X/10   | {note}    | {résumé en une ligne}  |
| Signaux de conversion    | X/10   | {note}    | {résumé en une ligne}  |
| **TOTAL**                | **{pondéré}/100** | **{note}** | |
```

Échelle par dimension : 9-10 = A, 7-8 = B, 5-6 = C, 3-4 = D, 1-2 = F

---

## 3 gains rapides

Changements à fort impact qui prennent moins d'une heure :

```
### 1. {Verbe d'action} : {changement spécifique}
**Impact :** {Élevé/Moyen} | **Effort :** {< 15 min / < 30 min / < 1 h}
**Actuel :** {ce qui est en place}
**Recommandé :** {remplacement exact, avec nombre de caractères}
**Pourquoi :** {une phrase expliquant l'impact}

### 2. ...
### 3. ...
```

---

## Analyse détaillée

### Analyse du titre et du sous-titre

```
**Titre actuel :** « {titre} » ({X}/30 caractères utilisés)
**Sous-titre / description courte actuel :** « {sous-titre} » ({X}/30 ou /80 caractères)

**Problèmes identifiés :**
- {problème 1}
- {problème 2}

**Titre recommandé :** « {nouveau titre} » ({X}/30 car.) : {justification}
**Sous-titre recommandé :** « {nouveau sous-titre} » ({X}/30 ou /80 car.) : {justification}
```

### Analyse de la description

```
**3 premières lignes (visibles avant « Voir plus ») :**
> {texte cité}

**Problèmes identifiés :**
- {problème 1}
- {problème 2}

**Densité de mots-clés (Google Play uniquement) :** {X} % : cible : 2 à 3 %
**Mots-clés présents :** {mot-clé 1} (Xn), {mot-clé 2} (Xn), ...
**Mots-clés à forte valeur absents :** {mot-clé 1}, {mot-clé 2}, ...

**3 premières lignes recommandées :**
> {texte réécrit}
```

### Analyse des visuels

```
**Captures d'écran :** {nombre} ({le store} affiche les {3 premières/toutes} dans la recherche)
**Vidéo de présentation :** {Oui/Non}
**Icône :** {description}
**Graphique de une (Google Play) :** {Oui/Non}

**Audit des captures :**
1. {description capture 1} : {conforme/problème}
2. {description capture 2} : {conforme/problème}
...

**Recommandations :**
- {changement visuel spécifique 1}
- {changement visuel spécifique 2}
```

### Analyse des notes et avis

```
**Note moyenne :** {X,X} étoiles ({nombre} avis)
**Sentiment des avis récents :** {Positif/Mitigé/Négatif}
**Plaintes fréquentes :** {thème 1}, {thème 2}
**Réponses du développeur :** {Oui, actives / Ponctuelles / Absentes}

**Recommandations :**
- {action spécifique 1}
- {action spécifique 2}
```

### Analyse des métadonnées et de la fraîcheur

```
**Dernière mise à jour :** {date} (il y a {X jours/mois})
**Localisations :** {nombre} de langues
**Catégorie :** {catégorie actuelle}
**Événements intégrés/LiveOps :** {Oui/Non}

**Recommandations :**
- {action spécifique 1}
- {action spécifique 2}
```

### Analyse des signaux de conversion

```
**Modèle tarifaire :** {Gratuit / Freemium / Payant}
**Nombre d'achats intégrés :** {nombre}
**Téléchargements (Google Play) :** {plage}
**Preuve sociale visible :** {prix, presse, badges, ou « aucune »}

**Recommandations :**
- {action spécifique 1}
- {action spécifique 2}
```

---

## Suggestions de mots-clés

```
| Mot-clé   | Justification        | Où le placer                                          | Priorité              |
| --------- | -------------------- | ----------------------------------------------------- | --------------------- |
| {mot-clé} | {pourquoi ce mot}    | {titre/sous-titre/description/champ mots-clés}        | {Haute/Moyenne/Faible}|
| ...       | ...                  | ...                                                   | ...                   |
```

Note : sans outils ASO payants, le volume de recherche exact n'est pas disponible. Ces
suggestions s'appuient sur l'analyse des catégories, les métadonnées de la concurrence et la
pertinence sémantique. À valider avec AppTweak, Sensor Tower ou MobileAction pour les volumes.

---

## Comparaison concurrentielle (si applicable)

```
| Indicateur              | {Ton app} | {Concurrent 1} | {Concurrent 2} |
| ----------------------- | --------- | -------------- | -------------- |
| Mots-clés du titre      | ...       | ...            | ...            |
| Note                    | ...       | ...            | ...            |
| Captures d'écran        | ...       | ...            | ...            |
| Vidéo                   | ...       | ...            | ...            |
| Mots-clés description   | ...       | ...            | ...            |
| Dernière mise à jour    | ...       | ...            | ...            |
| Score ASO global        | ...       | ...            | ...            |
```

---

## Plan d'action priorisé

Par ordre d'impact décroissant, regroupé par effort :

```
### À faire cette semaine (gains rapides)
1. {action} : {impact attendu}
2. {action} : {impact attendu}

### À faire ce mois-ci (effort moyen)
3. {action} : {impact attendu}
4. {action} : {impact attendu}

### À planifier au prochain trimestre (effort élevé)
5. {action} : {impact attendu}
6. {action} : {impact attendu}
```

---

## Limites de l'audit

Inclure systématiquement cette section :

> **Ce que cet audit ne peut pas mesurer sans outils ASO payants :**
>
> - Volume de recherche et niveau de concurrence des mots-clés
> - Positions de classement historiques sur les mots-clés
> - Estimations de téléchargements et de revenus
> - Contenu du champ mots-clés Apple (masqué au public)
> - Taux de conversion réel (accessible uniquement dans la console du propriétaire)
> - Résultats des tests A/B précédents
>
> Pour ces données, utilise AppTweak (à partir de 69 $/mois), Sensor Tower ou
> MobileAction (à partir de 69 $/mois).
