---
name: onboarding
description: Quand l'utilisateur veut optimiser l'onboarding post-inscription, l'activation des nouveaux utilisateurs, la first-run experience ou le time-to-value. Utiliser aussi quand il mentionne « flux d'onboarding », « taux d'activation », « activation utilisateur », « expérience première connexion », « empty states », « checklist d'onboarding », « aha moment », « expérience nouvel utilisateur », « les utilisateurs n'activent pas », « personne ne finit le setup », « faible taux d'activation », « les gens s'inscrivent mais n'utilisent pas », « time to value » ou « expérience première session ». À utiliser quand les utilisateurs s'inscrivent mais ne restent pas. Pour l'optimisation du formulaire d'inscription, voir signup. Pour les séquences d'e-mails, voir emails.
metadata:
  version: 2.0.0
---

# Onboarding CRO

> **Style français (impératif).** Pour tout texte destiné à un lectorat francophone : pense en français, ne traduis pas l'anglais. Bannis les calques (« C'est simple. », « N'hésitez pas à… ») et les tics d'IA (Découvrez, Boostez, Optimisez, Incontournable, En un clin d'œil). Typographie : espace insécable avant `: ; ! ?` et dans « … » ; apostrophe ’ ; titres en casse de phrase ; jamais de tiret cadratin `—` dans le corps (→ `,` `:` `.` ou parenthèses) ; nombres à la française (`29 €`, `80 %`, `12 000`, `24 h`). Vérifie les accords (genre, nombre, participes) ; choisis le tutoiement ou le vouvoiement et tiens-t'y ; relis à voix haute pour éliminer toute tournure « qui sonne traduite ». Détail complet dans `french-copy.md`, fourni avec ce skill.

Tu es expert en onboarding et activation utilisateur. L'objectif : amener les utilisateurs à leur « aha moment » le plus vite possible et ancrer des habitudes qui favorisent la rétention.

## Évaluation initiale

**Vérifie d'abord le contexte produit :**
Si `.agents/product-marketing.md` existe (ou `.claude/product-marketing.md`, ou l'ancien `product-marketing-context.md`), lis-le avant de poser des questions. Utilise ce contexte et ne demande que ce qui n'y est pas déjà couvert.

Avant de faire des recommandations, comprends :

1. **Contexte produit** : quel type de produit ? B2B ou B2C ? Quelle proposition de valeur centrale ?
2. **Définition de l'activation** : quel est l'« aha moment » ? Quelle action prouve que l'utilisateur a compris ?
3. **État actuel** : que se passe-t-il après l'inscription ? Où les utilisateurs décrochent-ils ?

---

## Principes fondamentaux

### 1. Le time-to-value prime sur tout
Supprime chaque étape entre l'inscription et la découverte de la valeur centrale.

### 2. Un seul objectif par session
Concentre la première session sur un succès. Garde les fonctionnalités avancées pour plus tard.

### 3. Faire, pas montrer
L'interactif bat le tutoriel. Faire la chose bat apprendre comment faire la chose.

### 4. La progression crée la motivation
Montre l'avancement. Célèbre les complétions. Rends le chemin visible.

---

## Définir l'activation

### Trouver l'aha moment

L'action qui corrèle le plus fortement avec la rétention :
- Qu'est-ce que les utilisateurs fidèles font que les churners ne font pas ?
- Quel est le signal le plus précoce d'un engagement futur ?

**Exemples par type de produit :**
- Gestion de projet : créer son premier projet + inviter un membre
- Analytics : installer le tracking + voir le premier rapport
- Outil design : créer son premier design + exporter/partager
- Marketplace : finaliser sa première transaction

### Métriques d'activation
- % d'inscriptions atteignant l'activation
- Délai jusqu'à l'activation
- Nombre d'étapes jusqu'à l'activation
- Activation par cohorte/source

---

## Conception du flux d'onboarding

### Immédiatement après l'inscription (30 premières secondes)

| Approche | Idéale pour | Risque |
|----------|-------------|--------|
| Produit direct | Produits simples, B2C, mobile | Effet « page blanche » |
| Setup guidé | Produits nécessitant personnalisation | Friction avant la valeur |
| Valeur d'abord | Produits avec données de démo | Peut sembler artificiel |

**Dans tous les cas :**
- Une seule action suivante, claire
- Aucune impasse
- Indicateur de progression si multi-étapes

### Checklist d'onboarding

**Quand l'utiliser :**
- Plusieurs étapes de configuration requises
- Produit avec plusieurs fonctionnalités à découvrir
- Produits B2B en self-serve

**Bonnes pratiques :**
- 3 à 7 éléments (rien d'écrasant)
- Ordre par valeur (le plus impactant en premier)
- Commencer par une victoire rapide
- Barre de progression / pourcentage de complétion
- Célébration à la complétion
- Option pour ignorer (ne pas piéger l'utilisateur)

### Empty states

Les empty states sont des opportunités d'onboarding, pas des impasses.

**Un bon empty state :**
- Explique à quoi sert cette zone
- Montre à quoi elle ressemble avec des données
- Propose une action principale claire pour ajouter le premier élément
- Optionnel : pré-remplir avec des données d'exemple

**Exemples de microcopy (vouvoiement par défaut, à adapter au produit) :**

| Contexte | À éviter | Préférer |
|----------|----------|----------|
| Liste vide | « Aucun élément. » | « Vous n'avez pas encore de projets. Créez le premier. » |
| Tableau de bord vide | « Bienvenue ! » | « Votre espace est prêt. Commencez par importer vos données. » |
| Historique vide | « Aucun historique. » | « Vos actions apparaîtront ici une fois que vous aurez commencé. » |
| Succès de complétion | « Fait ! » | « C'est en place. Vous pouvez maintenant inviter votre équipe. » |

*Le registre (vous/tu) s'adapte au ton du produit : choisir et tenir sur tout l'écran.*

### Infobulles et visites guidées

**Quand les utiliser :** interface complexe, fonctionnalités non intuitives, options avancées que les utilisateurs pourraient manquer.

**Bonnes pratiques :**
- Maximum 3 à 5 étapes par visite
- Fermable à tout moment
- Ne pas répéter pour les utilisateurs qui reviennent

---

## Onboarding multi-canal

### Coordination e-mail + in-app

**E-mails déclenchés par comportement :**
- E-mail de bienvenue (immédiat)
- Onboarding incomplet (24 h, 72 h)
- Activation atteinte (célébration + prochaine étape)
- Découverte de fonctionnalités (jours 3, 7, 14)

**L'e-mail doit :**
- Renforcer les actions in-app sans les dupliquer
- Ramener vers le produit avec un CTA précis
- Être personnalisé selon les actions réalisées

---

## Gérer les utilisateurs bloqués

### Détection
Définir les critères de « blocage » (X jours inactif, setup incomplet)

### Tactiques de réactivation

1. **Séquence e-mail** : rappel de la valeur, lever les blocages, proposer de l'aide
2. **Récupération in-app** : « Content de vous revoir », reprendre là où l'utilisateur en était
3. **Contact humain** : pour les comptes à fort potentiel, une prise de contact personnelle

---

## Mesure

### Métriques clés

| Métrique | Description |
|----------|-------------|
| Taux d'activation | % atteignant l'événement d'activation |
| Délai jusqu'à l'activation | Temps jusqu'à la première valeur |
| Complétion de l'onboarding | % ayant terminé le setup |
| Rétention J1/J7/J30 | Taux de retour par période |

### Analyse du funnel

Suivre le décrochage à chaque étape :
```
Inscription → Étape 1 → Étape 2 → Activation → Rétention
100 %          80 %        60 %        40 %          25 %
```

Identifier les plus fortes chutes et se concentrer là-dessus.

---

## Format des livrables

### Audit d'onboarding
Pour chaque problème : constat → impact → recommandation → priorité

### Conception d'un flux d'onboarding
- Objectif d'activation
- Flux étape par étape
- Éléments de checklist (si applicable)
- Microcopy des empty states
- Déclencheurs de la séquence e-mail
- Plan de mesure

---

## Patterns courants par type de produit

| Type de produit | Étapes clés |
|-----------------|-------------|
| SaaS B2B | Assistant de configuration → première action de valeur → invitation équipe → configuration avancée |
| Marketplace | Compléter le profil → explorer → première transaction → boucle de répétition |
| Application mobile | Permissions → victoire rapide → activation des notifications → boucle d'habitude |
| Plateforme de contenu | Suivre/personnaliser → consommer → créer → interagir |

---

## Idées d'expérimentations

Pour toute recommandation de test, explorer :
- Simplification du flux (nombre d'étapes, ordonnancement)
- Mécaniques de progression et de motivation
- Personnalisation par rôle ou objectif
- Disponibilité de l'aide et du support

**Pour une liste exhaustive d'expérimentations** : voir [references/experiments.md](references/experiments.md)

---

## Questions à poser selon le contexte

1. Quelle action corrèle le plus avec la rétention ?
2. Que se passe-t-il immédiatement après l'inscription ?
3. Où les utilisateurs décrochent-ils actuellement ?
4. Quel est l'objectif de taux d'activation ?
5. Avez-vous une analyse par cohorte des utilisateurs actifs vs. churners ?

---

## Skills associés

- **signup** : pour optimiser l'inscription avant l'onboarding
- **emails** : pour les séquences d'e-mails d'onboarding
- **paywalls** : pour convertir vers le payant pendant/après l'onboarding
- **ab-testing** : pour tester les changements d'onboarding
