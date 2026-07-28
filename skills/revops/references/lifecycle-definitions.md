# Définitions des stades du cycle de vie

Modèles complets pour les stades du cycle de vie des leads, les critères MQL par type d’activité, les SLA et les workflows de rejet/recyclage.

## Modèles de stades

### Abonné

**Critères d’entrée :**
- Opt-in au blog, à la newsletter ou aux mises à jour de contenus
- Aucune information entreprise requise

**Critères de sortie :**
- Fournit des informations sur son entreprise via un formulaire ou l’enrichissement
- Visite 3 pages ou plus lors d’une même session
- Télécharge un contenu à accès restreint

**Responsable :** Marketing (automatisé)

**Actions à l’entrée :**
- Ajouter à la nurture newsletter
- Commencer à suivre le score d’engagement

---

### Lead

**Critères d’entrée :**
- Contact identifié avec nom + e-mail + entreprise
- Peut provenir d’un formulaire, de l’enrichissement ou d’un import

**Critères de sortie :**
- Atteint le seuil MQL (profil + engagement)
- Qualifié manuellement par le marketing ou un SDR

**Responsable :** Marketing

**Actions à l’entrée :**
- Enrichir les données du contact (taille de l’entreprise, secteur, fonction)
- Lancer le scoring
- Ajouter à la séquence de nurture correspondante

---

### MQL (Marketing Qualified Lead)

**Critères d’entrée :**
- Atteint le seuil de score profil ET de score engagement
- OU déclenche une action à forte intention (demande de démo, visite page tarifs + remplissage de formulaire)

**Critères de sortie :**
- Ventes accepte (devient SQL)
- Ventes rejette (recyclage en nurture avec code de motif)
- Aucune réponse dans le SLA (escalade vers le manager)

**Responsable :** Marketing → Ventes (passation)

**Actions à l’entrée :**
- Alerte immédiate au commercial assigné
- Créer une tâche de suivi avec un SLA de 4 heures
- Mettre en pause les séquences de nurture marketing
- Consigner toute l’activité récente pour donner le contexte aux ventes

---

### SQL (Sales Qualified Lead)

**Critères d’entrée :**
- Le commercial a eu un entretien de qualification
- Confirmé : budget, décideur, besoin ou calendrier (au moins 2 critères sur 4)

**Critères de sortie :**
- Opportunité créée avec valeur projetée
- Disqualifié (recyclage avec code de motif)

**Responsable :** Ventes (SDR ou AE)

**Actions à l’entrée :**
- Mettre à jour le stade du cycle de vie dans le CRM
- Notifier l’AE si qualifié par un SDR
- Lancer la séquence de vente si la conversation n’est pas encore en cours

---

### Opportunité

**Critères d’entrée :**
- Opportunité formelle créée dans le CRM
- Valeur du deal, date de clôture et stade renseignés

**Critères de sortie :**
- Gagné ou perdu

**Responsable :** Ventes (AE)

**Actions à l’entrée :**
- Ajouter aux rapports du pipeline
- Créer les tâches du deal (proposition, démo, etc.)
- Notifier le CS si le deal est susceptible de se conclure

---

### Client

**Critères d’entrée :**
- Deal gagné
- Contrat signé et conditions de paiement établies

**Critères de sortie :**
- Churn, expansion ou renouvellement

**Responsable :** Customer Success / Gestion de compte

**Actions à l’entrée :**
- Déclencher la séquence d’onboarding
- Assigner un responsable CS
- Planifier l’appel de lancement
- Retirer de toutes les séquences de vente

---

### Ambassadeur

**Critères d’entrée :**
- NPS de 9 ou 10, ou activité de recommandation active
- A accepté de participer à une étude de cas, un témoignage ou un programme de parrainage

**Critères de sortie :**
- Participation continue au programme

**Responsable :** Customer Success + Marketing

**Actions à l’entrée :**
- Ajouter au programme d’advocacy
- Solliciter une étude de cas ou un témoignage
- Inviter au programme de parrainage
- Mettre en avant dans les campagnes marketing (avec accord)

---

## Modèles de critères MQL par type d’activité

### PLG (Product-Led Growth)

**Score profil (pondération 40 %) :**

| Attribut | Points |
|----------|--------|
| Effectif 10 à 500 | +15 |
| Effectif 500 à 5 000 | +20 |
| Secteur cible | +10 |
| Fonction décisionnaire | +15 |
| Utilise un outil complémentaire | +10 |

**Score engagement (pondération 60 %) :** privilégier l’usage produit

| Signal | Points |
|--------|--------|
| Création d’un compte gratuit | +15 |
| Onboarding terminé | +20 |
| Fonctionnalité principale utilisée 3 fois ou plus | +25 |
| Membre de l’équipe invité | +20 |
| Limite d’utilisation atteinte | +15 |
| Visite de la page tarifs | +10 |

**Seuil MQL : 65 points**

---

### Sales-led (enterprise)

**Score profil (pondération 60 %) :** le profil est déterminant à cet ACV

| Attribut | Points |
|----------|--------|
| Effectif 500+ | +20 |
| Secteur cible | +15 |
| Titre VP ou supérieur | +20 |
| Autorité budgétaire confirmée | +15 |
| Utilise un produit concurrent | +10 |

**Score engagement (pondération 40 %) :**

| Signal | Points |
|--------|--------|
| Demande de démo | +25 |
| Présence à un webinaire | +10 |
| Téléchargement d’un livre blanc | +10 |
| Visite de la page tarifs 2 fois ou plus | +15 |
| Interaction avec un e-mail commercial | +10 |

**Seuil MQL : 70 points**

---

### Mid-market (équilibré)

**Score profil (pondération 50 %) :**

| Attribut | Points |
|----------|--------|
| Effectif 50 à 1 000 | +15 |
| Secteur cible | +10 |
| Titre manager ou supérieur | +15 |
| Géographie cible | +10 |

**Score engagement (pondération 50 %) :**

| Signal | Points |
|--------|--------|
| Demande de démo | +25 |
| Inscription à un essai gratuit | +20 |
| Visite de la page tarifs | +10 |
| Téléchargement de contenus (2 ou plus) | +10 |
| Clic sur e-mail (3 ou plus) | +10 |
| Présence à un webinaire | +10 |

**Seuil MQL : 60 points**

---

## Modèles de SLA

### SLA MQL-vers-SQL

| Indicateur | Objectif | Escalade |
|------------|---------|----------|
| Première tentative de contact | Dans les 4 heures ouvrées | Alerte au responsable ventes à 4 heures |
| Décision de qualification | Dans les 48 heures | Escalade automatique à 48 heures |
| Réunion planifiée (si qualifié) | Dans les 5 jours ouvrés | Signalement en revue hebdomadaire du pipeline |

### SLA SQL-vers-opportunité

| Indicateur | Objectif | Escalade |
|------------|---------|----------|
| Appel de découverte réalisé | Dans les 3 jours ouvrés après le SQL | Alerte au manager AE |
| Opportunité créée | Dans les 5 jours ouvrés après le SQL | Signalement en revue pipeline |

### SLA opportunité-vers-clôture

| Indicateur | Objectif | Escalade |
|------------|---------|----------|
| Proposition envoyée | Dans les 5 jours ouvrés après la démo | Alerte au manager AE |
| Deal immobile dans un stade | 2 fois la durée moyenne pour ce stade | Signalement en revue pipeline |
| Date de clôture reportée 2 fois ou plus | Immédiat | Revue des prévisions obligatoire |

---

## Rejet et recyclage des leads

### Codes de motif de rejet

| Code | Motif | Action de recyclage |
|------|-------|---------------------|
| **PROFIL-01** | Entreprise trop petite | Nurture ; recalculer le score si l’entreprise grandit |
| **PROFIL-02** | Secteur non ciblé | Archiver ; ne pas recycler |
| **PROFIL-03** | Mauvaise fonction / pas d’autorité | Nurture ; surveiller les changements organisationnels |
| **ENG-01** | Aucune réponse après 3 tentatives | Recycler en nurture dans 90 jours |
| **ENG-02** | Intéressé mais mauvais timing | Recycler en nurture ; reprendre contact dans 60 jours |
| **QUAL-01** | Pas de budget | Recycler en nurture dans 90 jours |
| **QUAL-02** | Sous contrat avec un concurrent | Recycler ; déclencher avant le renouvellement du contrat |
| **QUAL-03** | Pas de projet réel | Archiver ; ne pas recycler |

### Workflow de recyclage

1. Les ventes rejettent le MQL avec un code de motif
2. Le CRM passe le stade du cycle de vie à « Recyclé »
3. Le lead entre dans la séquence de nurture de recyclage (différente de la nurture initiale)
4. Le score d’engagement est réinitialisé à la valeur de base (le score profil est conservé)
5. Si le lead se réengage et dépasse à nouveau le seuil MQL, il est redirigé vers les ventes avec le flag « MQL recyclé »
6. Suivre le taux de conversion des MQL recyclés séparément

### Séquence de nurture de recyclage

- **Fréquence :** Bimensuelle ou mensuelle (moins fréquente que la nurture initiale)
- **Contenus :** Actualités sectorielles, études de cas, mises à jour produit
- **Durée :** 6 mois, puis archiver si aucun engagement
- **Déclencheur de re-MQL :** Action à forte intention (demande de démo, revisit de la page tarifs)
