# Guide d'implémentation Google Tag Manager

Guide détaillé pour mettre en place le tracking via Google Tag Manager.

## Sommaire
- Structure d'un conteneur (tags, déclencheurs, variables)
- Conventions de nommage
- Patterns dataLayer
- Configurations de tags courants (tag de configuration GA4, tag d'événement GA4, pixel Facebook)
- Prévisualisation et débogage
- Workspaces et versioning
- Gestion du consentement
- Patterns avancés (séquençage de tags, gestion des exceptions, variables JavaScript personnalisées)

## Structure d'un conteneur

### Tags

Les tags sont des extraits de code qui s'exécutent quand ils sont déclenchés.

**Types de tags courants :**
- Configuration GA4 (setup de base)
- Événement GA4 (événements personnalisés)
- Conversion Google Ads
- Pixel Facebook
- LinkedIn Insight Tag
- HTML personnalisé (pour d'autres pixels)

### Déclencheurs

Les déclencheurs définissent quand les tags se déclenchent.

**Déclencheurs intégrés :**
- Page vue : toutes les pages, DOM prêt, fenêtre chargée
- Clic : tous les éléments, liens uniquement
- Soumission de formulaire
- Profondeur de scroll
- Minuteur
- Visibilité d'un élément

**Déclencheurs personnalisés :**
- Événement personnalisé (depuis le dataLayer)
- Groupes de déclencheurs (conditions multiples)

### Variables

Les variables capturent des valeurs dynamiques.

**Intégrées (à activer selon les besoins) :**
- Texte du clic, URL du clic, ID du clic, classes du clic
- Chemin de la page, URL de la page, nom d'hôte
- Referrer
- Élément de formulaire, ID de formulaire

**Définies par l'utilisateur :**
- Variables dataLayer
- Variables JavaScript
- Tables de correspondance (lookup tables)
- Tables RegEx
- Constantes

---

## Conventions de nommage

### Format recommandé

```
[Type] - [Description] - [Détail]

Tags :
GA4 - Événement - Inscription terminée
GA4 - Config - Configuration de base
FB - Pixel - Page vue
HTML - Widget LiveChat

Déclencheurs :
Clic - Bouton CTA
Soumission - Formulaire contact
Vue - Page tarifs
Personnalisé - signup_completed

Variables :
DL - user_id
JS - Timestamp actuel
TC - Map des sources de campagne
```

---

## Patterns dataLayer

### Structure de base

```javascript
// Initialisation (dans le <head>, avant GTM)
window.dataLayer = window.dataLayer || [];

// Push d'un événement
dataLayer.push({
  'event': 'nom_evenement',
  'propriete1': 'valeur1',
  'propriete2': 'valeur2'
});
```

### Données au chargement de la page

```javascript
// À définir au chargement (avant le conteneur GTM)
window.dataLayer = window.dataLayer || [];
dataLayer.push({
  'pageType': 'produit',
  'contentGroup': 'produits',
  'user': {
    'loggedIn': true,
    'userId': '12345',
    'userType': 'premium'
  }
});
```

### Soumission de formulaire

```javascript
document.querySelector('#formulaire-contact').addEventListener('submit', function() {
  dataLayer.push({
    'event': 'form_submitted',
    'formName': 'contact',
    'formLocation': 'footer'
  });
});
```

### Clic sur un bouton

```javascript
document.querySelector('.btn-cta').addEventListener('click', function() {
  dataLayer.push({
    'event': 'cta_clicked',
    'ctaText': this.innerText,
    'ctaLocation': 'hero'
  });
});
```

### Événements e-commerce

```javascript
// Vue produit
dataLayer.push({ ecommerce: null }); // Vider le précédent
dataLayer.push({
  'event': 'view_item',
  'ecommerce': {
    'items': [{
      'item_id': 'REF123',
      'item_name': 'Nom du produit',
      'price': 99.99,
      'item_category': 'Catégorie',
      'quantity': 1
    }]
  }
});

// Ajout au panier
dataLayer.push({ ecommerce: null });
dataLayer.push({
  'event': 'add_to_cart',
  'ecommerce': {
    'items': [{
      'item_id': 'REF123',
      'item_name': 'Nom du produit',
      'price': 99.99,
      'quantity': 1
    }]
  }
});

// Achat
dataLayer.push({ ecommerce: null });
dataLayer.push({
  'event': 'purchase',
  'ecommerce': {
    'transaction_id': 'T12345',
    'value': 99.99,
    'currency': 'EUR',
    'tax': 5.00,
    'shipping': 10.00,
    'items': [{
      'item_id': 'REF123',
      'item_name': 'Nom du produit',
      'price': 99.99,
      'quantity': 1
    }]
  }
});
```

---

## Configurations de tags courants

### Tag de configuration GA4

**Type de tag :** Google Analytics : configuration GA4

**Paramètres :**
- ID de mesure : G-XXXXXXXX
- Envoyer une page vue : coché (pour les pages vues)
- Propriétés utilisateur : ajouter les dimensions au niveau utilisateur

**Déclencheur :** toutes les pages

### Tag d'événement GA4

**Type de tag :** Google Analytics : événement GA4

**Paramètres :**
- Tag de configuration : sélectionner le tag de config
- Nom de l'événement : `{{DL - event_name}}` ou en dur
- Paramètres d'événement : ajouter les paramètres depuis le dataLayer

**Déclencheur :** événement personnalisé correspondant au nom de l'événement

### Pixel Facebook : base

**Type de tag :** HTML personnalisé

```html
<script>
  !function(f,b,e,v,n,t,s)
  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
  n.callMethod.apply(n,arguments):n.queue.push(arguments)};
  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
  n.queue=[];t=b.createElement(e);t.async=!0;
  t.src=v;s=b.getElementsByTagName(e)[0];
  s.parentNode.insertBefore(t,s)}(window, document,'script',
  'https://connect.facebook.net/fr_FR/fbevents.js');
  fbq('init', 'TON_PIXEL_ID');
  fbq('track', 'PageView');
</script>
```

**Déclencheur :** toutes les pages

### Pixel Facebook : événement

**Type de tag :** HTML personnalisé

```html
<script>
  fbq('track', 'Lead', {
    content_name: '{{DL - form_name}}'
  });
</script>
```

**Déclencheur :** événement personnalisé `form_submitted`

---

## Prévisualisation et débogage

### Mode prévisualisation

1. Cliquer sur « Prévisualiser » dans GTM
2. Saisir l'URL du site
3. Le panneau de débogage GTM s'ouvre en bas

**Ce qu'il faut vérifier :**
- Tags déclenchés sur cet événement
- Tags non déclenchés (et pourquoi)
- Variables et leurs valeurs
- Contenu du dataLayer

### Conseils de débogage

**Tag qui ne se déclenche pas :**
- Vérifier les conditions du déclencheur
- Contrôler le push dans le dataLayer
- Vérifier le séquençage des tags

**Valeur de variable incorrecte :**
- Vérifier la structure du dataLayer
- Contrôler le chemin de la variable (objets imbriqués)
- Vérifier le timing (la donnée n'existe peut-être pas encore)

**Déclenchements multiples :**
- Vérifier l'unicité du déclencheur
- Rechercher des tags en double
- Contrôler les options de déclenchement du tag

---

## Workspaces et versioning

### Workspaces

Utilise les workspaces pour la collaboration en équipe :
- Workspace par défaut pour la production
- Workspaces séparés pour les changements importants
- Fusionner quand c'est prêt

### Gestion des versions

**Bonnes pratiques :**
- Nommer chaque version de façon descriptive
- Ajouter des notes expliquant les changements
- Relire les modifications avant publication
- Noter la version de production en cours

**Exemple de notes de version :**
```
v15 : Ajout du tracking de conversion achat
- Nouveau tag : GA4 - Événement - Achat
- Nouveau déclencheur : Événement personnalisé - purchase
- Nouvelles variables : DL - transaction_id, DL - value
- Testé sur : Chrome, Safari, mobile
```

---

## Gestion du consentement

### Intégration du mode consentement

```javascript
// État par défaut (avant consentement)
gtag('consent', 'default', {
  'analytics_storage': 'denied',
  'ad_storage': 'denied'
});

// Mise à jour après consentement
function accorderConsentement() {
  gtag('consent', 'update', {
    'analytics_storage': 'granted',
    'ad_storage': 'granted'
  });
}
```

### Vue d'ensemble du consentement GTM

1. Activer la vue d'ensemble du consentement dans l'Admin
2. Configurer le consentement pour chaque tag
3. Les tags respectent automatiquement l'état du consentement

---

## Patterns avancés

### Séquençage des tags

**Configurer l'ordre de déclenchement des tags :**
Configuration du tag > Paramètres avancés > Séquençage des tags

**Cas d'usage :**
- Tag de config avant les tags d'événements
- Initialisation du pixel avant le tracking
- Nettoyage après une conversion

### Gestion des exceptions

**Exceptions sur les déclencheurs** : empêcher un tag de se déclencher pour :
- Certaines pages
- Le trafic interne
- Les sessions de test

### Variables JavaScript personnalisées

```javascript
// Récupérer un paramètre URL
function() {
  var params = new URLSearchParams(window.location.search);
  return params.get('campaign') || '(non défini)';
}

// Lire un cookie
function() {
  var match = document.cookie.match('(^|;) ?user_id=([^;]*)(;|$)');
  return match ? match[2] : null;
}

// Récupérer une donnée de la page
function() {
  var el = document.querySelector('.prix-produit');
  return el ? parseFloat(el.textContent.replace('€', '').replace(',', '.').trim()) : 0;
}
```
