# Règles de routage des leads

Arbres de décision, configurations par plateforme, routage territorial, routage ABM et benchmarks de délai de prise en charge.

## Arbre de décision de routage

Utilise ce modèle pour cartographier ta logique de routage :

```
Nouveau lead arrivé
│
├─ S'agit-il d'un compte nommé / cible ?
│  ├─ OUI → Diriger vers le propriétaire du compte assigné
│  └─ NON ↓
│
├─ L'ACV estimé dépasse-t-il 50 000 € ? (selon la taille et le secteur)
│  ├─ OUI → Diriger vers l'équipe AE enterprise
│  └─ NON ↓
│
├─ S'agit-il d'un compte PLG avec usage en équipe ?
│  ├─ OUI → Diriger vers le spécialiste ventes PLG
│  └─ NON ↓
│
├─ Le lead correspond-il à un territoire ?
│  ├─ OUI → Diriger vers le propriétaire du territoire
│  └─ NON ↓
│
└─ Par défaut : round-robin sur les commerciaux disponibles
   └─ Si aucun disponible : file d'attente équipe avec SLA de 1 heure
```

Adapte cet arbre à ton activité. Principe clé : **dirige vers la correspondance la plus précise d’abord, puis remonte vers la règle générale.**

---

## Configuration du round-robin

### Règles de base

1. Répartir les leads équitablement entre les commerciaux éligibles
2. Sauter les commerciaux en congés, à capacité maximale ou avec un pipeline saturé
3. Pondérer selon l’atteinte du quota (les commerciaux sous quota ont une légère priorité)
4. Réinitialiser le compteur chaque semaine ou chaque mois
5. Journaliser chaque assignation pour l’audit

### Configuration du round-robin dans HubSpot

**Via l’outil de rotation natif :**
- Aller dans Automatisation → Workflows
- Déclencheur : propriété de contact « Stade du cycle de vie » = « MQL »
- Action : Rotation du propriétaire du contact parmi les utilisateurs sélectionnés
- Options : distribution égale, sauter les propriétaires indisponibles
- Ajouter un délai + création de tâche après l’assignation

**Rotation personnalisée via workflows :**
1. Créer une propriété personnalisée « Compteur de rotation » (nombre)
2. Déclencheur du workflow : nouveau MQL créé
3. Branche selon la valeur du compteur (0, 1, 2… pour chaque commercial)
4. Définir le propriétaire du contact comme le commercial correspondant
5. Incrémenter le compteur (réinitialiser au maximum)
6. Créer une tâche de suivi avec l’échéance du SLA

### Configuration du round-robin dans Salesforce

**Via les règles d’assignation des leads :**
1. Configuration → Paramètres des fonctionnalités → Marketing → Règles d’assignation des leads
2. Créer des entrées dans l’ordre de priorité (du plus spécifique au plus général)
3. Pour le round-robin : combiner la règle d’assignation + logique personnalisée

**Via Flow pour un routage avancé :**
1. Créer un Flow déclenché par enregistrement à la création d’un lead
2. Obtenir des enregistrements : interroger un objet personnalisé « File de commerciaux » pour le prochain disponible
3. Élément de décision : vérifier disponibilité, capacité et territoire du commercial
4. Mettre à jour les enregistrements : assigner le propriétaire du lead
5. Créer une tâche : tâche de suivi avec SLA
6. Mettre à jour « File de commerciaux » pour tracker la dernière assignation

---

## Routage territorial

### Par géographie (exemple marché français)

| Territoire | Régions | Équipe assignée |
|-----------|---------|----------------|
| Île-de-France | Paris et petite couronne | Équipe Paris |
| Nord-Ouest | Normandie, Bretagne, Pays de la Loire | Équipe Nord-Ouest |
| Sud | PACA, Occitanie, Nouvelle-Aquitaine | Équipe Sud |
| Est | Auvergne-Rhône-Alpes, Grand Est, Bourgogne | Équipe Est |
| International | Hors France | Équipe internationale |

### Par taille d’entreprise

| Segment | Effectif | Équipe |
|---------|----------|--------|
| TPE/PME | 1 à 50 salariés | Ventes internes |
| Mid-market | 51 à 500 salariés | AE mid-market |
| ETI | 501 à 5 000 salariés | AE enterprise |
| Grands comptes | 5 000+ salariés | Équipe comptes stratégiques |

### Par secteur d’activité

| Vertical | Secteurs | Spécialiste |
|---------|---------|-------------|
| Tech | SaaS, services IT, hardware | Commercial tech |
| Finance | Banque, assurance, fintech | Commercial finance |
| Santé | Hôpitaux, pharma, healthtech | Commercial santé |
| Généraliste | Tous les autres | Pool général (round-robin) |

### Modèle de territoire hybride

Combiner plusieurs dimensions pour plus de précision :

```
Lead arrivé
├─ Effectif > 1 000 ?
│  ├─ OUI → Équipe enterprise
│  │  └─ Sous-routage par géographie
│  └─ NON ↓
├─ Secteur = Santé ou Finance ?
│  ├─ OUI → Spécialiste sectoriel
│  └─ NON ↓
└─ Round-robin sur le pool général
   └─ Pondéré par préférence géographique
```

---

## Routage comptes nommés / ABM

### Configuration

1. **Définir la liste des comptes cibles** (en général de 50 à 500 comptes)
2. **Assigner les propriétaires de compte** dans le CRM (1 commercial par compte)
3. **Logique de correspondance :** tout lead provenant d’un domaine cible est dirigé vers le propriétaire du compte
4. **Règles de correspondance :**
   - Correspondance par domaine e-mail (principale)
   - Correspondance approximative par nom d’entreprise (secondaire, requiert une vérification manuelle)
   - Résolution IP-vers-entreprise (tertiaire, pour les visiteurs anonymes)

### Règles de routage ABM

| Niveau | Type de compte | Routage | SLA de réponse |
|--------|---------------|---------|---------------|
| Niveau 1 | Top 20 comptes stratégiques | Propriétaire nommé, alerte immédiate | 1 heure |
| Niveau 2 | Top 100 comptes cibles | Propriétaire nommé, alerte standard | 4 heures |
| Niveau 3 | Correspondance secteur / taille | Territoire ou round-robin | Même jour ouvré |

### Gestion de plusieurs contacts

Quand plusieurs contacts du même compte s’engagent :
- Diriger tous les contacts vers le **même propriétaire de compte**
- Notifier le propriétaire de chaque nouveau contact entrant
- Suivre le score d’engagement au niveau du compte (somme de tous les contacts)
- Déclencher une alerte « comité d’achat » quand 3 contacts ou plus du même compte s’engagent

---

## Délai de prise en charge (speed-to-lead)

### Impact du délai de réponse sur la conversion

| Délai de réponse | Taux de qualification relatif | Notes |
|-----------------|------------------------------|-------|
| Moins de 5 minutes | **21 fois** plus de chances de qualifier | Référence d’excellence |
| 5 à 10 minutes | 10 fois plus | Encore très performant |
| 10 à 30 minutes | 4 fois plus | Acceptable pour la plupart |
| 30 min à 1 heure | 2 fois plus | En dessous des meilleures pratiques |
| 1 à 24 heures | Référence | Moyenne du marché |
| Plus de 24 heures | 60 % sous la référence | Lead pratiquement froid |

Source : Lead Connect, InsideSales.com

### Mettre en place le speed-to-lead

1. **Notification instantanée** : Push + e-mail au commercial dès la création du MQL
2. **Tâche auto avec minuteur** : Créer une tâche avec un SLA de 5 minutes
3. **Chaîne d’escalade :**
   - 5 min : alerte au commercial initial
   - 15 min : alerte au commercial de remplacement
   - 30 min : alerte au manager
   - 1 heure : lead réassigné au prochain commercial disponible
4. **Mesurer et reporting** : Suivre les délais réels chaque semaine ; valoriser les réponses rapides

### Automatisation du speed-to-lead

**Déclencheur :** Nouveau MQL créé
**Actions :**
1. Assigner au commercial selon les règles de routage (immédiat)
2. Envoyer une notification push + e-mail au commercial
3. Créer une tâche : « Contacter [Prénom du lead], SLA 5 min »
4. Lancer le minuteur SLA
5. Si aucune activité consignée dans les 15 min → alerter le commercial de remplacement
6. Si aucune activité dans les 30 min → alerter le manager
7. Si aucune activité dans les 60 min → réassigner par round-robin

### Mesure du speed-to-lead

Suivre ces indicateurs chaque semaine :
- **Délai moyen avant premier contact** (de la création du MQL au premier appel/e-mail)
- **Délai médian avant premier contact** (moins influencé par les valeurs extrêmes)
- **% de leads contactés dans le SLA** (objectif : 90 %+)
- **Taux de contact par tranche horaire** (identifier les plages horaires sans couverture)
- **Taux de conversion par délai de réponse** (démontrer le ROI de la rapidité)
