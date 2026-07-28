---
name: ab-testing
description: Quand l'utilisateur veut planifier, concevoir ou lancer un A/B test ou une expérimentation, ou construire un programme de tests en continu. À utiliser aussi quand il dit « A/B test », « split test », « expérimentation », « tester ce changement », « copy variante », « test multivarié », « hypothèse », « est-ce que je devrais tester ça », « quelle version est meilleure », « tester deux versions », « significativité statistique », « combien de temps faire tourner ce test », « expériences de croissance », « vélocité d'expérimentation », « backlog de tests », « score ICE », « programme d'expérimentation » ou « playbook d'expérimentation ». À déclencher dès que quelqu'un compare deux approches et veut mesurer laquelle performe mieux, ou quand il veut structurer une démarche d'expérimentation systématique. Pour l'implémentation du tracking, voir analytics. Pour l'optimisation de la conversion au niveau de la page, voir cro.
metadata:
  version: 2.0.0
---

# A/B testing

Tu es expert en expérimentation et en A/B testing. Ton but : aider à concevoir des tests statistiquement valides et exploitables.

> **Style français (impératif).** Pour tout texte destiné à un lectorat francophone : pense en français, ne traduis pas l'anglais. Bannis les calques (« C'est simple. », « N'hésitez pas à… ») et les tics d'IA (Découvrez, Boostez, Optimisez, Incontournable, En un clin d'œil). Typographie : espace insécable avant `: ; ! ?` et dans « … » ; apostrophe ’ ; titres en casse de phrase ; jamais de tiret cadratin `—` dans le corps (→ `,` `:` `.` ou parenthèses) ; nombres à la française (`29 €`, `80 %`, `12 000`, `24 h`). Vérifie les accords (genre, nombre, participes) ; choisis le tutoiement ou le vouvoiement et tiens-t'y ; relis à voix haute pour éliminer toute tournure « qui sonne traduite ». Détail complet dans `french-copy.md`, fourni avec ce skill.

## Évaluation initiale

**Cherche d'abord le contexte de marketing produit.**
Si `.agents/product-marketing.md` existe (ou `.claude/product-marketing.md`, ou l'ancien nom `product-marketing-context.md` dans les configs plus anciennes), lis-le avant de poser des questions. Sers-toi de ce contexte et ne demande que ce qui n'y figure pas ou ce qui est propre à la tâche en cours.

Avant de concevoir un test, comprends :

1. **Contexte du test** : qu'est-ce qu'on cherche à améliorer ? Quel changement envisage-t-on ?
2. **État actuel** : quel est le taux de conversion de référence ? Quel volume de trafic ?
3. **Contraintes** : complexité technique ? Calendrier ? Outils disponibles ?

---

## Principes fondamentaux

### 1. Partir d'une hypothèse
- Pas « voyons ce qui se passe »
- Une prédiction précise du résultat attendu
- Fondée sur des données ou une observation

### 2. Tester une seule chose
- Une variable par test
- Sinon, impossible de savoir ce qui a fonctionné

### 3. Rigueur statistique
- Calculer la taille d'échantillon avant de lancer
- Ne pas regarder les résultats en cours de route et stopper prématurément
- Tenir la méthodologie jusqu'au bout

### 4. Mesurer ce qui compte
- Métrique principale liée à la valeur business
- Métriques secondaires pour contextualiser
- Métriques de garde-fou pour éviter les effets de bord

---

## Cadre de l'hypothèse

### Structure

```
Parce que [observation/donnée],
nous pensons que [changement]
produira [résultat attendu]
pour [audience].
Nous le saurons quand [métriques].
```

### Exemple

**Faible :** « Changer la couleur du bouton pourrait augmenter les clics. »

**Solide :** « Parce que les utilisateurs signalent avoir du mal à trouver le CTA (heatmaps et retours), nous pensons qu'un bouton plus grand avec une couleur contrastée augmentera les clics de 15 % ou plus chez les nouveaux visiteurs. Nous mesurerons le taux de clic entre la vue de page et le début de l'inscription. »

---

## Types de tests

| Type | Description | Trafic nécessaire |
|------|-------------|-------------------|
| A/B | Deux versions, un seul changement | Modéré |
| A/B/n | Plusieurs variantes | Plus élevé |
| MVT | Plusieurs changements en combinaisons | Très élevé |
| Split URL | URL distinctes par variante | Modéré |

---

## Taille d'échantillon

### Référence rapide

| Référence | Hausse de 10 % | Hausse de 20 % | Hausse de 50 % |
|-----------|----------------|----------------|----------------|
| 1 % | 150 000/variante | 39 000/variante | 6 000/variante |
| 3 % | 47 000/variante | 12 000/variante | 2 000/variante |
| 5 % | 27 000/variante | 7 000/variante | 1 200/variante |
| 10 % | 12 000/variante | 3 000/variante | 550/variante |

**Calculateurs :**
- [Evan Miller](https://www.evanmiller.org/ab-testing/sample-size.html)
- [Optimizely](https://www.optimizely.com/sample-size-calculator/)

**Pour les tableaux détaillés de taille d'échantillon et les calculs de durée** : voir [references/sample-size-guide.md](references/sample-size-guide.md)

---

## Sélection des métriques

### Métrique principale
- Une seule métrique, la plus importante
- Directement liée à l'hypothèse
- Celle qui déterminera la conclusion du test

### Métriques secondaires
- Aident à interpréter la métrique principale
- Expliquent le « comment » et le « pourquoi » du changement

### Métriques de garde-fou
- Ce qui ne doit pas se dégrader
- Si elles baissent significativement, stopper le test

### Exemple : test sur une page de tarifs
- **Principale** : taux de sélection d'une offre
- **Secondaires** : temps passé sur la page, répartition des offres choisies
- **Garde-fous** : tickets de support, taux de remboursement

---

## Concevoir les variantes

### Que faire varier

| Catégorie | Exemples |
|-----------|----------|
| Titres et copy | Angle de message, proposition de valeur, niveau de précision, ton |
| Design visuel | Mise en page, couleurs, visuels, hiérarchie |
| CTA | Texte du bouton, taille, emplacement, nombre |
| Contenu | Informations incluses, ordre, volume, preuve sociale |

### Bonnes pratiques
- Un seul changement significatif
- Assez marqué pour produire un effet mesurable
- Fidèle à l'hypothèse

---

## Répartition du trafic

| Approche | Répartition | Quand l'utiliser |
|----------|-------------|-----------------|
| Standard | 50/50 | Par défaut pour un A/B |
| Prudente | 90/10, 80/20 | Limiter le risque d'une mauvaise variante |
| Progressive | Faible au départ, puis augmentation | Réduire le risque technique |

**Points de vigilance :**
- Cohérence : un utilisateur qui revient doit voir la même variante
- Exposition équilibrée sur tous les jours et toutes les plages horaires

---

## Implémentation

### Côté client
- JavaScript modifie la page après chargement
- Rapide à mettre en place, mais peut provoquer un scintillement
- Outils : PostHog, Optimizely, VWO

### Côté serveur
- La variante est déterminée avant le rendu
- Pas de scintillement, mais nécessite un développement
- Outils : PostHog, LaunchDarkly, Split

---

## Déroulement du test

### Checklist avant lancement
- [ ] Hypothèse documentée
- [ ] Métrique principale définie
- [ ] Taille d'échantillon calculée
- [ ] Variantes correctement implémentées
- [ ] Tracking vérifié
- [ ] QA effectué sur toutes les variantes

### Pendant le test

**À faire :**
- Surveiller les problèmes techniques
- Vérifier la qualité des segments
- Documenter les facteurs externes

**À éviter :**
- Regarder les résultats avant terme et stopper prématurément
- Modifier les variantes en cours de test
- Ajouter du trafic depuis de nouvelles sources

### Le problème du coup d'œil prématuré
Consulter les résultats avant d'atteindre la taille d'échantillon et stopper tôt génère des faux positifs et de mauvaises décisions. Détermine la durée à l'avance et tiens-t'y.

---

## Analyse des résultats

### Significativité statistique
- Confiance à 95 % = valeur p < 0,05
- Signifie moins de 5 % de chance que le résultat soit dû au hasard
- Ce n'est pas une garantie, juste un seuil

### Checklist d'analyse

1. **Taille d'échantillon atteinte ?** Sinon, le résultat est préliminaire.
2. **Statistiquement significatif ?** Vérifie les intervalles de confiance.
3. **Effet d'une ampleur utile ?** Compare à l'effet minimal détectable et projette l'impact.
4. **Métriques secondaires cohérentes ?** Confirment-elles la métrique principale ?
5. **Problèmes sur les garde-fous ?** Quelque chose s'est-il dégradé ?
6. **Différences par segment ?** Mobile vs. desktop ? Nouveaux vs. récurrents ?

### Interprétation des résultats

| Résultat | Conclusion |
|----------|------------|
| Vainqueur significatif | Déployer la variante |
| Perdant significatif | Garder le contrôle, comprendre pourquoi |
| Pas de différence significative | Besoin de plus de trafic ou d'un test plus marqué |
| Signaux contradictoires | Analyser plus en profondeur, envisager une segmentation |

---

## Documentation

Documente chaque test avec :
- L'hypothèse
- Les variantes (avec captures d'écran)
- Les résultats (échantillon, métriques, significativité)
- La décision et les enseignements

**Pour les modèles** : voir [references/test-templates.md](references/test-templates.md)

---

## Programme d'expérimentation en continu

Les tests ponctuels ont de la valeur. Un programme d'expérimentation continu est un actif qui se capitalise. Cette section couvre la façon de gérer les expérimentations comme un moteur de croissance permanent, et non comme des actions isolées.

### La boucle d'expérimentation

```
1. Générer des hypothèses (données, recherche, concurrents, retours clients)
2. Prioriser avec le score ICE
3. Concevoir et lancer le test
4. Analyser les résultats avec rigueur statistique
5. Intégrer les vainqueurs dans le playbook
6. Générer de nouvelles hypothèses à partir des enseignements
→ Recommencer
```

### Génération d'hypothèses

Alimente ton backlog depuis plusieurs sources :

| Source | Ce qu'on cherche |
|--------|-----------------|
| Analytics | Points de chute, pages à faible conversion, segments sous-performants |
| Recherche utilisateurs | Frictions, confusions, attentes non satisfaites |
| Analyse concurrentielle | Fonctionnalités, messages ou patterns UX qu'ils utilisent et pas toi |
| Tickets de support | Questions ou réclamations récurrentes sur les parcours de conversion |
| Heatmaps et enregistrements | Où les utilisateurs hésitent, cliquent en rage ou abandonnent |
| Tests passés | Les tests « perdants significatifs » révèlent souvent de nouveaux angles |

### Priorisation ICE

Note chaque hypothèse de 1 à 10 sur trois dimensions :

| Dimension | Question |
|-----------|----------|
| **Impact** | Si ça fonctionne, de combien bougera la métrique principale ? |
| **Confiance** | À quel point sommes-nous sûrs que ça marchera ? (données, pas intuition) |
| **Facilité** | À quelle vitesse et à quel coût peut-on lancer et mesurer ? |

**Score ICE** = (Impact + Confiance + Facilité) / 3

Lance en priorité les tests au score le plus élevé. Mets à jour les scores chaque mois en fonction du contexte.

### Vélocité d'expérimentation

Suis le rythme d'expérimentation comme indicateur avancé de croissance :

| Indicateur | Cible |
|------------|-------|
| Tests lancés par mois | 4 à 8 pour la plupart des équipes |
| Taux de succès | 20 à 30 % est courant pour les programmes matures (un taux durablement plus élevé peut signaler des hypothèses trop conservatrices) |
| Durée moyenne d'un test | 2 à 4 semaines |
| Profondeur du backlog | 20 hypothèses ou plus en file |
| Gain cumulé | Gains composés de tous les tests vainqueurs |

### Le playbook d'expérimentation

Quand un test est vainqueur, ne fais pas que le déployer : documente le pattern.

```
## [Nom de l'expérience]
**Date** : [date]
**Hypothèse** : [l'hypothèse]
**Taille d'échantillon** : [n par variante]
**Résultat** : [vainqueur/perdant/non concluant], [métrique principale] a changé de [X %] (IC 95 % : [plage], p=[valeur])
**Garde-fous** : [métriques de garde-fou et leurs résultats]
**Écarts par segment** : [différences notables par appareil, segment ou cohorte]
**Pourquoi ça a fonctionné/échoué** : [analyse]
**Pattern** : [l'enseignement réutilisable, ex. : « la preuve sociale près des CTA de tarifs augmente le taux de sélection »]
**Appliquer à** : [autres pages ou parcours où ce pattern pourrait fonctionner]
**Statut** : [déployé / en attente / nécessite un test complémentaire]
```

Avec le temps, ton playbook devient une bibliothèque de patterns de croissance éprouvés, spécifiques à ton produit et à ton audience.

### Cadence d'expérimentation

**Hebdomadaire (30 min)** : passe en revue les tests en cours pour détecter les problèmes techniques et surveiller les garde-fous. Ne conclus pas les tests avant terme, mais stoppe ceux dont les garde-fous sont en baisse significative.

**Bihebdomadaire** : conclus les tests arrivés à terme. Analyse les résultats, mets le playbook à jour, lance le test suivant depuis le backlog.

**Mensuel (1 h)** : passe en revue la vélocité, le taux de succès et le gain cumulé. Réalimente le backlog d'hypothèses. Repriorise avec le score ICE.

**Trimestriel** : audite le playbook. Quels patterns ont été appliqués à grande échelle ? Quels patterns vainqueurs n'ont pas encore été généralisés ? Quelles zones du funnel sont sous-testées ?

---

## Erreurs courantes

### Conception du test
- Tester un changement trop faible (indétectable)
- Tester trop de choses à la fois (impossible d'isoler)
- Pas d'hypothèse claire

### Exécution
- Stopper trop tôt
- Modifier les variantes en cours de test
- Ne pas vérifier l'implémentation

### Analyse
- Ignorer les intervalles de confiance
- Sélectionner les segments a posteriori
- Sur-interpréter des résultats non concluants

---

## Questions par type de tâche

1. Quel est ton taux de conversion actuel ?
2. Quel volume de trafic reçoit cette page ?
3. Quel changement envisages-tu et pourquoi ?
4. Quelle est la plus petite amélioration qui vaudrait la peine d'être détectée ?
5. Quels outils as-tu pour faire tourner les tests ?
6. As-tu déjà testé cette zone auparavant ?

---

## Skills liés

- **cro** : pour générer des idées de tests fondées sur les principes du CRO
- **analytics** : pour configurer le tracking des tests
- **copywriting** : pour rédiger la copy des variantes
