# Patterns de contenu AEO et GEO

Blocs de contenu réutilisables, conçus pour les moteurs de réponse et la citation par l'IA.

Les exemples de copy ci-dessous sont en vouvoiement par défaut, conformément à la convention du skill.

---

## Sommaire
- Patterns AEO (Bloc définition, Bloc étape par étape, Tableau comparatif, Bloc pour / contre, Bloc FAQ, Bloc liste sélective)
- Patterns GEO (Bloc statistique avec source, Bloc citation d'expert, Bloc affirmation faisant autorité, Bloc réponse autonome, Bloc sandwich de preuves)
- Tactiques GEO par domaine (Technologie, Santé / médecine, Finance, Droit, Business / marketing)
- Optimisation pour la recherche vocale (Formats de questions, Structure de réponse orale)

## Patterns AEO (Answer Engine Optimization)

Ces patterns aident le contenu à apparaître dans les extraits en vedette, les AI Overviews, les résultats de recherche vocale et les boîtes de réponse.

### Bloc définition

À utiliser pour les requêtes « Qu'est-ce que [X] ? ».

```markdown
## Qu'est-ce que [terme] ?

[Terme] est [définition concise en 1 phrase]. [Développement en 1-2 phrases avec les caractéristiques clés]. [Contexte bref sur l'intérêt ou l'usage].
```

**Exemple :**
```markdown
## Qu'est-ce que l'optimisation pour les moteurs de réponse ?

L'optimisation pour les moteurs de réponse (AEO) est la pratique qui consiste à structurer le contenu pour que les systèmes IA puissent l'extraire et le présenter comme réponse directe aux questions des utilisateurs. Contrairement au SEO traditionnel axé sur le classement dans les résultats de recherche, l'AEO cible les extraits en vedette, les AI Overviews et les assistants vocaux. Cette approche est devenue incontournable depuis que plus de 60 % des recherches Google se terminent sans clic.
```

### Bloc étape par étape

À utiliser pour les requêtes « Comment faire [X] ». Optimal pour les snippets en liste.

```markdown
## Comment [action / objectif]

[Vue d'ensemble du processus en 1 phrase]

1. **[Nom de l'étape]** : [Description claire de l'action en 1-2 phrases]
2. **[Nom de l'étape]** : [Description claire de l'action en 1-2 phrases]
3. **[Nom de l'étape]** : [Description claire de l'action en 1-2 phrases]
4. **[Nom de l'étape]** : [Description claire de l'action en 1-2 phrases]
5. **[Nom de l'étape]** : [Description claire de l'action en 1-2 phrases]

[En option : note sur le résultat attendu ou l'estimation de temps]
```

**Exemple :**
```markdown
## Comment optimiser un contenu pour les extraits en vedette

Décrocher un extrait en vedette demande un formatage stratégique et des réponses directes aux requêtes ciblées.

1. **Repérer les opportunités** : utilisez des outils comme Semrush ou Ahrefs pour identifier les mots-clés où les concurrents détiennent des extraits que vous pourriez leur prendre.
2. **Adapter le format** : analysez si l'extrait actuel est un paragraphe, une liste ou un tableau, puis formatez votre contenu en conséquence.
3. **Répondre directement** : formulez une réponse claire et concise (40-60 mots pour les snippets paragraphe) immédiatement après le titre-question.
4. **Ajouter du contexte** : développez votre réponse avec des exemples, des données et des avis d'experts dans les paragraphes suivants.
5. **Structurer les titres** : placez votre question cible en H2 ou H3, avec la réponse qui suit immédiatement.

La plupart des extraits en vedette apparaissent dans les 2-4 semaines après la publication d'un contenu bien optimisé.
```

### Tableau comparatif

À utiliser pour les requêtes « [X] vs [Y] ». Optimal pour les snippets en tableau.

```markdown
## [Option A] vs [Option B] : [bref descriptif]

| Critère | [Option A] | [Option B] |
|---------|------------|------------|
| [Critère 1] | [Valeur / description] | [Valeur / description] |
| [Critère 2] | [Valeur / description] | [Valeur / description] |
| [Critère 3] | [Valeur / description] | [Valeur / description] |
| [Critère 4] | [Valeur / description] | [Valeur / description] |
| Idéal pour | [Cas d'usage] | [Cas d'usage] |

**En résumé** : [recommandation en 1-2 phrases selon les besoins différents]
```

### Bloc pour / contre

À utiliser pour les requêtes d'évaluation : « Vaut-il la peine d'utiliser [X] ? », « Dois-je [X] ? »

```markdown
## Avantages et inconvénients de [sujet]

[Vue d'ensemble du contexte d'évaluation en 1 phrase]

### Pour

- **[Catégorie d'avantage]** : [explication précise]
- **[Catégorie d'avantage]** : [explication précise]
- **[Catégorie d'avantage]** : [explication précise]

### Contre

- **[Catégorie d'inconvénient]** : [explication précise]
- **[Catégorie d'inconvénient]** : [explication précise]
- **[Catégorie d'inconvénient]** : [explication précise]

**Verdict** : [conclusion équilibrée en 1-2 phrases avec recommandation]
```

### Bloc FAQ

À utiliser pour les pages thématiques avec plusieurs questions fréquentes. Indispensable pour le schema FAQPage.

```markdown
## Questions fréquentes

### [Question formulée exactement comme les utilisateurs la posent] ?

[Réponse directe en première phrase]. [Contexte complémentaire en 2-3 phrases supplémentaires].

### [Question formulée exactement comme les utilisateurs la posent] ?

[Réponse directe en première phrase]. [Contexte complémentaire en 2-3 phrases supplémentaires].

### [Question formulée exactement comme les utilisateurs la posent] ?

[Réponse directe en première phrase]. [Contexte complémentaire en 2-3 phrases supplémentaires].
```

**Conseils pour les questions FAQ :**
- Formule les questions de façon naturelle (« Comment faire… ? » et non « Comment peut-on… ? »)
- Inclure des mots interrogatifs : quoi, comment, pourquoi, quand, où, qui, lequel
- S'aligner sur les requêtes « Les internautes demandent aussi » des résultats de recherche
- Garder les réponses entre 50 et 100 mots

### Bloc liste sélective

À utiliser pour les requêtes « Meilleur [X] », « Top [X] », « [Nombre] façons de [X] ».

```markdown
## [Nombre] meilleur(s) [éléments] pour [objectif / usage]

[Introduction en 1-2 phrases précisant le contexte et les critères de sélection]

### 1. [Nom de l'élément]

[Raison de l'inclusion en 2-3 phrases avec les avantages spécifiques]

### 2. [Nom de l'élément]

[Raison de l'inclusion en 2-3 phrases avec les avantages spécifiques]

### 3. [Nom de l'élément]

[Raison de l'inclusion en 2-3 phrases avec les avantages spécifiques]
```

---

## Patterns GEO (Generative Engine Optimization)

Ces patterns optimisent le contenu pour être cité par les assistants IA : ChatGPT, Claude, Perplexity et Gemini.

### Bloc statistique avec source

Les statistiques augmentent les taux de citation IA de 15-30 %. Toujours inclure les sources.

```markdown
[Affirmation]. Selon [source / organisation], [statistique précise avec chiffre et période]. [Contexte expliquant pourquoi c'est significatif].
```

**Exemple :**
```markdown
L'optimisation mobile n'est plus optionnelle pour le SEO. Selon le rapport Core Web Vitals 2024 de Google, 70 % du trafic web provient désormais des appareils mobiles, et les pages ne répondant pas aux critères d'utilisabilité mobile affichent un taux de rebond supérieur de 24 %. Cela fait de l'indexation mobile-first un facteur de classement incontournable.
```

### Bloc citation d'expert

L'attribution à un expert nommé renforce la crédibilité et augmente la probabilité de citation.

```markdown
« [Citation directe de l'expert] », déclare [Prénom Nom], [titre / fonction] chez [organisation]. [1 phrase de contexte ou d'interprétation].
```

**Exemple :**
```markdown
« Le passage d'une recherche pilotée par les mots-clés à une découverte pilotée par l'intention représente le changement le plus profond du SEO depuis l'indexation mobile-first », déclare Rand Fishkin, cofondateur de SparkToro. Ce constat souligne pourquoi les stratégies de contenu doivent évoluer au-delà de l'optimisation traditionnelle par mots-clés.
```

### Bloc affirmation faisant autorité

Structure les affirmations pour une extraction IA facile, avec attribution claire.

```markdown
[Sujet] [verbe : est / présente / exige / implique] [affirmation claire et précise]. [Source] [confirme / rapporte / a constaté] que [preuve à l'appui]. Cela [explique / signifie / suggère] [implication ou action].
```

**Exemple :**
```markdown
L'E-E-A-T est au cœur de l'évaluation de la qualité du contenu par Google. Les directives Search Quality Rater de Google confirment que la confiance est le facteur le plus critique, indiquant que « les pages peu fiables ont un E-E-A-T faible, quelle que soit l'expérience, l'expertise ou l'autorité qu'elles semblent posséder ». Cela signifie que les créateurs de contenu doivent placer la transparence et l'exactitude au-dessus de toute autre tactique d'optimisation.
```

### Bloc réponse autonome

Crée des énoncés citables et indépendants que l'IA peut extraire directement.

```markdown
**[Sujet / question]** : [réponse complète et autonome, compréhensible sans contexte supplémentaire. Inclure des détails précis, des chiffres ou des exemples en 2-3 phrases.]
```

**Exemple :**
```markdown
**Longueur idéale d'un article de blog pour le SEO** : la longueur optimale pour un article de blog SEO est de 1 500 à 2 500 mots sur les sujets concurrentiels. Cette plage permet une couverture thématique complète tout en maintenant l'engagement du lecteur. Les recherches HubSpot montrent que le contenu long format génère 77 % de backlinks supplémentaires par rapport aux articles courts, ce qui impacte directement le classement.
```

### Bloc sandwich de preuves

Structure les affirmations avec des preuves pour une crédibilité maximale.

```markdown
[Affirmation d'ouverture].

Éléments de preuve :
- [Point de données 1 avec source]
- [Point de données 2 avec source]
- [Point de données 3 avec source]

[Conclusion reliant les preuves à une recommandation concrète].
```

---

## Tactiques GEO par domaine

Différents domaines de contenu bénéficient de signaux d'autorité différents.

### Contenu technologique
- Mettre l'accent sur la précision technique et la terminologie correcte
- Inclure les numéros de version et les dates pour les logiciels / outils
- Référencer la documentation officielle
- Ajouter des exemples de code là où c'est pertinent

### Contenu santé / médecine
- Citer des études évaluées par des pairs avec les détails de publication
- Inclure les qualifications des experts (médecin, infirmier, etc.)
- Signaler les limites des études et leur contexte
- Ajouter des dates de « dernière révision »

### Contenu finance
- Référencer les organismes de régulation (AMF, BCE, etc.)
- Inclure des chiffres précis avec des périodes de référence
- Préciser que l'information est éducative et non un conseil
- Citer des institutions financières reconnues

### Contenu juridique
- Citer les lois, textes et règlements spécifiques
- Préciser la juridiction clairement
- Inclure des avertissements professionnels
- Indiquer quand une consultation professionnelle est conseillée

### Contenu business / marketing
- Inclure des études de cas avec des résultats mesurables
- Référencer des études sectorielles et des rapports reconnus
- Ajouter des variations en pourcentage avec les périodes correspondantes
- Citer des leaders d'opinion reconnus du secteur

---

## Optimisation pour la recherche vocale

Les requêtes vocales sont conversationnelles et formulées sous forme de questions. Optimise pour ces patterns :

### Formats de questions pour la recherche vocale
- « Qu'est-ce que… »
- « Comment faire… »
- « Où trouver… »
- « Pourquoi… »
- « Quand faut-il… »
- « Qui est… »

### Structure de réponse adaptée à l'oral
- Commencer par la réponse directe (30 mots maximum, idéalement)
- Utiliser un langage naturel et conversationnel
- Éviter le jargon sauf pour un public expert
- Inclure le contexte local si pertinent
- Structurer pour une lecture à voix haute fluide
