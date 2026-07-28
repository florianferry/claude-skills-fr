# Google Play Store : Specs et règles officielles

Données issues de support.google.com et developer.android.com, à jour en mars 2026.

## Limites de caractères

| Champ              | Limite       | Indexé ?                   | Notes                                          |
| ------------------ | ------------ | -------------------------- | ---------------------------------------------- |
| Titre de l'app     | 30 car.      | Oui (signal le plus fort)  | Réduit de 50 car. en septembre 2021            |
| Description courte | 80 car.      | Oui                        | Visible sans déplier                           |
| Description complète | 4 000 car. | **Oui (fortement)**        | Le NLP de Google indexe l'intégralité du texte |
| Nom du développeur | 64 car.      | Partiel                    | Mêmes restrictions emojis/majuscules que le titre |

## Contenus interdits dans les métadonnées (appliqué depuis septembre 2021)

**Titre, icône, nom du développeur :**

- Emojis, émoticônes, caractères spéciaux répétés
- TOUT EN MAJUSCULES (sauf marque déposée enregistrée)
- Allégations de performance : « top », « meilleur », « n°1 », « gratuit », « sans pub »
- Mention trompeuse des performances ou de la recommandation par le store
- Appels à l'action : « mettez à jour maintenant », « téléchargez maintenant »

**Description courte :**

- Mêmes allégations de performance que le titre
- Appels à l'action
- Témoignages sans attribution

**Captures d'écran, graphique de une, vidéo :**

- Slogans limités dans le temps
- Appels à l'action (« Téléchargez maintenant », « Jouez maintenant »)
- Doivent montrer authentiquement les fonctionnalités de l'app

## Specs des captures d'écran

| Appareil       | Min   | Max   | Ratio       | Résolution min  | Côté long max |
| -------------- | ----- | ----- | ----------- | --------------- | ------------- |
| Téléphone      | **2** | **8** | 9:16 ou 16:9 | 320 px (n'importe quel côté) | 3 840 px |
| Tablette 7"    | 4     | 8     | 9:16 ou 16:9 | 1 080 px (côté court) | 7 680 px |
| Tablette 10"   | 4     | 8     | 9:16 ou 16:9 | 1 080 px (côté court) | 7 680 px |
| Chromebook     | 4     | 8     | 9:16 ou 16:9 | 1 080 px (côté court) | 7 680 px |
| Wear OS        | 1     | 8     | **1:1**     | 384 x 384       | 3 840 px      |
| Android TV     | 1     | 8     | **16:9**    | 1 920 x 1 080   | 3 840 px      |

- **Taille recommandée téléphone :** 1 080 x 1 920 (portrait)
- **Format :** JPEG ou PNG 24 bits (sans alpha)
- **Taille max :** 8 Mo par fichier

**Note :** Google Play autorise 8 captures maximum par appareil, contre 10 chez Apple.

## Graphique de une

- **Dimensions :** 1 024 x 500 px (exactes, obligatoires)
- **Format :** JPEG ou PNG 24 bits (sans alpha)
- Affiché en haut de la fiche et dans les mises en avant

## Icône de l'app

- **Dimensions :** 512 x 512 px
- **Format :** PNG 32 bits (avec alpha)
- **Taille max :** 1 024 Ko
- **Forme :** carré plein (Google applique automatiquement un rayon de coin de 30 %)
- **Interdit :** allégations de classement, nombre de téléchargements, texte promotionnel, emojis

## Vidéo de présentation

- **Format :** URL YouTube (publique ou non répertoriée)
- **Durée recommandée :** 30 secondes à 2 minutes
- Pas de publicités, pas de monétisation, doit être intégrable, sans restriction d'âge
- **N'est pas lue automatiquement** (seulement ~6 % des visiteurs cliquent pour lancer)

## Expériences de listing : tests A/B

- **Variantes :** jusqu'à 3 par expérience (plus le contrôle)
- **Testables :** icône, graphique de une, captures d'écran, vidéo, description courte, description complète
- **Simultanées :** impossible de lancer plus d'une expérience graphique par défaut en même temps
- **Audience :** utilisateurs Google Play connectés uniquement
- **Indicateurs :** nouveaux installeurs + nouveaux installeurs retenus (rétention à 1 jour)
- **Durée :** au moins 7 jours (pour couvrir la variance semaine/week-end)
- **Localisées :** tester dans jusqu'à 5 langues simultanément

## Listings personnalisés

- **Maximum :** 50 par app (100 pour les partenaires Play)
- **Personnalisables :** titre, descriptions courte et complète, icône, captures, graphique de une, vidéo
- **Ciblage :** pays/région, pré-inscription, statut d'install, campagnes Google Ads, utilisateurs inactifs/perdus (28+ jours)
- **Ajout 2025 :** Gemini génère automatiquement du texte pour les listings personnalisés dans la Play Console

## Contenu promotionnel (LiveOps)

| Type                | Description                              | Durée                |
| ------------------- | ---------------------------------------- | -------------------- |
| Offres              | Réductions, objets gratuits, bundles     | Jusqu'à 28 jours     |
| Événements          | Événements in-app limités dans le temps  | Doit avoir une limite |
| Mise à jour majeure | Nouvelles fonctionnalités significatives | Max 1 semaine        |
| Crossover (jeux)    | Collaboration inter-jeux ou avec une IP  | Variable             |

- Soumettre **au moins 4 jours** avant le début (révision standard)
- Soumettre **au moins 14 jours** avant pour une demande de mise en avant
- **Impact :** « Plus du double d'acquisitions explore lors d'une mise en avant » (Google officiel)

## Android Vitals : Seuils de classement

Les apps dépassant ces seuils subissent une **réduction de visibilité** dans la recherche et les recommandations.

| Indicateur                              | Seuil global | Seuil par appareil |
| --------------------------------------- | ------------ | ------------------ |
| Taux de plantage perçu par l'utilisateur | **1,09 %**  | 8 %                |
| Taux d'ANR perçu par l'utilisateur      | **0,47 %**   | 8 %                |
| Wake locks partiels excessifs           | 5 %          | N/A                |

**Conséquences :** visibilité réduite dans la recherche, labels d'alerte sur la fiche, alertes qualité aux utilisateurs avant l'installation.
**Récupération :** Google vérifie quotidiennement sur une moyenne glissante de 28 jours.

## Facteurs de classement : source officielle Google

Google confirme que ces éléments affectent le classement :

1. **Pertinence des métadonnées** — le titre a le plus de poids. Le NLP scanne titre + description courte + description complète.
2. **Qualité de l'app** — Android Vitals (taux de plantage/ANR)
3. **Notes et avis** — note moyenne + texte des avis. 85 % des apps mises en avant ont 4,0+
4. **Volume et vélocité d'installation** — total des installs + fréquence quotidienne/hebdomadaire
5. **Engagement et rétention** — fréquence des sessions, durée, taux de rétention
6. **Fréquence des mises à jour** — des mises à jour régulières signalent un produit actif
7. **Localisation** — adaptation des mots-clés et des visuels par région. 59 % des apps américaines localisent leurs titres.

Sources : support.google.com/googleplay/android-developer/answer/4448378,
support.google.com/googleplay/android-developer/answer/9898842,
developer.android.com/topic/performance/vitals
