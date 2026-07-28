# App Store d'Apple : Specs et règles officielles

Données issues de developer.apple.com, à jour en mars 2026.

## Limites de caractères

| Champ                          | Limite              | Indexé pour la recherche ?   | Notes                                                                         |
| ------------------------------ | ------------------- | ---------------------------- | ----------------------------------------------------------------------------- |
| Nom de l'app                   | 30 car. (min 2)     | Oui                          | Doit être unique ; pas de marques déposées, noms de concurrents ni tarifs     |
| Sous-titre                     | 30 car.             | Oui                          | Aucune allégation invérifiable                                                |
| Mots-clés                      | 100 octets          | Oui (masqué)                 | Virgules, sans espaces entre les termes                                       |
| Description                    | 4 000 car.          | **Non**                      | Texte brut uniquement, pas de HTML                                            |
| Texte promotionnel             | 170 car.            | **Non** (confirmé par Apple) | Modifiable sans nouvelle version                                              |
| Nouveautés                     | 4 000 car.          | Non                          | Obligatoire pour toutes les versions après la première                        |
| Nom d'achat intégré            | 35 car.             | Oui                          | Apparaît dans les résultats de recherche                                      |
| Description d'achat intégré    | 55 car.             | Non                          |                                                                               |
| Nom d'événement intégré        | 30 car.             | Oui                          | Casse de titre requise                                                        |
| Description courte d'événement | 50 car.             | Oui                          | Casse de phrase                                                               |
| Description longue d'événement | 120 car.            | Non                          | Casse de phrase                                                               |

**Le champ mots-clés est de 100 octets, pas 100 caractères.** Les scripts non-latins (arabe, chinois, japonais, coréen) consomment 2 à 3 octets par caractère, ce qui réduit significativement le nombre de mots-clés utilisables.

## Specs des captures d'écran

| Appareil         | Obligatoire ?  | Nombre | Dimensions (portrait)      |
| ---------------- | -------------- | ------ | -------------------------- |
| iPhone 6,9"      | **Oui**        | 1-10   | 1 260 x 2 736              |
| iPad 13"         | **Oui**        | 1-10   | 2 064 x 2 752              |
| Mac              | Si applicable  | 1-10   | Jusqu'à 2 880 x 1 800 (16:9) |
| Apple Watch      | Si applicable  | 1-10   | Variable selon le modèle   |
| Apple TV         | Si applicable  | 1-10   | 1 920 x 1 080 ou 3 840 x 2 160 |
| Apple Vision Pro | Si applicable  | 1-10   | 3 840 x 2 160              |

- Formats : JPEG, PNG
- Apple adapte automatiquement à partir des tailles de base requises

## Specs des vidéos de présentation

- **Nombre :** jusqu'à 3 par app
- **Durée :** 15 à 30 secondes
- **Taille max :** 500 Mo
- **Codecs :** H.264 (10-12 Mbps, jusqu'à 30 fps) ou ProRes 422 HQ
- **Audio :** stéréo, AAC 256 kbps ou PCM, 44,1/48 kHz
- **Formats :** .mov, .m4v, .mp4
- **Comportement :** lecture automatique sans son sur la page produit (iOS 11+)

## Pages produit personnalisées (CPP)

- **Maximum :** 70 pages supplémentaires (plus la page par défaut)
- **Personnalisables :** captures d'écran, texte promotionnel, vidéos de présentation, liens profonds (iOS 18+)
- **Mots-clés :** chaque combinaison de mots-clés doit être unique à une seule CPP
- **Révision :** soumise à l'App Review indépendamment des mises à jour de l'app
- **Recherche organique :** les CPP apparaissent dans les résultats de recherche organiques depuis juillet 2025
- **Performance :** gain de conversion moyen de +2,5 points de pourcentage par rapport à la page par défaut

## Optimisation de page produit : tests A/B (PPO)

- **Variantes :** jusqu'à 3 vs l'original
- **Testables :** icônes d'app, captures d'écran, vidéos de présentation
- **Non testables :** titre, sous-titre, description, mots-clés
- **Tests simultanés :** 1 par app
- **Durée max :** 90 jours
- **Contrainte icône :** toutes les variantes d'icône doivent être incluses dans le binaire de l'app publiée
- **Seuil de confiance :** Apple recommande 90 % (méthode bayésienne)
- Un test ne peut pas être modifié une fois lancé

## Événements intégrés

- **Max approuvés :** 15 dans App Store Connect simultanément
- **Max publiés :** 10 sur l'App Store simultanément
- **Durée max :** 31 jours par événement
- **Promotion avant démarrage :** jusqu'à 14 jours avant le début
- **Types de badge :** Défi, Compétition, Événement en direct, Mise à jour majeure, Nouvelle saison, Avant-première, Événement spécial

**Image de la carte événement :** 16:9, min 1 920 x 1 080, max 3 840 x 2 160
**Image des détails d'événement :** 9:16, min 1 080 x 1 920, max 2 160 x 3 840

**Non adapté :** tâches quotidiennes répétitives, promotions de prix sans nouveau contenu, campagnes de notoriété générique.

## Notes et avis

- **SKStoreReviewController :** 3 demandes maximum sur 365 jours
- Le système contrôle la fréquence d'affichage (peut en afficher moins de 3)
- Ne pas utiliser de boutons personnalisés pour solliciter des avis
- Les développeurs peuvent répondre à tous les avis dans App Store Connect
- La note globale est spécifique à chaque territoire

## Motifs de rejet des métadonnées (directives App Review)

| Directive | Motif de rejet                                                                         |
| --------- | -------------------------------------------------------------------------------------- |
| 2.3.1     | Fonctionnalités cachées, marketing trompeur, faux tarifs                               |
| 2.3.2     | Achats intégrés non mentionnés dans la description ou les captures                     |
| 2.3.3     | Captures ne montrant pas l'app en usage (écran de démarrage ou de connexion uniquement) |
| 2.3.4     | Vidéos de présentation utilisant du contenu extérieur à l'app                         |
| 2.3.5     | Mauvaise catégorie sélectionnée                                                        |
| 2.3.7     | Bourrage de mots-clés : marques déposées, noms de concurrents, tarifs, termes hors sujet |
| 2.3.8     | Métadonnées inappropriées pour tous les publics (doit être classé 4+)                 |
| 2.3.10    | Noms ou visuels d'autres plateformes (Android, etc.) dans les métadonnées             |
| 2.3.12    | Texte « Nouveautés » générique pour des changements importants                        |
| 2.3.13    | Métadonnées d'événement intégré inexactes                                             |

Sources : developer.apple.com/app-store/product-page/,
developer.apple.com/app-store/search/,
developer.apple.com/app-store/review/guidelines/
