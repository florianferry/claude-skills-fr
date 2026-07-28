# Playbooks d’automatisation

Recettes de workflows par plateforme : HubSpot, Salesforce, outils de prise de rendez-vous et automatisations cross-outils.

## Recettes de workflows HubSpot

### 1. Alerte MQL et assignation

**Nom :** Notification MQL et création de tâche
**Déclencheur :** La propriété de contact « Stade du cycle de vie » passe à « Marketing Qualified Lead »
**Actions :**
1. Attribuer le contact au prochain commercial disponible (round-robin)
2. Envoyer une notification interne au propriétaire du contact avec le contexte du lead
3. Créer une tâche : « Rappeler [Prénom Nom] », échéance dans 4 heures
4. Envoyer une notification Slack sur le canal #alertes-ventes
5. Inscrire dans la séquence « Suivi MQL » (si HubSpot Sequences est actif)
**Résultat :** Chaque MQL est assigné instantanément avec un SLA clair
**Notes :** Exclure les leads déjà attribués à un commercial dans les critères d’inscription

---

### 2. Escalade en cas de dépassement du SLA MQL

**Nom :** Alerte dépassement SLA MQL
**Déclencheur :** Propriété « Stade du cycle de vie » = « MQL » ET « Jours depuis le dernier contact » supérieur à 0,5 (12 heures)
**Actions :**
1. Envoyer un e-mail interne au propriétaire du contact : « Alerte SLA : [Prénom Nom] n’a pas encore été contacté »
2. Si toujours sans activité après 24 heures → envoyer une alerte au responsable des ventes
3. Si toujours sans activité après 48 heures → réassigner le contact par rotation
4. Créer une tâche pour le nouveau propriétaire : « Urgent : contacter [Prénom Nom] : réassigné après dépassement de SLA »
**Résultat :** Aucun MQL ne reste sans traitement pendant plus de 48 heures
**Notes :** Exclure les contacts dont le dernier type d’activité est « Appel » ou « Réunion » (déjà en cours)

---

### 3. Mise à jour du score et promotion en MQL

**Nom :** Promotion automatique en MQL au franchissement du seuil
**Déclencheur :** La propriété « Score HubSpot » est supérieure ou égale à 65
**Actions :**
1. Passer le stade du cycle de vie à « Marketing Qualified Lead »
2. Renseigner « Date de passage MQL » avec la date du jour
3. Retirer des workflows de nurture marketing
4. Déclencher le workflow d’alerte MQL (recette n° 1)
**Résultat :** Les leads sont automatiquement promus MQL dès qu’ils franchissent le seuil de scoring
**Notes :** Ajouter une liste d’exclusion pour les clients existants et les concurrents

---

### 4. Notification de réunion réservée

**Nom :** Alerte réunion réservée vers l’AE
**Déclencheur :** Une activité de réunion est enregistrée pour le contact (via Calendly ou HubSpot Meetings)
**Actions :**
1. Envoyer un e-mail interne au propriétaire du contact avec les détails de la réunion
2. Mettre à jour la propriété « Dernière réunion réservée » avec la date du jour
3. Si le stade du cycle de vie est « Lead » → passer à « MQL »
4. Créer une tâche : « Préparer la réunion avec [Prénom Nom] », échéance 1 heure avant la réunion
5. Envoyer une notification Slack sur le canal #reunions
**Résultat :** Les AE abordent chaque réunion avec le contexte complet
**Notes :** Inclure les pages récemment visitées et les contenus téléchargés dans l’e-mail de notification

---

### 5. Passation au CS après deal gagné

**Nom :** Déclencheur d’onboarding client
**Déclencheur :** Le stade du deal passe à « Gagné »
**Actions :**
1. Passer le stade du cycle de vie du contact associé à « Client »
2. Renseigner la date « Client depuis » avec la date du jour
3. Attribuer le contact à un membre de l’équipe CS (selon le segment ou le territoire)
4. Créer une tâche pour le CS : « Planifier l’appel de lancement avec [Nom de l’entreprise] », échéance dans 2 jours ouvrés
5. Inscrire le contact dans la séquence e-mail « Onboarding client »
6. Envoyer une notification interne au responsable CS
7. Retirer de toutes les séquences de vente
**Résultat :** Passation fluide des ventes vers le customer success
**Notes :** Inclure les notes du deal, la valeur du contrat et les parties prenantes clés dans la notification CS

---

### 6. Alerte deal immobile

**Nom :** Hygiène du pipeline (détection des deals stagnants)
**Déclencheur :** La propriété de deal « Jours dans le stade actuel » est supérieure à [2 fois la moyenne pour ce stade]
**Actions :**
1. Envoyer un e-mail interne au propriétaire du deal : « Deal stagnant : [Nom du deal] est dans [Stade] depuis [X] jours »
2. Créer une tâche : « Mettre à jour ou clore [Nom du deal] », échéance dans 3 jours ouvrés
3. Si aucune mise à jour après 7 jours → alerter le responsable des ventes
4. Ajouter à la liste du tableau de bord « Deals stagnants »
**Résultat :** Le pipeline reste propre et les prévisions restent fiables
**Notes :** Adapter les seuils par stade (Découverte : 14 jours, Proposition : 10 jours, Négociation : 21 jours)

---

### 7. Réentrée en nurture des leads recyclés

**Nom :** Recyclage MQL vers nurture
**Déclencheur :** La propriété de contact « Motif de rejet ventes » est renseignée (toute valeur)
**Actions :**
1. Passer le stade du cycle de vie à « Recyclé »
2. Remettre le score d’engagement à la valeur de base (conserver le score profil)
3. Inscrire dans la séquence « Nurture leads recyclés » (fréquence réduite)
4. Renseigner « Date de recyclage » avec la date du jour
5. Définir un déclencheur de réinscription : si le score dépasse à nouveau le seuil, relancer le workflow MQL
**Résultat :** Les leads rejetés obtiennent une seconde chance sans engorger le pipeline
**Notes :** Suivre le taux de conversion recyclé-vers-MQL comme indicateur séparé

---

### 8. Digest d’activité leads

**Nom :** Récapitulatif quotidien d’activité leads
**Déclencheur :** Programmé, chaque matin à 8 h (heure locale)
**Actions :**
1. Filtrer les contacts : stade du cycle de vie = « SQL » ou « Opportunité » ET activité web dans les dernières 24 heures
2. Envoyer un e-mail digest à chaque propriétaire de contact avec l’activité de ses leads
3. Inclure : pages visitées, contenus téléchargés, e-mails ouverts et cliqués
**Résultat :** Les commerciaux démarrent chaque journée en sachant quels leads sont actifs
**Notes :** N’inclure que les leads avec une activité significative (exclure les simples visites de la page d’accueil)

---

## Équivalents Salesforce Flow

### 1. Alerte MQL et assignation (Salesforce Flow)

**Type :** Flow déclenché par un enregistrement
**Objet :** Lead
**Déclencheur :** Le champ « Statut » du lead passe à « MQL »
**Étapes du flow :**
1. Obtenir des enregistrements : interroger l’objet personnalisé « File de commerciaux » pour le prochain disponible
2. Mettre à jour les enregistrements : définir le propriétaire du lead
3. Créer des enregistrements : créer une tâche « Contacter MQL : {Lead.Name} » avec échéance = NOW + 4 heures
4. Action : envoyer une alerte e-mail au nouveau propriétaire du lead
5. Mettre à jour les enregistrements : mettre à jour l’horodatage de dernière assignation dans « File de commerciaux »
**Notes :** Utiliser un objet personnalisé « File de commerciaux » pour gérer l’état du round-robin

### 2. Escalade SLA (Salesforce Flow)

**Type :** Flow déclenché par planification
**Planification :** Toutes les 4 heures pendant les heures ouvrées
**Étapes du flow :**
1. Obtenir des enregistrements : leads dont Statut = « MQL » ET DateDernièreActivité < AUJOURD’HUI - 1
2. Décision : le lead a-t-il plus de 48 heures sans activité ?
   - OUI → Réassigner au prochain commercial, créer une tâche urgente, alerter le manager
   - NON → Envoyer un e-mail de rappel au propriétaire actuel
**Notes :** Combiner avec Process Builder pour les alertes en temps réel lors de la première assignation

### 3. Automatisation des stades du pipeline (Salesforce Flow)

**Type :** Flow déclenché par un enregistrement
**Objet :** Opportunité
**Déclencheur :** Le champ Stade est mis à jour
**Étapes du flow :**
1. Décision : vers quel stade le deal a-t-il été déplacé ?
2. Pour chaque stade :
   - **Découverte :** Créer une tâche « Compléter le questionnaire de découverte »
   - **Démo :** Créer une tâche « Préparer l’environnement de démo »
   - **Proposition :** Créer une tâche « Envoyer la proposition » + alerter le deal desk si ACV > 25 000 €
   - **Gagné :** Déclencher la passation CS (créer un Case, assigner un responsable CS, envoyer un e-mail de bienvenue)
   - **Perdu :** Créer une tâche « Consigner le motif de perte » + ajouter au rapport d’analyse gains/pertes

### 4. Détection des deals stagnants (Salesforce Flow)

**Type :** Flow déclenché par planification
**Planification :** Chaque matin à 7 h
**Étapes du flow :**
1. Obtenir des enregistrements : opportunités ouvertes où Jours_dans_le_stade > Seuil_SLA_du_stade
2. Boucler sur les résultats :
   - Créer une tâche : « Mettre à jour le deal stagnant : {Opportunity.Name} »
   - Envoyer un e-mail au propriétaire de l’opportunité
   - Si Jours_dans_le_stade > 2 fois le seuil → envoyer un e-mail au manager du propriétaire
3. Mettre à jour le champ personnalisé « Indicateur stagnant » = vrai pour la visibilité dans les tableaux de bord

---

## Modèles d’intégration Calendly / SavvyCal

### Planification de réunions en round-robin

**Configuration Calendly :**
1. Créer un type d’événement d’équipe avec tous les commerciaux éligibles
2. Distribution : « Optimiser pour une répartition égale »
3. Disponibilités : chaque commercial gère son propre agenda
4. Tampon : 15 min avant et après chaque réunion
5. Délai minimum : 4 heures (évite les réservations de dernière minute)

**Intégration CRM :**
1. Le webhook Calendly se déclenche à la réservation
2. Trouver le contact CRM correspondant à l’e-mail de l’invité
3. Si le contact existe → assigner la réunion au propriétaire du contact (priorité sur le round-robin)
4. Si nouveau contact → créer le lead, assigner selon les règles de routage, consigner la réunion
5. Passer le stade du cycle de vie à MQL (une réunion = forte intention)

### Configuration SavvyCal

**Avantages par rapport à Calendly :**
- Planification basée sur des priorités (préférence de certains créneaux)
- Superposition de calendriers (afficher la disponibilité de l’équipe en une seule vue)
- Liens de réservation personnalisés par commercial

**Modèle d’intégration :**
1. Créer un lien de planification d’équipe avec des règles de priorité
2. Webhook à la réservation → Zapier/Make → CRM
3. Trouver ou créer le contact, assigner le propriétaire, créer la tâche
4. Envoyer une confirmation avec les supports de préparation

### Routage de réunions par critères

```
Formulaire de réservation soumis
├─ Effectif de l'entreprise > 500 ? (champ du formulaire)
│  ├─ OUI → Diriger vers l'agenda de l'AE enterprise
│  └─ NON ↓
├─ Client existant ? (requête CRM)
│  ├─ OUI → Diriger vers l'agenda du propriétaire du compte
│  └─ NON ↓
└─ Round-robin sur l'équipe SDR
```

### Workflow de no-show

**Déclencheur :** L’heure de la réunion est passée + aucune note de réunion consignée dans les 30 minutes
**Actions :**
1. Attendre 30 minutes après l’heure de la réunion prévue
2. Vérifier : un appel ou une réunion a-t-il été consigné ?
   - OUI → Aucune action
   - NON → Envoyer un e-mail « Désolé de vous avoir manqué » au prospect
3. Créer une tâche : « Reprogrammer avec [Prénom Nom] », échéance le prochain jour ouvré
4. Si deuxième no-show → signaler le contact et alerter le manager

---

## Automatisations cross-outils avec Zapier

### 1. Nouveau lead → CRM + Slack + tâche

**Déclencheur :** Nouvelle soumission de formulaire (Typeform, HubSpot, Webflow)
**Actions :**
1. Créer ou mettre à jour le contact dans le CRM
2. Enrichir avec Clearbit (si disponible)
3. Publier sur Slack #nouveaux-leads avec les données enrichies
4. Créer une tâche dans l’outil de gestion de projet (Asana, Linear)

### 2. Réunion réservée → CRM + e-mail de préparation

**Déclencheur :** Nouvelle réservation Calendly/SavvyCal
**Actions :**
1. Trouver ou créer le contact CRM
2. Passer le stade du cycle de vie à MQL
3. Envoyer un e-mail de préparation au commercial assigné (lien CRM, profil LinkedIn, activité récente)
4. Créer une tâche pré-réunion

### 3. Deal gagné → stack d’onboarding

**Déclencheur :** Stade du deal passé à « Gagné » dans le CRM
**Actions :**
1. Créer un enregistrement client dans l’outil CS (Vitally, Gainsight, ChurnZero)
2. Ajouter au modèle de projet d’onboarding
3. Envoyer un e-mail de bienvenue via l’outil e-mail
4. Créer un canal Slack : #client-[nom-de-lentreprise]
5. Notifier l’équipe CS sur Slack

### 4. Score lead → synchronisation cross-outils

**Déclencheur :** Le score du lead dans le CRM dépasse le seuil MQL
**Actions :**
1. Mettre à jour le statut dans la plateforme de marketing automation
2. Ajouter à l’audience de reciblage (Facebook Ads, Google Ads)
3. Déclencher la séquence de prospection SDR
4. Consigner l’événement dans l’outil analytics (Mixpanel, Amplitude)

### 5. Dépassement de SLA → alerte multi-canal

**Déclencheur :** Tâche CRM en retard (tâche de suivi MQL)
**Actions :**
1. Envoyer un message direct Slack au commercial
2. Envoyer un e-mail au commercial
3. Si retard supérieur à 2 heures → message direct Slack au manager
4. Si retard supérieur à 4 heures → réassigner dans le CRM (via webhook retour vers le CRM)

### 6. Digest hebdomadaire du pipeline

**Déclencheur :** Planifié, chaque lundi à 8 h
**Actions :**
1. Interroger le CRM pour un récapitulatif du pipeline (valeur totale, nouveaux deals, deals stagnants, clôtures prévues)
2. Formater en synthèse
3. Publier sur Slack #equipe-ventes
4. Envoyer un e-mail digest à la direction commerciale
