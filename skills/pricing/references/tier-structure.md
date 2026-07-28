# Structure des paliers et packaging

## Sommaire
- Combien de paliers ?
- Le cadre Bon-Mieux-Meilleur
- Stratégies de différenciation des paliers
- Exemple de structure tarifaire
- Packaging par persona (identifier les personas pricing, packaging adapté)
- Freemium vs. essai gratuit (quand utiliser le freemium, quand utiliser l'essai gratuit, approches hybrides)
- Pricing entreprise (quand ajouter un tarif personnalisé, éléments du palier entreprise, stratégies tarifaires grands comptes)

## Combien de paliers ?

**2 paliers :** choix simple et clair
- Adapté à : une segmentation nette TPE/PME vs. grands comptes
- Risque : peut laisser de l'argent sur la table

**3 paliers :** la norme du marché
- Palier Bon : point d'entrée
- Palier Mieux : recommandé (ancrage vers le meilleur)
- Palier Meilleur : clients à forte valeur

**4 paliers et plus :** plus de granularité
- Adapté à : une large gamme de tailles de clients
- Risque : paralysie du choix, complexité accrue

---

## Le cadre Bon-Mieux-Meilleur

**Palier Bon (entrée de gamme) :**
- Objectif : supprimer les freins à l'entrée
- Contenu : fonctionnalités essentielles, usage limité
- Prix : bas, accessible
- Cible : petites équipes, clients qui veulent tester

**Palier Mieux (recommandé) :**
- Objectif : là où atterrit la majorité des clients
- Contenu : fonctionnalités complètes, limites raisonnables
- Prix : ton prix « d'ancrage »
- Cible : équipes en croissance, utilisateurs sérieux

**Palier Meilleur (premium) :**
- Objectif : capter les clients à haute valeur
- Contenu : tout inclus, fonctionnalités avancées, limites élevées
- Prix : premium (souvent 2 à 3 fois le palier Mieux)
- Cible : grandes équipes, power users, entreprises

---

## Stratégies de différenciation des paliers

**Blocage par fonctionnalité :**
- Fonctions basiques dans tous les paliers
- Fonctions avancées dans les paliers supérieurs
- Fonctionne quand les fonctionnalités ont des valeurs clairement différentes

**Limites d'usage :**
- Mêmes fonctionnalités, seuils différents
- Plus d'utilisateurs, de stockage, d'appels API dans les paliers supérieurs
- Fonctionne quand la valeur évolue avec l'usage

**Niveau de support :**
- Support e-mail, prioritaire, succès client dédié
- Fonctionne pour les produits complexes à implémenter

**Accès et personnalisation :**
- Accès API, SSO, marque blanche
- Fonctionne pour différencier l'offre grands comptes

---

## Exemple de structure tarifaire

```
┌────────────────┬─────────────────┬─────────────────┬─────────────────┐
│                │ Essentiel        │ Pro             │ Business        │
│                │ 29 €/mois        │ 79 €/mois       │ 199 €/mois      │
├────────────────┼─────────────────┼─────────────────┼─────────────────┤
│ Utilisateurs   │ Jusqu'à 5        │ Jusqu'à 20      │ Illimité        │
│ Projets        │ 10               │ Illimité        │ Illimité        │
│ Stockage       │ 5 Go             │ 50 Go           │ 500 Go          │
│ Intégrations   │ 3                │ 10              │ Illimité        │
│ Analytique     │ Basique          │ Avancée         │ Sur mesure      │
│ Support        │ E-mail           │ Prioritaire     │ Dédié           │
│ Accès API      │ ✗                │ ✓               │ ✓               │
│ SSO            │ ✗                │ ✗               │ ✓               │
│ Journaux audit │ ✗                │ ✗               │ ✓               │
└────────────────┴─────────────────┴─────────────────┴─────────────────┘
```

---

## Packaging par persona

### Identifier les personas pricing

Les clients diffèrent par leur :
- Consentement à payer
- Besoins en fonctionnalités
- Processus d'achat
- Perception de la valeur

**Segmenter par :**
- Taille de structure (indépendant, TPE, PME, grands comptes)
- Cas d'usage (marketing, ventes, support)
- Niveau de maturité (débutant, power user)
- Secteur (normes budgétaires différentes)

### Packaging adapté aux personas

**Étape 1 : définir les personas**

| Persona | Taille | Besoins | CAP | Exemple |
|---------|--------|---------|-----|---------|
| Freelance | 1 personne | Fonctions basiques | Faible | 19 €/mois |
| Petite équipe | 2 à 10 | Collaboration | Moyen | 49 €/mois |
| Structure en croissance | 10 à 50 | Montée en charge, intégrations | Élevé | 149 €/mois |
| Grands comptes | 50+ | Sécurité, support | Fort | Sur devis |

**Étape 2 : associer les fonctionnalités aux personas**

| Fonctionnalité | Freelance | Petite équipe | En croissance | Grands comptes |
|----------------|-----------|---------------|--------------|----------------|
| Fonctions essentielles | ✓ | ✓ | ✓ | ✓ |
| Collaboration | — | ✓ | ✓ | ✓ |
| Intégrations | — | Limitées | Complètes | Complètes |
| Accès API | — | — | ✓ | ✓ |
| SSO/SAML | — | — | — | ✓ |
| Journaux d'audit | — | — | — | ✓ |
| Contrat sur mesure | — | — | — | ✓ |

**Étape 3 : fixer les prix en fonction de la valeur par persona**
- Étudier le consentement à payer par segment
- Fixer des prix qui capturent la valeur sans bloquer l'adoption
- Envisager des pages d'atterrissage spécifiques par segment

---

## Freemium vs. essai gratuit

### Quand utiliser le freemium

**Le freemium fonctionne quand :**
- Le produit a des effets viraux ou de réseau
- Les utilisateurs gratuits apportent de la valeur (contenu, données, recommandations)
- Le marché est vaste et un faible taux de conversion génère du volume
- Le coût marginal de servir les utilisateurs gratuits est faible
- Il existe des limites claires de fonctionnalité ou d'usage qui déclenchent l'upgrade

**Risques du freemium :**
- Les utilisateurs gratuits peuvent ne jamais convertir
- Dévalorise la perception du produit
- Coûts de support pour des non-payants
- Plus difficile d'augmenter les prix ensuite

### Quand utiliser l'essai gratuit

**L'essai gratuit fonctionne quand :**
- Le produit a besoin de temps pour démontrer sa valeur
- L'onboarding ou la configuration requiert un investissement
- Il s'agit d'un achat B2B impliquant plusieurs décideurs
- Les prix sont élevés
- Le produit est difficile à quitter une fois configuré

**Bonnes pratiques pour l'essai gratuit :**
- 7 à 14 jours pour les produits simples
- 14 à 30 jours pour les produits complexes
- Accès complet (pas limité en fonctionnalités)
- Compte à rebours et rappels clairs
- Carte bancaire optionnelle vs. obligatoire : un choix à peser

**Carte bancaire exigée à l'inscription :**
- Taux de conversion essai/payant plus élevé (40 à 50 % vs. 15 à 25 %)
- Volume d'essais plus faible
- Prospects mieux qualifiés

### Approches hybrides

**Freemium + essai :**
- Palier gratuit avec fonctionnalités limitées
- Essai des fonctionnalités premium
- Exemple : Zoom (gratuit limité à 40 min, essai du plan Pro)

**Essai inversé :**
- Démarrer avec un accès complet
- Après l'essai, rétrograder vers le palier gratuit
- Exemple : faire vivre la valeur premium, puis les limitations, jusqu'à la décision d'achat

---

## Pricing grands comptes

### Quand ajouter un tarif personnalisé

Proposer « Contacter les ventes » quand :
- Les montants dépassent 10 000 € d'ARR
- Les clients ont besoin de contrats sur mesure
- Une mise en œuvre ou un onboarding spécifique est requis
- Des exigences de sécurité ou de conformité s'appliquent
- Des processus de procurement sont impliqués

### Éléments du palier grands comptes

**Attendus par défaut :**
- SSO/SAML
- Journaux d'audit
- Contrôles administrateur
- SLA de disponibilité
- Certifications sécurité

**Valeur ajoutée :**
- Support ou succès client dédié
- Onboarding personnalisé
- Sessions de formation
- Intégrations sur mesure
- Contribution prioritaire à la roadmap

### Stratégies tarifaires grands comptes

**Par siège à grande échelle :**
- Remises sur volume pour les grandes équipes
- Exemple : 15 €/utilisateur (standard), 10 €/utilisateur (100+)

**Frais de plateforme + usage :**
- Frais de base pour l'accès
- Facturation à l'usage au-delà des seuils
- Exemple : 500 €/mois de base + 0,01 € par appel API

**Contrats fondés sur la valeur :**
- Prix lié aux revenus ou aux résultats du client
- Exemple : pourcentage des transactions, partage de revenus
