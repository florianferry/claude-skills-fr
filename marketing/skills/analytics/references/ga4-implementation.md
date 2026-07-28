# Guide d'implémentation GA4

Guide détaillé pour l'implémentation de Google Analytics 4.

## Sommaire
- Configuration (flux de données, événements de mesure améliorée, événements recommandés)
- Événements personnalisés (implémentation gtag.js, Google Tag Manager)
- Configuration des conversions (créer des conversions, valeurs de conversion)
- Dimensions et métriques personnalisées (quand les utiliser, étapes de configuration, exemples)
- Audiences (créer des audiences, exemples)
- Débogage (DebugView, rapports en temps réel, problèmes courants)
- Qualité des données (filtres, tracking cross-domaine, paramètres de session)
- Intégration avec Google Ads (liaison, export d'audiences)

## Configuration

### Flux de données

- Un flux par plateforme (web, iOS, Android)
- Activer la mesure améliorée pour le tracking automatique
- Configurer la conservation des données (2 mois par défaut, 14 mois au maximum)
- Activer Google Signals (pour le cross-device, sous réserve de consentement)

### Événements de mesure améliorée (automatiques)

| Événement | Description | Configuration |
|-----------|-------------|---------------|
| page_view | Chargements de page | Automatique |
| scroll | 90 % de profondeur de scroll | Activable/désactivable |
| outbound_click | Clic vers un domaine externe | Automatique |
| site_search | Requête de recherche utilisée | Configurer le paramètre |
| video_engagement | Lectures de vidéos YouTube | Activable/désactivable |
| file_download | PDF, documents, etc. | Extensions configurables |

### Événements recommandés

Utilise les événements prédéfinis de Google quand c'est possible pour enrichir les rapports :

**Toutes propriétés :**
- login, sign_up
- share
- search

**E-commerce :**
- view_item, view_item_list
- add_to_cart, remove_from_cart
- begin_checkout
- add_payment_info
- purchase, refund

**Jeux :**
- level_up, unlock_achievement
- post_score, spend_virtual_currency

Référence : https://support.google.com/analytics/answer/9267735

---

## Événements personnalisés

### Implémentation gtag.js

```javascript
// Événement simple
gtag('event', 'signup_completed', {
  'method': 'email',
  'plan': 'gratuit'
});

// Événement avec valeur
gtag('event', 'purchase', {
  'transaction_id': 'T12345',
  'value': 99.99,
  'currency': 'EUR',
  'items': [{
    'item_id': 'REF123',
    'item_name': 'Nom du produit',
    'price': 99.99
  }]
});

// Propriétés utilisateur
gtag('set', 'user_properties', {
  'user_type': 'premium',
  'plan_name': 'pro'
});

// User ID (pour les utilisateurs connectés)
gtag('config', 'GA_MEASUREMENT_ID', {
  'user_id': 'USER_ID'
});
```

### Google Tag Manager (dataLayer)

```javascript
// Événement personnalisé
dataLayer.push({
  'event': 'signup_completed',
  'method': 'email',
  'plan': 'gratuit'
});

// Définir les propriétés utilisateur
dataLayer.push({
  'user_id': '12345',
  'user_type': 'premium'
});

// Achat e-commerce
dataLayer.push({
  'event': 'purchase',
  'ecommerce': {
    'transaction_id': 'T12345',
    'value': 99.99,
    'currency': 'EUR',
    'items': [{
      'item_id': 'REF123',
      'item_name': 'Nom du produit',
      'price': 99.99,
      'quantity': 1
    }]
  }
});

// Vider l'objet ecommerce avant chaque push (bonne pratique)
dataLayer.push({ ecommerce: null });
dataLayer.push({
  'event': 'view_item',
  'ecommerce': {
    // ...
  }
});
```

---

## Configuration des conversions

### Créer des conversions

1. **Collecter l'événement** : s'assurer que l'événement remonte dans GA4
2. **Marquer comme conversion** : Admin > Événements > Marquer comme conversion
3. **Choisir la méthode de comptage** :
   - Une fois par session (leads, inscriptions)
   - À chaque événement (achats)
4. **Importer dans Google Ads** : pour l'optimisation des enchères par conversion

### Valeurs de conversion

```javascript
// Événement avec valeur de conversion
gtag('event', 'purchase', {
  'value': 99.99,
  'currency': 'EUR'
});
```

Ou définir une valeur par défaut dans l'Admin GA4 lors du marquage de la conversion.

---

## Dimensions et métriques personnalisées

### Quand les utiliser

**Dimensions personnalisées :**
- Attributs sur lesquels tu veux segmenter ou filtrer
- Attributs utilisateur (type d'offre, secteur)
- Attributs de contenu (auteur, catégorie)

**Métriques personnalisées :**
- Valeurs numériques à agréger
- Scores, comptages, durées

### Étapes de configuration

1. Admin > Affichage des données > Définitions personnalisées
2. Créer une dimension ou une métrique
3. Choisir la portée :
   - **Événement** : par événement (content_type)
   - **Utilisateur** : par utilisateur (account_type)
   - **Article** : par produit (product_category)
4. Saisir le nom du paramètre (doit correspondre exactement au paramètre d'événement)

### Exemples

| Dimension | Portée | Paramètre | Description |
|-----------|--------|-----------|-------------|
| Type d'utilisateur | Utilisateur | user_type | Gratuit, essai, payant |
| Auteur du contenu | Événement | author | Auteur d'un article de blog |
| Catégorie produit | Article | item_category | Catégorie e-commerce |

---

## Audiences

### Créer des audiences

Admin > Affichage des données > Audiences

**Cas d'usage :**
- Audiences de remarketing (export vers Ads)
- Analyse par segment
- Événements basés sur des déclencheurs

### Exemples d'audiences

**Visiteurs à forte intention :**
- A consulté la page de tarifs
- N'a pas converti
- Dans les 7 derniers jours

**Utilisateurs engagés :**
- 3 sessions ou plus
- Ou 5 minutes d'engagement total ou plus

**Acheteurs :**
- Événement purchase
- Pour exclusion ou audience similaire

---

## Débogage

### DebugView

Activer avec :
- Paramètre URL : `?debug_mode=true`
- Extension Chrome : GA Debugger
- gtag : `'debug_mode': true` dans la config

Voir dans : Rapports > Configurer > DebugView

### Rapports en temps réel

Vérifie les événements dans les 30 minutes suivant leur déclenchement :
Rapports > Temps réel

### Problèmes courants

**Événements absents :**
- Vérifier DebugView en premier
- Contrôler que gtag/GTM se charge bien
- Vérifier les exclusions de filtres

**Valeurs de paramètres manquantes :**
- Dimension personnalisée non créée
- Nom du paramètre incorrect
- Données encore en cours de traitement (24 à 48 h)

**Conversions non enregistrées :**
- Événement non marqué comme conversion
- Nom de l'événement qui ne correspond pas
- Méthode de comptage (une fois vs. à chaque fois)

---

## Qualité des données

### Filtres

Admin > Flux de données > [Flux] > Configurer les paramètres du tag > Définir le trafic interne

**Exclure :**
- Adresses IP internes
- Trafic des développeurs
- Environnements de test

### Tracking cross-domaine

Pour plusieurs domaines partageant le même analytics :

1. Admin > Flux de données > [Flux] > Configurer les paramètres du tag
2. Configurer tes domaines
3. Lister tous les domaines devant partager les sessions

### Paramètres de session

Admin > Flux de données > [Flux] > Configurer les paramètres du tag

- Délai d'expiration de session (30 min par défaut)
- Durée de session engagée (10 secondes par défaut)

---

## Intégration avec Google Ads

### Liaison

1. Admin > Liens produits > Liens Google Ads
2. Activer le balisage automatique dans Google Ads
3. Importer les conversions dans Google Ads

### Export d'audiences

Les audiences créées dans GA4 peuvent être utilisées dans Google Ads pour :
- Les campagnes de remarketing
- Le customer match
- Les audiences similaires
