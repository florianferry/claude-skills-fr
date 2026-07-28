# Modèles de lead scoring

Modèles de scoring détaillés, exemples par type d’activité et conseils de recalibration.

## Modèle de scoring explicite (profil)

### Attributs entreprise

| Attribut | Critère | Points |
|----------|---------|--------|
| **Effectif** | 1 à 10 salariés | +5 |
| | 11 à 50 salariés | +10 |
| | 51 à 200 salariés | +15 |
| | 201 à 1 000 salariés | +20 |
| | 1 000+ salariés | +15 (ou +25 si ton ICP est enterprise) |
| **Secteur** | Secteur cible principal | +20 |
| | Secteur cible secondaire | +10 |
| | Secteur hors cible | 0 |
| **Chiffre d’affaires** | Moins de 1 M€ | +5 |
| | 1 à 10 M€ | +10 |
| | 10 à 100 M€ | +15 |
| | 100 M€+ | +20 |
| **Géographie** | Marché principal | +10 |
| | Marché secondaire | +5 |
| | Marché hors cible | 0 |

### Attributs de contact

| Attribut | Critère | Points |
|----------|---------|--------|
| **Titre** | Comité de direction (DG, DSI, CMO) | +25 |
| | Niveau directeur (VP, DRH) | +20 |
| | Responsable / chef de service | +15 |
| | Manager | +10 |
| | Collaborateur | +5 |
| **Département** | Département acheteur principal | +15 |
| | Département adjacent | +5 |
| | Département sans lien | 0 |
| **Niveau d’autorité** | Décideur | +20 |
| | Influenceur | +10 |
| | Utilisateur final | +5 |

### Attributs technologiques

| Attribut | Critère | Points |
|----------|---------|--------|
| **Stack technique** | Utilise un outil complémentaire | +15 |
| | Utilise un concurrent | +10 (comprend la catégorie) |
| | Utilise l’outil que tu remplaces | +20 |
| **Maturité tech** | Stack moderne (cloud, SaaS) | +10 |
| | Stack legacy | +5 |

---

## Modèle de scoring implicite (engagement)

### Signaux à forte intention

| Signal | Points | Décroissance |
|--------|--------|-------------|
| **Demande de démo** | +30 | Aucune |
| **Visite de la page tarifs** | +20 | -5 par semaine |
| **Inscription à un essai gratuit** | +25 | Aucune |
| **Formulaire de contact commercial** | +30 | Aucune |
| **Page étude de cas (2 ou plus)** | +15 | -5 toutes les 2 semaines |
| **Page de comparaison visitée** | +15 | -5 par semaine |
| **Calculateur de ROI utilisé** | +20 | -5 toutes les 2 semaines |

### Signaux à intention moyenne

| Signal | Points | Décroissance |
|--------|--------|-------------|
| **Inscription à un webinaire** | +10 | -5 par mois |
| **Présence à un webinaire** | +15 | -5 par mois |
| **Téléchargement d’un livre blanc** | +10 | -5 par mois |
| **Blog (3 visites ou plus en une semaine)** | +10 | -5 toutes les 2 semaines |
| **Clic sur un e-mail** | +5 par clic | -2 par mois |
| **Ouverture d’e-mail (3 ou plus)** | +5 | -2 par mois |
| **Engagement sur les réseaux sociaux** | +5 | -2 par mois |

### Signaux à faible intention

| Signal | Points | Décroissance |
|--------|--------|-------------|
| **Visite unique d’un article de blog** | +2 | -2 par mois |
| **Ouverture de la newsletter** | +2 | -1 par mois |
| **Ouverture unique d’un e-mail** | +1 | -1 par mois |
| **Visite de la page d’accueil uniquement** | +1 | -1 par semaine |

### Signaux d’usage produit (PLG)

| Signal | Points | Décroissance |
|--------|--------|-------------|
| **Création de compte** | +15 | Aucune |
| **Onboarding terminé** | +20 | Aucune |
| **Fonctionnalité principale utilisée 3 fois ou plus** | +25 | -5 par mois d’inactivité |
| **Membre de l’équipe invité** | +25 | Aucune |
| **Limite d’utilisation atteinte** | +20 | -10 par mois |
| **Données exportées** | +10 | -5 par mois |
| **Intégration connectée** | +15 | Aucune |
| **Actif quotidiennement pendant 5 jours ou plus** | +20 | -10 toutes les 2 semaines d’inactivité |

---

## Signaux de scoring négatif

| Signal | Points | Notes |
|--------|--------|-------|
| **Domaine e-mail d’un concurrent** | -50 | Signaler automatiquement pour revue |
| **E-mail étudiant (.edu ou équivalent)** | -30 | Peut rester valide dans certains cas |
| **E-mail personnel (gmail, hotmail, etc.)** | -10 | Moins pertinent en B2B ; adapter pour les TPE |
| **Désabonnement** | -20 | Réduire le score d’engagement |
| **Bounce définitif** | -50 | Retirer du scoring |
| **Signalement spam** | -100 | Retirer de toutes les séquences |
| **Titre : stagiaire / étudiant** | -25 | Faible autorité décisionnelle |
| **Titre : consultant** | -10 | Peut évaluer pour le compte d’un client |
| **Aucune visite site depuis 90 jours** | -15 | Décroissance du score |
| **Numéro de téléphone invalide** | -10 | Signal de qualité des données |
| **Seule la page Carrières visitée** | -30 | Probablement un candidat à l’emploi |

---

## Exemples de modèles de scoring

### Modèle 1 : SaaS PLG (ACV 500 à 5 000 €)

**Pondération : 30 % profil / 70 % engagement (favoriser fortement l’usage produit)**

**Profil :**
- Effectif 10 à 500 : +15
- Secteur cible : +10
- Titre manager ou supérieur : +10
- Utilise un outil complémentaire : +10

**Engagement :**
- Création d’un compte gratuit : +15
- Onboarding terminé : +20
- Fonctionnalité principale utilisée 3 fois ou plus : +25
- Membre de l’équipe invité : +25
- Limite d’utilisation atteinte : +20
- Visite de la page tarifs : +15

**Négatif :**
- E-mail personnel : -10
- Aucune connexion depuis 14 jours : -15
- Domaine concurrent : -50

**Seuil MQL : 60 points**
**Recalibration : mensuelle** (boucle de feedback rapide avec volume élevé)

---

### Modèle 2 : Ventes enterprise (ACV 50 000 €+)

**Pondération : 60 % profil / 40 % engagement (le profil est décisif à cet ACV)**

**Profil :**
- Effectif 500+ : +20
- CA 50 M€ ou plus : +15
- Secteur cible : +15
- Titre VP ou supérieur : +20
- Décideur confirmé : +15
- Utilise un concurrent : +10

**Engagement :**
- Demande de démo : +30
- Plusieurs parties prenantes engagées : +20
- Présence à un webinaire direction : +15
- Téléchargement d’un guide ROI : +10
- Visite de la page tarifs 2 fois ou plus : +15

**Négatif :**
- Effectif inférieur à 100 : -30
- Collaborateur uniquement : -15
- Domaine concurrent : -50

**Seuil MQL : 75 points**
**Recalibration : trimestrielle** (cycles de vente longs, faible volume de données)

---

### Modèle 3 : Mid-market hybride (ACV 5 000 à 25 000 €)

**Pondération : 50 % profil / 50 % engagement (approche équilibrée)**

**Profil :**
- Effectif 50 à 1 000 : +15
- Secteur cible : +10
- Titre manager à directeur : +15
- Géographie cible : +10
- Utilise un outil complémentaire : +10

**Engagement :**
- Demande de démo ou inscription à l’essai gratuit : +25
- Visite de la page tarifs : +15
- Téléchargement d’une étude de cas : +10
- Présence à un webinaire : +10
- Engagement e-mail (3 clics ou plus) : +10
- Visites du blog (5 pages ou plus) : +10

**Négatif :**
- E-mail personnel : -10
- Aucun engagement depuis 30 jours : -10
- Domaine concurrent : -50
- Titre stagiaire / étudiant : -25

**Seuil MQL : 65 points**
**Recalibration : trimestrielle**

---

## Recalibration du seuil

### Fixer le seuil initial

1. **Extraire les données de deals gagnés** sur les 6 à 12 derniers mois
2. **Recalculer rétrospectivement** chaque deal avec le nouveau modèle
3. **Trouver le point de rupture naturel** : quel score séparait les gains des pertes ?
4. **Fixer le seuil** juste en dessous du score atteint par 80 % des deals gagnés
5. **Valider** contre les deals perdus : si beaucoup de perdants dépassent le seuil, resserrer les critères

### Cadence de recalibration

| Type d’activité | Fréquence | Justification |
|----------------|-----------|---------------|
| PLG / volume élevé | Mensuelle | Boucle de feedback rapide, données abondantes |
| Mid-market | Trimestrielle | Cycle de vente moyen |
| Enterprise | Trimestrielle à semestrielle | Cycles longs, faible volume d’échantillon |

### Étapes de recalibration

1. **Extraire les données MQL-vers-clôture** sur la période de référence
2. **Comparer les MQL scorés aux résultats réels :**
   - Score élevé + deal gagné = scoring correct
   - Score élevé + deal perdu = possible faux positif (resserrer)
   - Score faible + deal gagné = possible faux négatif (assouplir)
3. **Ajuster les pondérations** selon les attributs réellement corrélés aux gains
4. **Ajuster le seuil** si le volume de MQL est trop élevé (relever) ou trop faible (abaisser)
5. **Documenter les changements** et les communiquer à l’équipe commerciale

### Signes que ton modèle doit être recalibré

- Le taux d’acceptation MQL-vers-SQL tombe sous 30 %
- Les ventes rejettent systématiquement les MQL comme « pas mûrs »
- Les leads au score élevé ne convertissent pas ; les scores faibles le font
- Le volume de MQL augmente sans hausse de chiffre d’affaires correspondante
- Nouveau produit ou nouveau marché depuis la dernière calibration
