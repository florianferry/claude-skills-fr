---
name: pricing
description: "À utiliser quand l'utilisateur veut de l'aide sur les décisions de pricing, le packaging ou la stratégie de monétisation. Utiliser aussi quand il mentionne « pricing », « paliers tarifaires », « freemium », « essai gratuit », « packaging », « hausse de prix », « métrique de valeur », « Van Westendorp », « consentement à payer », « monétisation », « combien facturer », « mon pricing est mauvais », « page de tarifs », « annuel vs mensuel », « prix par siège » ou « faut-il proposer un plan gratuit ». À déclencher dès que quelqu'un réfléchit à ce qu'il doit facturer ou comment structurer ses plans. Pour les écrans d'upgrade in-app, voir paywalls."
metadata:
  version: 2.0.0
---

# Stratégie de pricing

> **Style français (impératif).** Pour tout texte destiné à un lectorat francophone : pense en français, ne traduis pas l'anglais. Bannis les calques (« C'est simple. », « N'hésitez pas à… ») et les tics d'IA (Découvrez, Boostez, Optimisez, Incontournable, En un clin d'œil). Typographie : espace insécable avant `: ; ! ?` et dans « … » ; apostrophe ’ ; titres en casse de phrase ; jamais de tiret cadratin `—` dans le corps (→ `,` `:` `.` ou parenthèses) ; nombres à la française (`29 €`, `80 %`, `12 000`, `24 h`). Vérifie les accords (genre, nombre, participes) ; choisis le tutoiement ou le vouvoiement et tiens-t'y ; relis à voix haute pour éliminer toute tournure « qui sonne traduite ». Détail complet dans `french-copy.md`, fourni avec ce skill.

Tu es expert en pricing SaaS et en stratégie de monétisation. Ton objectif : concevoir un pricing qui capture la valeur, stimule la croissance et s'aligne sur le consentement à payer des clients.

## Avant de commencer

**Cherche d'abord un contexte produit.**
Si `.agents/product-marketing.md` existe (ou `.claude/product-marketing.md`, ou l'ancien `product-marketing-context.md`), lis-le avant de poser des questions. Utilise ce contexte et ne demande que les informations manquantes ou spécifiques à la tâche.

Collecte ces informations (demande si elles ne sont pas fournies) :

### 1. Contexte business
- Quel type de produit ? (SaaS, marketplace, e-commerce, service)
- Quel est le pricing actuel (le cas échéant) ?
- Quelle est la cible ? (TPE/PME, mid-market, grands comptes)
- Quel est le mode de mise sur le marché ? (self-serve, sales-led, hybride)

### 2. Valeur et concurrence
- Quelle est la valeur principale délivrée ?
- Quelles alternatives les clients envisagent-ils ?
- Comment les concurrents facturent-ils ?

### 3. Performances actuelles
- Quel est le taux de conversion actuel ?
- Quels sont l'ARPU et le taux de churn ?
- Des retours sur le pricing de la part des clients ou des prospects ?

### 4. Objectifs
- Optimiser pour la croissance, le chiffre d'affaires ou la rentabilité ?
- Monter en gamme ou descendre en gamme ?

---

## Fondamentaux du pricing

### Les trois axes du pricing

**1. Le packaging** : que contient chaque palier ?
- Fonctionnalités, limites, niveau de support
- Comment les paliers se différencient les uns des autres

**2. La métrique de valeur** : sur quelle base facturer ?
- Par utilisateur, à l'usage, forfait fixe
- Comment le prix évolue avec la valeur

**3. Le point de prix** : combien facturer ?
- Les montants réels
- Valeur perçue versus coût de revient

### Le pricing fondé sur la valeur

Le prix doit reposer sur la valeur délivrée, pas sur le coût de revient :

- **Valeur perçue par le client** : le plafond
- **Ton prix** : entre l'alternative et la valeur perçue
- **Meilleure alternative disponible** : le plancher de différenciation
- **Coût de revient** : une base de référence, pas une base de calcul

**À retenir :** fixer son prix entre l'alternative la plus proche et la valeur perçue.

---

## Métriques de valeur

### Qu'est-ce qu'une métrique de valeur ?

La métrique de valeur, c'est ce sur quoi tu factures. Elle doit évoluer avec la valeur que les clients reçoivent.

**Bonnes métriques de valeur :**
- S'alignent sur la valeur délivrée
- Sont faciles à comprendre
- Évoluent avec la croissance du client
- Sont difficiles à contourner

### Métriques courantes

| Métrique | Idéale pour | Exemples |
|----------|-------------|---------|
| Par utilisateur/siège | Outils collaboratifs | Notion, Slack |
| À l'usage | Consommation variable | AWS, Twilio |
| Par fonctionnalité | Produits modulaires | Add-ons HubSpot |
| Par contact/enregistrement | CRM, e-mailing | Mailchimp |
| Par transaction | Paiements, marketplaces | Stripe |
| Forfait fixe | Produits simples | Basecamp |

### Choisir sa métrique de valeur

Se demander : « Quand un client utilise davantage [métrique], reçoit-il plus de valeur ? »
- Si oui : bonne métrique
- Si non : le prix ne s'aligne pas sur la valeur

---

## Structure des paliers

### Le cadre Bon-Mieux-Meilleur

**Palier Bon (entrée de gamme) :** fonctionnalités essentielles, usage limité, prix accessible
**Palier Mieux (recommandé) :** fonctionnalités complètes, limites raisonnables, prix d'ancrage
**Palier Meilleur (premium) :** tout inclus, fonctionnalités avancées, 2 à 3 fois le prix du palier Mieux

### Différenciation des paliers

- **Blocage par fonctionnalité** : fonctions basiques vs. avancées
- **Limites d'usage** : mêmes fonctionnalités, seuils différents
- **Niveau de support** : e-mail, prioritaire, dédié
- **Accès** : API, SSO, marque blanche

**Pour les structures de paliers détaillées et le packaging par persona** : voir [references/tier-structure.md](references/tier-structure.md)

---

## Recherche tarifaire

### Méthode Van Westendorp

Quatre questions pour identifier la plage de prix acceptable :
1. Trop cher (ne considérerait pas l'achat)
2. Trop bon marché (remettrait en cause la qualité)
3. Cher mais envisageable
4. Une bonne affaire

Analyser les intersections pour trouver la zone de prix optimale.

### Analyse MaxDiff

Identifie les fonctionnalités que les clients valorisent le plus :
- Présenter des ensembles de fonctionnalités
- Demander : la plus importante ? la moins importante ?
- Les résultats orientent le packaging des paliers

**Pour les méthodes de recherche détaillées** : voir [references/research-methods.md](references/research-methods.md)

---

## Quand augmenter ses prix

### Signaux qui indiquent que c'est le bon moment

**Signaux marché :**
- Les concurrents ont relevé leurs prix
- Les prospects ne sourcillent pas au prix
- Des retours du type « c'est vraiment pas cher ! »

**Signaux business :**
- Taux de conversion très élevés (plus de 40 %)
- Churn très faible (moins de 3 % mensuel)
- Solide économie unitaire

**Signaux produit :**
- Valeur ajoutée significative depuis le dernier pricing
- Produit plus mature et stable

### Stratégies de hausse de prix

1. **Grandfathering** : nouveau prix uniquement pour les nouveaux clients
2. **Hausse différée** : annonce 3 à 6 mois à l'avance
3. **Hausse liée à la valeur** : augmenter le prix tout en ajoutant des fonctionnalités
4. **Refonte des plans** : changer entièrement la structure tarifaire

---

## Bonnes pratiques pour la page de tarifs

### Au-dessus de la ligne de flottaison
- Tableau comparatif clair des paliers
- Palier recommandé mis en valeur
- Bascule mensuel/annuel
- CTA principal pour chaque palier

### Éléments incontournables
- Tableau de comparaison des fonctionnalités
- À qui s'adresse chaque palier
- Section FAQ
- Mise en avant de la remise annuelle (15 à 20 %)
- Garantie satisfait ou remboursé
- Logos clients et signaux de confiance

### Psychologie du pricing
- **Ancrage** : présenter l'option la plus chère en premier
- **Effet de leurre** : le palier intermédiaire doit sembler le meilleur rapport qualité/prix
- **Pricing de charme** : 49 € plutôt que 50 € (pour les produits orientés valeur)
- **Prix ronds** : 50 € plutôt que 49 € (pour les produits premium)

---

## Check-list pricing

### Avant de fixer les prix
- [ ] Définir les personas cibles
- [ ] Analyser le pricing des concurrents
- [ ] Identifier la métrique de valeur
- [ ] Mener une étude de consentement à payer
- [ ] Associer les fonctionnalités aux paliers

### Structure tarifaire
- [ ] Choisir le nombre de paliers
- [ ] Différencier clairement les paliers
- [ ] Fixer les prix sur la base de la recherche
- [ ] Définir la stratégie de remise annuelle
- [ ] Planifier un palier entreprise/sur devis

---

## Questions spécifiques à la tâche

1. Quelle recherche tarifaire as-tu menée ?
2. Quel est l'ARPU actuel et le taux de conversion ?
3. Quelle est ta métrique de valeur principale ?
4. Quels sont tes principaux personas pricing ?
5. Es-tu en self-serve, en sales-led ou en hybride ?
6. Quels changements de pricing envisages-tu ?

---

## Skills associés

- **churn-prevention** : pour les flows d'annulation, les offres de rétention et la réduction du churn de revenus
- **cro** : pour optimiser la conversion de la page de tarifs
- **copywriting** : pour la copy de la page de tarifs
- **marketing-psychology** : pour les principes de psychologie du pricing
- **ab-testing** : pour tester les changements de pricing
- **revops** : pour les processus de deal desk et le pricing pipeline
- **sales-enablement** : pour les modèles de proposition et les présentations tarifaires
