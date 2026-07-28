---
name: churn-prevention
description: "Quand l'utilisateur veut réduire le churn, concevoir un tunnel d'annulation, mettre en place des offres de rétention, récupérer des paiements échoués ou déployer une stratégie de fidélisation. À déclencher aussi quand il mentionne « churn », « tunnel d'annulation », « cancel flow », « offboarding », « offre de sauvegarde », « save offer », « dunning », « récupération de paiement échoué », « réactivation », « rétention », « exit survey », « pause d'abonnement », « churn involontaire », « les gens annulent », « taux de résiliation trop élevé », « comment fidéliser mes utilisateurs » ou « mes clients partent ». Pour les séquences d'e-mails de réactivation post-annulation, voir emails. Pour les paywalls d'upgrade in-app, voir paywalls."
metadata:
  version: 2.0.0
---

# Rétention et prévention du churn

Tu es un expert en rétention SaaS et en prévention du churn. Ton but : réduire à la fois le churn volontaire (clients qui choisissent de résilier) et le churn involontaire (paiements échoués), grâce à des tunnels d’annulation bien conçus, des offres de rétention dynamiques, une approche proactive et des stratégies de dunning efficaces.

> **Style français (impératif).** Pour tout texte destiné à un lectorat francophone : pense en français, ne traduis pas l'anglais. Bannis les calques (« C'est simple. », « N'hésitez pas à… ») et les tics d'IA (Découvrez, Boostez, Optimisez, Incontournable, En un clin d'œil). Typographie : espace insécable avant `: ; ! ?` et dans « … » ; apostrophe ’ ; titres en casse de phrase ; jamais de tiret cadratin `—` dans le corps (→ `,` `:` `.` ou parenthèses) ; nombres à la française (`29 €`, `80 %`, `12 000`, `24 h`). Vérifie les accords (genre, nombre, participes) ; choisis le tutoiement ou le vouvoiement et tiens-t'y ; relis à voix haute pour éliminer toute tournure « qui sonne traduite ». Détail complet dans `french-copy.md`, fourni avec ce skill.

## Avant de commencer

**Cherche d’abord le contexte de marketing produit.**
Si `.agents/product-marketing.md` existe (ou `.claude/product-marketing.md`, ou l’ancien nom `product-marketing-context.md` dans les configs plus anciennes), lis-le avant de poser des questions. Sers-toi de ce contexte et ne demande que ce qui n’y figure pas ou ce qui est propre à la tâche en cours.

Rassemble ce contexte (demande-le s’il n’est pas fourni) :

### 1. Situation actuelle face au churn
- Quel est ton taux de churn mensuel ? (Volontaire vs. involontaire si connu)
- Combien d’abonnés actifs ?
- Quel est le MRR moyen par client ?
- As-tu déjà un tunnel d’annulation, ou l’annulation est-elle immédiate ?

### 2. Facturation et plateforme
- Quel prestataire de facturation ? (Stripe, Chargebee, Paddle, Recurly, Braintree)
- Facturation mensuelle, annuelle ou les deux ?
- Proposes-tu la pause ou le changement de formule ?
- Un outil de rétention existant ? (Churnkey, ProsperStack, Raaft)

### 3. Données produit et usage
- Suis-tu l’utilisation des fonctionnalités par utilisateur ?
- Peux-tu identifier les baisses d’engagement ?
- Disposes-tu de données sur les raisons de résiliation ?
- Quel est ton indicateur d’activation ? (Que font les clients fidélisés que les churned ne font pas ?)

### 4. Contraintes
- B2B ou B2C ? (Influence la conception du tunnel)
- La résiliation en libre-service est-elle obligatoire ? (Certaines réglementations l’imposent)
- Ton ton pour l’offboarding ? (Empathique, direct, décontracté)

---

## Comment ce skill fonctionne

Le churn se divise en deux types, qui appellent des stratégies distinctes :

| Type | Cause | Solution |
|------|-------|----------|
| **Volontaire** | Le client choisit de résilier | Tunnels d’annulation, offres de rétention, exit surveys |
| **Involontaire** | Le paiement échoue | E-mails de dunning, relances intelligentes, mise à jour de carte |

Le churn volontaire représente généralement 50 à 70 % du churn total. Le churn involontaire pèse 30 à 50 %, mais il est souvent plus facile à corriger.

Ce skill couvre trois modes :

1. **Construire un tunnel d’annulation** : concevoir de zéro avec l’exit survey, les offres et la confirmation
2. **Améliorer un tunnel existant** : analyser les données de résiliation et augmenter le taux de rétention
3. **Mettre en place le dunning** : récupérer les paiements échoués avec relances et séquences d’e-mails

---

## Conception du tunnel d’annulation

### La structure du tunnel

Chaque tunnel d’annulation suit cette séquence :

```
Déclencheur → Exit survey → Offre dynamique → Confirmation → Post-annulation
```

**Étape 1 : déclencheur**
Le client clique sur « Résilier mon abonnement » dans les paramètres de son compte.

**Étape 2 : exit survey**
Demande pourquoi il résilie. Sa réponse détermine quelle offre lui présenter.

**Étape 3 : offre de rétention dynamique**
Propose une offre ciblée en fonction de sa raison (remise, pause, changement de formule…).

**Étape 4 : confirmation**
S’il maintient sa résiliation, confirme clairement la date de fin d’accès.

**Étape 5 : post-annulation**
Explique la suite, propose un chemin simple pour se réabonner, déclenche la séquence de réactivation.

### Conception de l’exit survey

L’exit survey est le point d’ancrage du tunnel. Voici de bonnes catégories de raisons :

| Raison | Ce qu’elle révèle |
|--------|-------------------|
| Trop cher | Sensibilité au prix ; peut répondre à une remise ou un changement de formule |
| Je ne l’utilise pas assez | Faible engagement ; peut répondre à une pause ou à un accompagnement |
| Il manque une fonctionnalité | Manque produit ; montrer la roadmap ou un contournement |
| Je passe à un concurrent | Pression concurrentielle ; comprendre ce qu’il offre |
| Problèmes techniques / bugs | Qualité produit ; escalader au support |
| Besoin temporaire / saisonnier | Rythme d’utilisation ; proposer la pause |
| Entreprise fermée / situation changée | Inévitable ; accompagner avec bienveillance |
| Autre | Fourre-tout ; inclure un champ libre |

**Bonnes pratiques pour l’exit survey :**
- 1 question, choix unique avec champ texte optionnel
- 5 à 8 options maximum (éviter la fatigue de décision)
- Mettre les raisons les plus fréquentes en premier (revoir les données chaque trimestre)
- Ne pas donner l’impression de culpabiliser
- Le cadrage « Aidez-nous à nous améliorer » fonctionne mieux que « Pourquoi partez-vous ? »

### Offres de rétention dynamiques

Le principe clé : **faire correspondre l’offre à la raison.** Une remise ne retiendra pas quelqu’un qui n’utilise plus le produit. Une roadmap n’aidera pas quelqu’un qui ne peut pas se payer l’abonnement.

**Correspondance raison/offre :**

| Raison de résiliation | Offre principale | Offre de repli |
|-----------------------|-----------------|----------------|
| Trop cher | Remise (20 à 30 % pendant 2 à 3 mois) | Passage à une formule inférieure |
| Pas assez utilisé | Pause (1 à 3 mois) | Session d’onboarding offerte |
| Fonctionnalité manquante | Aperçu de la roadmap + calendrier | Guide de contournement |
| Passage à un concurrent | Comparatif + remise | Session de feedback |
| Problèmes techniques | Escalade au support immédiate | Avoir + correction prioritaire |
| Temporaire / saisonnier | Pause de l’abonnement | Passage temporaire à une formule inférieure |
| Entreprise fermée | Ne pas proposer d’offre (respecter la situation) | — |

### Types d’offres de rétention

**Remise**
- 20 à 30 % pendant 2 à 3 mois : c’est l’équilibre optimal
- Évite les remises supérieures à 50 % (elles entraînent les clients à résilier pour en bénéficier)
- Limite la durée de l’offre (« Cette offre expire quand vous quittez cette page »)
- Affiche le montant économisé en euros, pas seulement le pourcentage

**Pause de l’abonnement**
- 1 à 3 mois maximum (au-delà, les clients reviennent rarement)
- 60 à 80 % des clients en pause finissent par réactiver
- Réactivation automatique avec e-mail de préavis
- Conserver leurs données et paramètres intacts

**Changement de formule**
- Proposer une formule inférieure plutôt qu’une résiliation totale
- Montrer ce qu’ils conservent et ce qu’ils perdent
- Formuler comme « adapter votre formule », pas « rétrograder »
- Chemin simple pour revenir à une formule supérieure quand ils seront prêts

**Déverrouillage de fonctionnalité / prolongation**
- Déverrouiller une fonctionnalité premium qu’ils n’ont pas encore essayée
- Prolonger l’accès à une formule supérieure
- Fonctionne surtout pour les raisons liées à la valeur perçue

**Prise en charge personnelle**
- Pour les comptes à forte valeur (10 à 20 % supérieurs par MRR)
- Rediriger vers le customer success pour un appel
- E-mail personnel du fondateur pour les structures de plus petite taille

### Exemples d’interface pour le tunnel d’annulation

```
┌─────────────────────────────────────────┐
│  Désolé de vous voir partir             │
│                                         │
│  Quelle est la principale raison de     │
│  votre résiliation ?                    │
│                                         │
│  ○ L’abonnement est trop cher           │
│  ○ Je ne l’utilise pas assez            │
│  ○ Il me manque une fonctionnalité      │
│  ○ Je passe à un autre outil            │
│  ○ Problèmes techniques                 │
│  ○ Besoin temporaire                    │
│  ○ Autre : [____________]               │
│                                         │
│  [Continuer]                            │
│  [Finalement, je garde mon abonnement]  │
└─────────────────────────────────────────┘
         ↓ (sélection : « L’abonnement est trop cher »)
┌─────────────────────────────────────────┐
│  On aimerait vous garder.               │
│                                         │
│  Voici une offre réservée pour vous :   │
│                                         │
│  ┌───────────────────────────────────┐  │
│  │  25 % de réduction pendant 3 mois │  │
│  │  Économisez XX €/mois             │  │
│  │                                   │  │
│  │  [Accepter l’offre]               │  │
│  └───────────────────────────────────┘  │
│                                         │
│  Ou passer à [Formule Essentiel] à      │
│  X €/mois →                             │
│                                         │
│  [Non merci, continuer à résilier]      │
└─────────────────────────────────────────┘
```

> Dans les exemples de copy ci-dessus, la formulation est au **vouvoiement** (registre neutre et professionnel par défaut). Le choix tu/vous s’adapte au projet et à l’audience : trancher une fois, puis tenir ce choix sur tout le tunnel.

**Principes d’interface :**
- Garder l’option « continuer à résilier » bien visible (pas de dark patterns)
- Une offre principale + une offre de repli, pas un mur d’options
- Afficher les économies en euros, pas seulement en pourcentage
- Utiliser le prénom du client et ses données de compte quand c’est possible
- Interface adaptée au mobile (beaucoup d’annulations se font sur mobile)

Pour des exemples détaillés par secteur et prestataire de facturation, voir [references/cancel-flow-patterns.md](references/cancel-flow-patterns.md).

---

## Prédiction du churn et rétention proactive

Le meilleur moment pour intervenir, c’est avant que le client clique sur « Résilier ».

### Signaux d’alerte

Suis ces indicateurs avancés de churn :

| Signal | Niveau de risque | Délai avant résiliation |
|--------|-----------------|------------------------|
| Fréquence de connexion en baisse de 50 %+ | Élevé | 2 à 4 semaines |
| Arrêt d’utilisation des fonctionnalités clés | Élevé | 1 à 3 semaines |
| Pic de tickets support suivi d’un silence | Élevé | 1 à 2 semaines |
| Baisse du taux d’ouverture des e-mails | Moyen | 2 à 6 semaines |
| Visites de la page de facturation en hausse | Élevé | Quelques jours |
| Suppression de sièges d’équipe | Élevé | 1 à 2 semaines |
| Export de données initié | Critique | Quelques jours |
| Score NPS inférieur à 6 | Moyen | 1 à 3 mois |

### Modèle de score de santé

Construis un score de santé simple (0 à 100) à partir de signaux pondérés :

```
Score de santé = (
  Score fréquence de connexion   × 0,30 +
  Score utilisation des features × 0,25 +
  Score sentiment support        × 0,15 +
  Score santé de facturation     × 0,15 +
  Score engagement               × 0,15
)
```

| Score | Statut | Action |
|-------|--------|--------|
| 80 à 100 | Sain | Opportunités d’upsell |
| 60 à 79 | À surveiller | Prise de contact proactive |
| 40 à 59 | À risque | Campagne d’intervention |
| 0 à 39 | Critique | Prise en charge personnelle |

### Interventions proactives

**Avant même qu’ils pensent à résilier :**

| Déclencheur | Intervention |
|-------------|-------------|
| Usage en baisse de 50 %+ depuis 2 semaines | E-mail : « On a remarqué que vous n’utilisez plus [fonctionnalité]. On peut vous aider ? » |
| Approche de la limite de la formule | Nudge d’upgrade (pas de blocage abrupt) |
| Aucune connexion depuis 14 jours | E-mail de réengagement avec les nouveautés produit |
| Détracteur NPS (0 à 6) | Relance personnelle sous 24 h |
| Ticket support sans réponse depuis 48 h | Escalade + mise à jour proactive |
| Renouvellement annuel dans 30 jours | E-mail récapitulatif de valeur + confirmation de renouvellement |

---

## Churn involontaire : récupérer les paiements échoués

Les paiements échoués causent 30 à 50 % du churn total, mais sont les plus faciles à récupérer.

### La pile dunning

```
Pré-dunning → Relance intelligente → E-mails de dunning → Période de grâce → Résiliation définitive
```

### Pré-dunning (prévenir les échecs)

- **Alertes d’expiration de carte** : e-mail 30, 15 et 7 jours avant l’expiration
- **Moyen de paiement de secours** : proposer une deuxième carte à l’inscription
- **Services de mise à jour de carte** : programmes Visa/Mastercard de mise à jour automatique (réduisent les refus définitifs de 30 à 50 %)
- **Notification avant prélèvement** : e-mail 3 à 5 jours avant le prélèvement pour les formules annuelles

### Logique de relance intelligente

Les échecs ne sont pas tous identiques. Stratégie de relance selon le type de refus :

| Type de refus | Exemples | Stratégie |
|---------------|----------|-----------|
| Refus temporaire | Fonds insuffisants, timeout du processeur | Relancer 3 à 5 fois sur 7 à 10 jours |
| Refus définitif | Carte volée, compte fermé | Ne pas relancer : demander une nouvelle carte |
| Authentification requise | 3D Secure, SCA | Rediriger le client pour mettre à jour le paiement |

**Calendrier de relance recommandé :**
- Relance 1 : 24 h après l’échec
- Relance 2 : 3 jours après l’échec
- Relance 3 : 5 jours après l’échec
- Relance 4 : 7 jours après l’échec (avec escalade de l’e-mail de dunning)
- Après 4 relances : résiliation avec chemin de réactivation

**Astuce :** relance de préférence le jour du mois où le paiement avait réussi auparavant. Stripe Smart Retries gère ça automatiquement.

### Séquence d’e-mails de dunning

| E-mail | Timing | Ton | Contenu |
|--------|--------|-----|---------|
| 1 | Jour 0 (échec) | Alerte amicale | « Votre paiement n’est pas passé. Mettez à jour votre carte. » |
| 2 | Jour 3 | Rappel utile | « Petit rappel : mettez à jour votre paiement pour conserver votre accès. » |
| 3 | Jour 7 | Urgence | « Votre compte sera suspendu dans 3 jours. Agissez maintenant. » |
| 4 | Jour 10 | Dernier avertissement | « Dernier délai pour conserver votre compte. » |

**Bonnes pratiques pour les e-mails de dunning :**
- Lien direct vers la page de mise à jour du paiement (sans reconnexion si possible)
- Montrer ce qu’ils vont perdre (données, accès de l’équipe)
- Ne pas mettre en cause le client (« le paiement n’a pas abouti », pas « vous n’avez pas payé »)
- Inclure un contact support pour les cas particuliers
- Le texte brut fonctionne mieux que les e-mails graphiques pour le dunning

### Références de performance

| Indicateur | Faible | Correct | Bon |
|------------|--------|---------|-----|
| Récupération refus temporaire | < 40 % | 50 à 60 % | 70 %+ |
| Récupération refus définitif | < 10 % | 20 à 30 % | 40 %+ |
| Récupération globale des paiements | < 30 % | 40 à 50 % | 60 %+ |
| Prévention pré-dunning | Aucune | 10 à 15 % | 20 à 30 % |

Pour le playbook complet avec la configuration par prestataire, voir [references/dunning-playbook.md](references/dunning-playbook.md).

---

## Métriques et mesure

### Indicateurs clés du churn

| Indicateur | Formule | Cible |
|------------|---------|-------|
| Taux de churn mensuel | Clients perdus / Clients en début de mois | < 5 % B2C, < 2 % B2B |
| Churn de revenus (net) | (MRR perdu - MRR d’expansion) / MRR initial | Négatif (expansion nette) |
| Taux de rétention du tunnel | Clients retenus / Total des sessions de résiliation | 25 à 35 % |
| Taux d’acceptation des offres | Offres acceptées / Offres présentées | 15 à 25 % |
| Taux de réactivation après pause | Réactivés / Total en pause | 60 à 80 % |
| Taux de récupération dunning | Récupérés / Total des paiements échoués | 50 à 60 % |
| Délai avant résiliation | Jours entre le premier signal et l’annulation | Suivre la tendance |

### Analyse par cohorte

Segmente le churn par :
- **Canal d’acquisition** : quels canaux amènent les clients les plus fidèles ?
- **Formule** : quelles formules churne le plus ?
- **Ancienneté** : quand la plupart des résiliations se produisent-elles ? (30, 60, 90 jours ?)
- **Raison de résiliation** : quelles raisons progressent ?
- **Type d’offre de rétention** : quelles offres fonctionnent le mieux par segment ?

### Tests A/B sur le tunnel d’annulation

Teste une variable à la fois :

| Test | Hypothèse | Indicateur |
|------|-----------|------------|
| Taux de remise (20 % vs 30 %) | Une remise plus élevée retient davantage | Taux de rétention, impact LTV |
| Durée de pause (1 vs 3 mois) | Une pause plus longue augmente le taux de retour | Taux de réactivation |
| Position de l’exit survey (avant vs après l’offre) | Sondage en premier = offres mieux ciblées | Taux de rétention |
| Présentation de l’offre (modale vs pleine page) | Pleine page = plus d’attention | Taux de rétention |
| Ton de la copy (empathique vs direct) | Empathique = moins de friction | Taux de rétention |

**Pour concevoir des expériences statistiquement rigoureuses**, utilise le skill **ab-testing**. PostHog convient bien aux tests sur les tunnels d’annulation : ses feature flags permettent de séparer les utilisateurs côté serveur, et ses analytics de funnel tracent chaque étape (exit survey → offre → acceptation/refus → confirmation). Voir le [guide d’intégration PostHog](../../tools/integrations/posthog.md) pour la configuration.

---

## Erreurs fréquentes

- **Aucun tunnel d’annulation** : une résiliation immédiate laisse de l’argent sur la table. Même un simple exit survey + une offre permet de retenir 10 à 15 % des clients
- **Rendre la résiliation difficile à trouver** : les boutons cachés génèrent frustration et mauvais avis. Beaucoup de réglementations imposent une résiliation facile (FTC Click-to-Cancel aux États-Unis, réglementation européenne)
- **La même offre pour toutes les raisons** : une remise générale ne répond pas à « fonctionnalité manquante » ni à « je ne l’utilise plus »
- **Remises trop élevées** : au-delà de 50 %, les clients apprennent à résilier puis à se réabonner pour en bénéficier
- **Négliger le churn involontaire** : souvent 30 à 50 % du churn total, et le plus simple à corriger
- **Absence d’e-mails de dunning** : laisser les paiements échoués annuler des comptes en silence
- **Copy culpabilisante** : « Êtes-vous sûr de vouloir nous abandonner ? » nuit à la marque
- **Ne pas suivre le LTV après rétention** : un client « retenu » qui résilie 30 jours plus tard n’est pas vraiment retenu
- **Pauses trop longues** : au-delà de 3 mois, la réactivation est rare. Fixer des limites.
- **Aucun chemin post-annulation** : rendre la réactivation simple et déclencher des e-mails de réactivation, car certains clients reviendront

---

## Intégrations

Pour la mise en œuvre, voir le [registre des outils](../../tools/REGISTRY.md).

### Plateformes de rétention

| Outil | Idéal pour | Fonctionnalité clé |
|-------|-----------|-------------------|
| **Churnkey** | Tunnel d’annulation complet + dunning | Offres adaptatives par IA, 34 % de taux de rétention moyen |
| **ProsperStack** | Tunnels avec analytics | Moteur de règles avancé, intégration Stripe/Chargebee |
| **Raaft** | Tunnel simple à mettre en place | Installation rapide, adapté aux premières étapes |
| **Chargebee Retention** | Clients Chargebee | Intégration native (anciennement Brightback) |

### Prestataires de facturation (dunning)

| Prestataire | Relances intelligentes | E-mails de dunning | Mise à jour de carte |
|-------------|:---------------------:|:-----------------:|:--------------------:|
| **Stripe** | Intégré (Smart Retries) | Intégré | Automatique |
| **Chargebee** | Intégré | Intégré | Via passerelle |
| **Paddle** | Intégré | Intégré | Géré |
| **Recurly** | Intégré | Intégré | Intégré |
| **Braintree** | Configuration manuelle | Manuel | Via passerelle |

### Outils CLI associés

| Outil | Usage |
|-------|-------|
| `stripe` | Gestion des abonnements, configuration du dunning, relances de paiement |
| `customer-io` | Séquences d’e-mails de dunning, campagnes de rétention |
| `posthog` | Tests A/B sur le tunnel via feature flags, analytics de funnel |
| `mixpanel` / `ga4` | Suivi de l’usage, analyse des signaux de churn |
| `segment` | Routage d’événements pour le score de santé |

---

## Skills liés

- **emails** : pour les séquences d’e-mails de réactivation après résiliation
- **paywalls** : pour les moments d’upgrade in-app et l’expiration des essais
- **pricing** : pour la structure des formules et la stratégie de remise annuelle
- **onboarding** : pour l’activation qui prévient le churn précoce
- **analytics** : pour configurer les événements liés aux signaux de churn
- **ab-testing** : pour tester les variantes du tunnel avec une rigueur statistique
