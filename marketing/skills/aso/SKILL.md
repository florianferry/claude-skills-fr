---
name: aso
description: "Quand l'utilisateur veut auditer ou optimiser une fiche App Store ou Google Play. À utiliser aussi quand il mentionne 'audit ASO', 'optimisation App Store', 'améliorer mon listing', 'visibilité app store', 'classement app', 'auditer ma fiche', 'pourquoi mon app ne se télécharge pas', 'améliorer ma conversion app', 'mots-clés app', 'optimisation Google Play' ou 'comparer mon app à la concurrence'. À déclencher quand l'utilisateur partage une URL App Store ou Google Play et veut l'améliorer."
metadata:
  version: 2.0.0
---

# Audit ASO

> **Style français (impératif).** Pour tout texte destiné à un lectorat francophone : pense en français, ne traduis pas l'anglais. Bannis les calques (« C'est simple. », « N'hésitez pas à… ») et les tics d'IA (Découvrez, Boostez, Optimisez, Incontournable, En un clin d'œil). Typographie : espace insécable avant `: ; ! ?` et dans « … » ; apostrophe ’ ; titres en casse de phrase ; jamais de tiret cadratin `—` dans le corps (→ `,` `:` `.` ou parenthèses) ; nombres à la française (`29 €`, `80 %`, `12 000`, `24 h`). Vérifie les accords (genre, nombre, participes) ; choisis le tutoiement ou le vouvoiement et tiens-t'y ; relis à voix haute pour éliminer toute tournure « qui sonne traduite ». Détail complet dans `french-copy.md`, fourni avec ce skill.

Analyse les fiches App Store et Google Play selon les bonnes pratiques ASO. Récupère les données du listing en direct, note les métadonnées, les visuels et les avis, puis produit un plan d'action priorisé.

## Quand utiliser ce skill

- L'utilisateur partage une URL App Store ou Google Play
- L'utilisateur demande un audit ou une optimisation de fiche
- L'utilisateur veut comparer son app à la concurrence
- L'utilisateur pose des questions sur le classement, la visibilité ou la conversion

## Avant l'audit

**Vérifie d'abord le contexte produit :**
Si le fichier `.agents/product-marketing.md` existe (ou `.claude/product-marketing.md`, ou l'ancien `product-marketing-context.md`), lis-le avant de poser des questions. Utilise ce contexte et ne demande que les informations manquantes ou spécifiques à la tâche.

## Phase 1 : Identifier le store et récupérer la fiche

### Détecter le store à partir de l'URL

```
Apple :  apps.apple.com/{pays}/app/{nom}/id{chiffres}
Google : play.google.com/store/apps/details?id={package}
```

Si l'utilisateur donne un nom d'app au lieu d'une URL, cherche sur le web :
`site:apps.apple.com "{nom de l'app}"` ou `site:play.google.com "{nom de l'app}"`

### Récupérer la fiche

Utilise WebFetch pour charger la page du listing. Extrais tous les champs disponibles :

**Champs App Store d'Apple :**

- Nom de l'app (titre) : limite 30 caractères
- Sous-titre : limite 30 caractères
- Description longue : non indexée pour la recherche, mais déterminante pour la conversion
- Texte promotionnel : 170 caractères, modifiable sans nouvelle version
- Catégorie (principale + secondaire)
- Captures d'écran (nombre, ordre, légendes)
- Vidéo de présentation (présence, durée)
- Note (moyenne + nombre)
- Avis récents visibles
- Prix / achats intégrés
- Nom du développeur
- Date de dernière mise à jour
- Notes de version
- Classification par âge
- Taille
- Langues / localisations disponibles
- Événements intégrés (si visibles)

**Champs Google Play :**

- Nom de l'app (titre) : limite 30 caractères
- Description courte : limite 80 caractères
- Description complète : limite 4 000 caractères, **indexée pour la recherche**
- Catégorie + tags
- Graphique de une (présence)
- Captures d'écran (nombre, ordre)
- Vidéo de présentation (présence)
- Note (moyenne + nombre)
- Avis récents visibles
- Prix / achats intégrés
- Nom du développeur
- Date de dernière mise à jour
- Texte « Nouveautés »
- Plage de téléchargements
- Classification du contenu
- Section sécurité des données
- Langues disponibles

Si WebFetch renvoie des données incomplètes (les stores utilisent du rendu côté client), note les lacunes et travaille avec ce qui est disponible. Demande à l'utilisateur de coller les champs manquants si c'est critique.

### Évaluation des visuels

WebFetch ne peut pas extraire les captures d'écran ni leurs légendes. **Prends une capture d'écran de la page du listing** pour obtenir ces données visuelles :

1. Navigue vers l'URL et capture la page entière
2. Évalue : qualité de l'icône, nombre de captures, légendes, qualité des messages, présence de vidéo, graphique de une (Google Play)
3. Si les outils de navigateur sont indisponibles, demande à l'utilisateur de partager une capture d'écran de la fiche

**Texte promotionnel (Apple) :** ce champ de 170 caractères apparaît au-dessus de la description, mais est souvent indiscernable dans le HTML extrait. Si tu ne peux pas confirmer sa présence, signale-le et recommande à l'utilisateur de vérifier dans App Store Connect.

---

## Phase 1.5 : Évaluer la maturité de marque

Avant de scorer, classe l'app dans l'un des trois niveaux. Cela détermine comment interpréter les écarts aux bonnes pratiques ASO classiques : un choix délibéré d'une marque dominante n'est pas la même chose qu'une occasion manquée pour une app inconnue.

### Définition des niveaux

| Niveau          | Signaux                                                                                                                                                               | Exemples                                      |
| --------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------- |
| **Dominant**    | Marque grand public, 1M+ avis, top 10 catégorie, reconnaissance quasi-universelle. Les utilisateurs cherchent par nom de marque, pas par mots-clés génériques.        | Instagram, Uber, Spotify, WhatsApp, Netflix   |
| **Établi**      | Connu dans sa catégorie, 100 000+ avis, installs organiques solides, marque reconnue mais pas universellement.                                                        | Strava, Notion, Duolingo, PayFit, Calm        |
| **Challenger**  | En cours de construction, moins de 100 000 avis, dépend des mots-clés et des tactiques ASO pour être découvert. La majorité des apps.                                 | Ton app, la plupart des apps indie ou startup |

### Impact du niveau sur le scoring

**Apps dominantes** : scoring ajusté sur ces dimensions :

- **Titre :** un titre uniquement composé du nom de marque est valide (score 8+ si la marque est le mot-clé). Ces apps n'ont pas besoin de mots-clés génériques pour être trouvées.
- **Description :** scorer uniquement sur la qualité de conversion, pas sur la densité de mots-clés. Si c'est une marque grand public, une description soignée prime sur une description bourrée de mots-clés.
- **Visuels :** des visuels de marque ou de lifestyle à la place de démonstrations d'interface est une stratégie de conversion légitime. L'absence de vidéo est acceptable si le produit est difficile à démontrer en 30 s ou si la notoriété est quasi-universelle.
- **Nouveautés :** des notes de version génériques à cadence hebdomadaire ou plus sont acceptables (score 8+). À grande échelle, des changelogs détaillés ont un ROI faible et risquent d'irriter.
- **Événements intégrés :** l'absence d'événements pour des apps utilitaires avec une base d'install massive n'est pas pénalisée.
- **Localisation :** scorer par rapport au marché réel, pas en nombre absolu.

**Apps établies** : ajustement partiel :

- Les titres avec la marque en premier sont acceptables, mais doivent inclure 1 ou 2 mots-clés
- Les choix stratégiques sur la description ou les visuels bénéficient du bénéfice du doute
- Toutes les autres dimensions scorées normalement

**Apps Challenger** : scorées strictement selon les meilleures pratiques ASO : chaque caractère, capture d'écran et mot-clé compte.

**Principe clé :** avant de retirer des points, demande-toi : « C'est une erreur ou un choix délibéré d'une équipe qui dispose de données que je n'ai pas ? » Si l'app a 1M+ d'avis et une équipe ASO dédiée, considère que ses choix sont fondés sur des données, sauf si c'est manifestement faux.

---

## Phase 2 : Scorer chaque dimension

Score chaque dimension de 0 à 10 en utilisant les critères de `references/scoring-criteria.md`.
Applique les ajustements par niveau de maturité de marque de la Phase 1.5.

Fichiers de référence pour les specs et benchmarks :

- `references/apple-specs.md` : limites officielles Apple, specs captures/vidéos, règles CPP/PPO, motifs de rejet
- `references/google-play-specs.md` : limites officielles Google Play, specs captures, seuils Android Vitals, politiques
- `references/benchmarks.md` : données de conversion, impact des notes, gains liés à la vidéo, comportement sur les captures, benchmarks CPP/événements

### Dimensions et pondérations

| #   | Dimension                | Poids | Ce qu'elle couvre                                                                                      |
| --- | ------------------------ | ----- | ------------------------------------------------------------------------------------------------------ |
| 1   | Titre et sous-titre      | 20 %  | Utilisation des caractères, présence de mots-clés, clarté, équilibre marque/mots-clés                 |
| 2   | Description              | 15 %  | 3 premières lignes, densité de mots-clés (Google), CTA, structure, texte promotionnel                 |
| 3   | Visuels                  | 25 %  | Nombre/qualité/messages des captures, vidéo, icône, graphique de une                                  |
| 4   | Notes et avis            | 20 %  | Moyenne, volume, récence, réponses du développeur                                                      |
| 5   | Métadonnées et fraîcheur | 10 %  | Choix de catégorie, récence des mises à jour, nombre de localisations, sécurité des données           |
| 6   | Signaux de conversion    | 10 %  | Positionnement tarifaire, transparence des achats intégrés, preuve sociale, volume de téléchargements |

**Score final** = somme pondérée, sur 100.

### Interprétation des scores

| Score  | Note | Signification                                                             |
| ------ | ---- | ------------------------------------------------------------------------- |
| 85-100 | A    | Bien optimisé : concentre-toi sur les tests A/B et l'itération           |
| 70-84  | B    | Bonne base : des opportunités d'amélioration claires existent             |
| 50-69  | C    | Lacunes importantes : des corrections priorisées auront un fort impact    |
| 30-49  | D    | Optimisation majeure nécessaire sur plusieurs dimensions                  |
| 0-29   | F    | La fiche a besoin d'une refonte complète                                  |

---

## Phase 3 : Comparaison concurrentielle (optionnelle)

Si l'utilisateur fournit des URLs de concurrents ou demande une comparaison :

1. Récupère 2 à 3 concurrents de la même catégorie
2. Applique le même scoring sur chacun
3. Construis un tableau comparatif mettant en évidence les forces et faiblesses de l'app de l'utilisateur
4. Identifie les lacunes en mots-clés : termes sur lesquels les concurrents se positionnent mais pas l'app de l'utilisateur

Si aucun concurrent n'est précisé, suggère à l'utilisateur d'en fournir 2 à 3, ou propose de chercher les apps leaders de sa catégorie.

---

## Phase 4 : Générer le rapport

Utilise le template de `references/report-template.md` pour structurer le résultat.

Le rapport doit inclure :

1. **Tableau de bord** — tableau avec les 6 dimensions, scores et note
2. **3 gains rapides** — changements qui prennent moins d'1 heure et ont le plus fort impact
3. **Analyse détaillée** — bilan par dimension avec problèmes spécifiques et corrections
4. **Suggestions de mots-clés** — basées sur l'analyse titre/description et les écarts avec les concurrents
5. **Recommandations visuelles** — améliorations spécifiques pour les captures et la vidéo
6. **Plan d'action priorisé** — liste ordonnée par impact vs effort

### Règles de rapport

- Chaque recommandation doit être **spécifique et actionnable** (« Remplace le sous-titre X par Y » et non « Améliore le sous-titre »)
- Inclure le nombre de caractères pour toutes les recommandations de texte
- Signaler les différences propres à chaque plateforme (Apple vs Google) quand c'est pertinent
- Préciser ce qui ne peut PAS être évalué sans outils payants (volume de recherche, positions exactes)
- Quand tu proposes des modifications de mots-clés, expliquer POURQUOI chaque mot-clé est pertinent

---

## Règles propres à chaque plateforme

### App Store d'Apple : Points clés

- Titre (30 car.) + sous-titre (30 car.) + champ mots-clés (100 **octets**, masqué) = texte indexé
- Le champ mots-clés est en octets, pas en caractères : les scripts non-latins (arabe, chinois, japonais, coréen) consomment 2 à 3 octets par caractère
- La description longue n'est PAS indexée pour la recherche : à optimiser uniquement pour la conversion
- Le texte promotionnel (170 car.) n'affecte PAS le classement (confirmé par Apple)
- Ne jamais répéter un mot dans le titre, le sous-titre et le champ mots-clés (Apple indexe chaque mot une seule fois)
- Champ mots-clés : virgules, sans espaces (« photo,retouche,filtre » et non « photo, retouche, filtre »)
- Captures : jusqu'à 10 par appareil. Les 3 premières sont visibles dans la recherche : 90 % des utilisateurs ne dépassent jamais la 3e
- Les légendes de captures sont indexées depuis juin 2025 (extraction par IA)
- Pages produit personnalisées (jusqu'à 70) dans les résultats de recherche organiques depuis juillet 2025. Gain de conversion moyen de +5,9 %
- Vidéo de présentation : jusqu'à 3, de 15 à 30 s. Lecture automatique sans son : gain de conversion de +20 à +40 %
- SKStoreReviewController : 3 demandes maximum sur 365 jours
- Apple a une curation éditoriale humaine : la qualité et le design comptent davantage
- Voir `references/apple-specs.md` pour les specs complètes, dimensions et motifs de rejet

### Google Play : Points clés

- Titre (30 car.) + description courte (80 car.) + description complète (4 000 car.) = texte indexé
- La description complète EST indexée : vise une densité naturelle de 2 à 3 %
- Pas de champ mots-clés masqué : tous les mots-clés doivent figurer dans le texte visible
- NLP et compréhension sémantique de Google : le bourrage de mots-clés est détecté et pénalisé
- Interdit dans le titre : emojis, TOUT EN MAJUSCULES, « meilleur »/« n°1 »/« gratuit »/CTA (appliqué depuis 2021)
- Captures : **8 maximum** par appareil (contre 10 chez Apple)
- Graphique de une (1 024 x 500, dimensions exactes) requis pour les mises en avant
- La vidéo n'est pas lue automatiquement : seulement ~6 % des visiteurs cliquent (ROI faible vs iOS)
- Les Android Vitals affectent directement le classement : taux de plantage > 1,09 % ou ANR > 0,47 % = visibilité réduite
- Contenu promotionnel : à soumettre 14 jours avant pour les demandes de mise en avant. Les apps voient leurs acquisitions explorer doubler
- Listings personnalisés : jusqu'à 50 (ciblage utilisateurs inactifs, pays, campagnes publicitaires)
- Expériences de listing : tester jusqu'à 3 variantes, sur 7 jours minimum, 1 expérience à la fois
- Voir `references/google-play-specs.md` pour les specs complètes et les politiques

### Ce qu'Apple indexe vs ce que Google indexe

| Champ                    | Indexé par Apple ?        | Indexé par Google ?        |
| ------------------------ | ------------------------- | -------------------------- |
| Titre                    | Oui                       | Oui (signal le plus fort)  |
| Sous-titre / desc. courte | Oui                      | Oui                        |
| Champ mots-clés          | Oui (masqué)              | N'existe pas               |
| Description longue       | Non                       | Oui (fortement)            |
| Légendes de captures     | Oui (depuis 2025)         | Non                        |
| Événements intégrés      | Oui                       | N/A (LiveOps à la place)   |
| Nom du développeur       | Non                       | Partiel                    |
| Noms des achats intégrés | Oui                       | Oui                        |

---

## Liste de contrôle des problèmes fréquents

Signale ces points si tu les rencontres. Les éléments _(selon le niveau)_ doivent être évalués en tenant compte du niveau de maturité de la marque.

**À signaler dans tous les cas :**

- [ ] Note inférieure à 4,0
- [ ] Dernière mise à jour il y a plus de 3 mois
- [ ] Description Google Play sans stratégie de mots-clés (densité inférieure à 1 %)
- [ ] Graphique de une absent sur Google Play
- [ ] Champ mots-clés Apple probablement redondant avec le titre ou le sous-titre
- [ ] Mauvaise catégorie : l'app serait plus visible dans une autre catégorie moins concurrentielle
- [ ] Moins de 5 captures d'écran

**À signaler pour les apps Challenger et Établies seulement** _(pas une erreur pour les Dominantes) :_

- [ ] Titre sans mots-clés, uniquement la marque _(Dominante : la marque est le mot-clé)_
- [ ] Sous-titre ou description courte qui répète les mots-clés du titre
- [ ] 3 premières lignes de description génériques _(Dominante : peut être un choix de ton de marque)_
- [ ] Pas de vidéo de présentation _(Dominante : peut être rationnel si le produit est difficile à démontrer)_
- [ ] Captures sans messages ni légendes _(Dominante : des visuels de marque ou lifestyle peuvent mieux convertir)_
- [ ] Seulement 1 ou 2 localisations _(scorer par rapport au marché réel, pas en absolu)_
- [ ] Pas d'événements intégrés ni de contenu promotionnel _(les apps utilitaires Dominantes n'ont pas forcément besoin d'aide à la découverte)_

**À signaler pour tous, avec contexte :**

- [ ] Aucune réponse du développeur aux avis négatifs _(note le volume : répondre à 10M d'avis est un défi différent qu'à 1 000)_
- [ ] Texte « Nouveautés » générique _(acceptable à cadence hebdomadaire pour les apps Établies et Dominantes)_

---

## Questions à poser (si besoin)

1. Quelle est l'URL App Store ou Google Play ?
2. C'est ton app ou celle d'un concurrent ?
3. Dans quelle catégorie l'app est-elle en concurrence ?
4. As-tu des URLs de concurrents à comparer ?
5. Tu te concentres sur la visibilité en recherche, le taux de conversion, ou les deux ?
6. As-tu accès à App Store Connect ou à la Play Console ?

---

## Skills complémentaires

- **cro** : pour optimiser la conversion des landing pages web qui génèrent des installs
- **ad-creative** : pour créer des visuels publicitaires App Store et Google Play
- **analytics** : pour mettre en place l'attribution des installs et le suivi des événements in-app
- **customer-research** : pour comprendre les besoins des utilisateurs et leur langage afin d'alimenter la copy du listing
