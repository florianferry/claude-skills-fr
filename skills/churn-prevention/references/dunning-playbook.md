# Playbook dunning

Guide complet pour récupérer les paiements échoués et réduire le churn involontaire.

---

## Pourquoi le dunning compte

- Les paiements échoués causent 30 à 50 % du churn total des abonnements
- La plupart sont récupérables avec la bonne stratégie
- Les pertes mondiales liées au churn involontaire sont estimées à 129 milliards de dollars par an
- Un dunning efficace récupère 50 à 60 % des paiements échoués

---

## La chronologie du dunning

```
J-30 à J-7 : Pré-dunning (prévenir les échecs)
J0 :         Paiement échoué → Relance intelligente n°1 + E-mail n°1
J1 à J3 :    Relance intelligente n°2 + E-mail n°2
J3 à J5 :    Relance intelligente n°3
J5 à J7 :    Relance intelligente n°4 + E-mail n°3
J7 à J10 :   Dernière relance + E-mail n°4 (dernier avertissement)
J10 à J14 :  Fin de la période de grâce → compte suspendu / résilié
J14+ :       Séquence de réactivation
```

---

## Pré-dunning : prévenir les échecs avant qu’ils arrivent

### Gestion de l’expiration des cartes

| Délai | Action |
|-------|--------|
| 30 jours avant expiration | E-mail : « Votre carte se terminant par 4242 expire le mois prochain » |
| 15 jours avant expiration | E-mail : « Mettez à jour votre moyen de paiement pour éviter toute interruption » |
| 7 jours avant expiration | E-mail : « Votre carte expire dans 7 jours : mettez-la à jour maintenant » |
| 3 jours avant expiration | Bandeau in-app : « Moyen de paiement bientôt expiré » |

**Modèle d’e-mail : carte bientôt expirée**
```
Objet : Votre carte se terminant par 4242 expire bientôt

Bonjour [Prénom],

La carte enregistrée pour votre abonnement [Produit] expire le [date].

Mettez à jour votre moyen de paiement maintenant pour éviter
toute interruption :

[Mettre à jour mon moyen de paiement →]

L’opération prend moins de 30 secondes.

L’équipe [Produit]
```

### Services de mise à jour automatique des cartes

Les principaux réseaux de paiement proposent des programmes de mise à jour automatique :

| Service | Réseau | Fonctionnement |
|---------|--------|---------------|
| Visa Account Updater (VAU) | Visa | Met à jour automatiquement les numéros et dates d’expiration |
| Mastercard Automatic Billing Updater (ABU) | Mastercard | Même chose pour Mastercard |
| Amex Cardrefresher | American Express | Même chose pour Amex |

**Impact :** réduit les refus définitifs liés aux cartes expirées ou remplacées de 30 à 50 %.

**Activation :**
- **Stripe** : automatique, activé par défaut
- **Chargebee** : à activer dans les paramètres de la passerelle
- **Recurly** : intégré, activé par défaut
- **Braintree** : contacter le processeur pour l’activer

### Moyens de paiement de secours

Inciter à ajouter un deuxième moyen de paiement :
- À l’inscription : « Ajouter un moyen de paiement de secours » (faible conversion)
- Après le premier paiement réussi : « Protégez votre compte avec une carte de secours » (meilleur moment)
- Après la récupération d’un paiement échoué : « Ajoutez un moyen de paiement de secours pour éviter ça à l’avenir » (meilleur moment : ils ont ressenti la douleur)

### Notifications avant prélèvement

Pour les formules annuelles ou les abonnements à forte valeur :
- E-mail 7 jours avant le renouvellement avec le montant et la date
- Inclure un lien pour mettre à jour le moyen de paiement
- Préciser ce qui est inclus dans le renouvellement
- Obligatoire dans certaines réglementations pour les reconductions tacites

---

## Stratégie de relance intelligente

### Classification des types de refus

| Code | Type | Signification | Relancer ? |
|------|------|---------------|------------|
| `insufficient_funds` | Temporaire | Solde momentanément insuffisant | Oui, dans 2 à 3 jours |
| `card_declined` (générique) | Temporaire | Raisons temporaires diverses | Oui, 3 à 4 fois |
| `processing_error` | Temporaire | Problème passerelle / réseau | Oui, sous 24 h |
| `expired_card` | Définitif | Carte expirée | Non : demander une nouvelle carte |
| `stolen_card` | Définitif | Carte déclarée volée | Non : demander une nouvelle carte |
| `do_not_honor` | Temp./Déf. | Refus bancaire (ambigu) | Une fois de plus, puis demander une nouvelle carte |
| `authentication_required` | Auth. | SCA / 3D Secure requis | Rediriger le client pour authentifier |

### Calendrier de relance par prestataire

**Stripe (Smart Retries, recommandé) :**
- Activer « Smart Retries » dans le Dashboard Stripe → Facturation → Paramètres
- Le modèle ML de Stripe choisit le moment de relance optimal à partir de milliards de transactions
- Généralement 4 à 8 tentatives sur 3 à 4 semaines
- Récupère environ 15 % de plus que les calendriers fixes

**Calendrier manuel (sans relances intelligentes) :**

| Relance | Délai | Meilleur moment |
|---------|-------|----------------|
| 1 | J+1 (24 h après l’échec) | Matin, même jour de la semaine que l’original |
| 2 | J+3 | Essayer une heure différente |
| 3 | J+5 | Après une date de paie courante (1er, 15) |
| 4 | J+7 | Matin du prochain jour ouvré |
| 5 (finale) | J+10 | Dernière tentative avant la fin de la période de grâce |

**Conseils sur le timing des relances :**
- Relancer de préférence le même jour du mois où le paiement avait réussi
- Relancer après les dates de paie courantes (1er et 15 du mois)
- Éviter les relances le week-end (taux d’approbation plus faible)
- Les relances du matin (8 h à 10 h, heure locale) obtiennent de légèrement meilleurs résultats

---

## Séquence d’e-mails de dunning

### E-mail 1 : paiement échoué (jour 0)

**Ton :** amical, factuel. Pas d’alarme.

```
Objet : Action requise : votre paiement n’a pas abouti

Bonjour [Prénom],

Nous avons tenté de prélever [montant] € sur votre [type de carte]
se terminant par [4 derniers chiffres] pour votre abonnement [Produit],
mais le paiement n’a pas abouti.

C’est une situation courante : une mise à jour rapide de vos
informations de paiement suffit en général à régler le problème.

[Mettre à jour mon moyen de paiement →]

Votre accès n’est pas encore affecté. Nous allons réessayer
automatiquement, mais mettre à jour votre carte est la solution
la plus rapide.

Besoin d’aide ? Répondez simplement à cet e-mail.

L’équipe [Produit]
```

### E-mail 2 : rappel (jour 3)

**Ton :** utile, légèrement plus pressant.

```
Objet : Rappel : mettez à jour votre paiement pour [Produit]

Bonjour [Prénom],

Nous n’avons toujours pas pu traiter votre paiement de [montant] €
pour [Produit].

[Mettre à jour mon moyen de paiement →]

L’opération prend moins de 30 secondes. Vos [données / projets /
accès équipe] sont en sécurité, mais nous avons besoin d’un moyen
de paiement valide pour maintenir votre compte actif.

Une question ? Répondez ici et nous vous aiderons.

L’équipe [Produit]
```

### E-mail 3 : urgence (jour 7)

**Ton :** direct, conséquences claires.

```
Objet : Votre compte [Produit] sera suspendu dans 3 jours

Bonjour [Prénom],

Nous avons tenté à plusieurs reprises de traiter votre paiement,
mais votre [type de carte] se terminant par [4 derniers chiffres]
est systématiquement refusée.

Si nous ne recevons pas de règlement avant le [date], votre compte
sera suspendu et vous perdrez l’accès à :

• [Fonctionnalité / données clés]
• [Projets / espace de travail]
• [Accès pour X membres de l’équipe]

[Mettre à jour mon moyen de paiement maintenant →]

Vos données ne seront pas supprimées : vous pourrez réactiver votre
compte à tout moment en mettant à jour votre paiement.

L’équipe [Produit]
```

### E-mail 4 : dernier avertissement (jour 10)

**Ton :** final, clair, sans culpabilisation.

```
Objet : Dernier délai pour conserver votre compte [Produit]

Bonjour [Prénom],

C’est notre dernier rappel. Votre paiement de [montant] € est en
souffrance, et votre compte sera suspendu demain, le [date].

[Mettre à jour mon moyen de paiement →]

Après la suspension :
• Vos données sont conservées pendant [90 jours]
• Vous pouvez réactiver à tout moment
• Il suffit de mettre à jour votre carte pour retrouver votre accès

Si vous souhaitez résilier, vous n’avez rien à faire : votre compte
sera suspendu automatiquement.

L’équipe [Produit]
```

---

## Gestion de la période de grâce

### Ce qui se passe pendant la période de grâce

| Paramètre | Recommandation |
|-----------|---------------|
| Durée | 7 à 14 jours après la dernière relance |
| Accès | Dégradé (lecture seule) ou accès complet |
| Visibilité | Bandeau in-app : « Paiement en attente : mettez à jour votre carte pour continuer » |
| Relances | Continuer les relances en arrière-plan |
| Communication | Les e-mails de dunning continuent |

### Options de dégradation d’accès

**Option A : accès complet pendant la grâce (recommandé pour le B2B)**
- Moins de friction, le client se sent respecté
- Taux de récupération plus élevé (il voit toujours la valeur)
- Risque : certains clients exploitent la période de grâce

**Option B : accès en lecture seule (recommandé pour le B2C)**
- Peut consulter mais pas créer / modifier
- Crée de l’urgence sans crainte de perdre les données
- Message clair : « Mettez votre paiement à jour pour retrouver l’accès complet »

**Option C : blocage immédiat (déconseillé)**
- Agressif, nuit à la relation
- Taux de récupération plus faible
- À réserver uniquement aux formules à très faible coût

### Après la période de grâce

| Délai | Action |
|-------|--------|
| Fin de la période de grâce | Compte suspendu (pas supprimé) |
| J+1 post-suspension | E-mail « Votre compte a été suspendu » |
| J+7 post-suspension | « Vos données sont toujours là » |
| J+30 post-suspension | Tentative de réactivation avec nouvelle offre |
| J+60 post-suspension | Dernière tentative de réactivation |
| J+90 post-suspension | Avertissement de suppression des données (si applicable) |

---

## Configuration par prestataire

### Stripe

**Activer Smart Retries :**
1. Dashboard → Paramètres → Facturation → Abonnements et e-mails
2. Activer « Relances intelligentes » dans les règles de relance
3. Configurer les e-mails de paiement échoué dans Dashboard → Paramètres → E-mails

**Règles de relance manuelles (sans Smart Retries) :**
```
Relance 1 : 3 jours après l’échec
Relance 2 : 5 jours après l’échec
Relance 3 : 7 jours après l’échec
Finale :    Marquer l’abonnement comme impayé après la dernière relance
```

**Événements webhook à gérer :**
- `invoice.payment_failed` : déclencher le dunning
- `invoice.paid` : arrêter le dunning, rétablir l’accès
- `customer.subscription.updated` : changements de statut
- `customer.subscription.deleted` : résiliation définitive

### Chargebee

**Dunning intégré :**
1. Paramètres → Configurer Chargebee → Paramètres de relance
2. Configurer les tentatives et les intervalles
3. Paramètres → Configurer Chargebee → Notifications e-mail → Dunning

**Options dunning :**
- Relances automatiques avec calendrier configurable
- E-mails de dunning intégrés (modèles personnalisables)
- Configuration de la période de grâce par formule

### Paddle

**Dunning géré :**
- Paddle gère les relances et le dunning automatiquement
- Personnalisation limitée (Paddle gère la relation client)
- Webhooks : `subscription.payment_failed`, `subscription.cancelled`
- Idéal pour une approche sans gestion manuelle

### Recurly

**Revenue Recovery :**
1. Configuration → Gestion du dunning
2. Définir le calendrier de relance par formule
3. Configurer la période de grâce et l’action finale (suspension vs. résiliation)

**Fonctionnalités avancées :**
- Optimisation des relances par machine learning
- Calendriers de dunning par formule
- Account Updater intégré

---

## Dunning in-app

Ne pas se reposer uniquement sur les e-mails. Afficher les échecs de paiement dans l’application :

### Pattern bandeau
```
┌──────────────────────────────────────────────────────────────┐
│ ⚠ Votre paiement de 29 € a échoué. Mettez à jour votre     │
│ carte pour éviter de perdre l’accès. [Mettre à jour →]  [✕] │
└──────────────────────────────────────────────────────────────┘
```

**Règles :**
- Afficher à chaque chargement de page pendant la période de dunning
- Permettre la fermeture (mais réafficher à la session suivante)
- Lien direct vers la mise à jour du paiement (minimum de clics)
- Ne pas bloquer le produit : laisser l’utilisateur continuer à l’utiliser

### Pattern modale (pour le dernier avertissement)
```
┌───────────────────────────────────────┐
│                                       │
│  Votre compte sera suspendu           │
│  le [date]                            │
│                                       │
│  Mettez à jour votre moyen de         │
│  paiement pour conserver l’accès à    │
│  vos [X] projets et aux [Y] membres   │
│  de votre équipe.                     │
│                                       │
│  [Mettre à jour mon moyen de paiement]│
│  [Me le rappeler plus tard]           │
│                                       │
└───────────────────────────────────────┘
```

---

## Mesurer la performance du dunning

### Indicateurs clés

| Indicateur | Calcul | Cible |
|------------|--------|-------|
| Taux de récupération global | Paiements récupérés / Total des échecs | 50 à 60 % |
| Taux de récupération par type de refus | Récupérés / Échecs par type | Temporaire : 70 %+, Définitif : 40 %+ |
| Délai de récupération | Jours entre l’échec et le paiement réussi | < 5 jours |
| Taux de prévention pré-dunning | Échecs évités / Échecs attendus | 20 à 30 % |
| Taux d’ouverture des e-mails de dunning | Ouvertures / Envois par e-mail | 60 %+ |
| Taux de clic des e-mails de dunning | Clics / Ouvertures par e-mail | 30 %+ |
| Revenus récupérés (mensuel) | Somme des paiements récupérés | Suivre la tendance |
| Revenus perdus en churn involontaire | Somme des paiements échoués non récupérés | Suivre la tendance |

### Références sectorielles

**Par stade de l’entreprise :**

| Stade | Churn involontaire typique | Cible après optimisation |
|-------|---------------------------|--------------------------|
| Démarrage (< 1 M€ ARR) | 3 à 5 % du MRR/mois | 1 à 2 % |
| Croissance (1 à 10 M€ ARR) | 2 à 4 % du MRR/mois | 0,5 à 1,5 % |
| Maturité (10 M€+ ARR) | 1 à 3 % du MRR/mois | 0,3 à 0,8 % |

### Calcul du ROI

```
MRR de paiements échoués par mois :     10 000 €
Taux de récupération actuel :            30 % (3 000 € récupérés)
Taux de récupération cible :             60 % (6 000 € récupérés)
Amélioration mensuelle :                 3 000 €/mois
Amélioration annuelle :                  36 000 €/an
Coût de l’optimisation dunning :         200 à 500 €/mois (outils)
ROI :                                    6 à 15×
```
