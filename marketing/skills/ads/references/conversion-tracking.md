# Configuration du tracking de conversion

Comment installer les pixels de tracking de conversion sur les plateformes publicitaires. Ce guide couvre l'installation, la configuration des événements et la validation : tout ce dont un marketeur a besoin pour s'assurer que les dépenses publicitaires sont correctement attribuées.

---

## Pourquoi c'est essentiel

Sans tracking de conversion :
- Les plateformes ne peuvent pas optimiser pour tes vrais objectifs
- Tu navigues à l'aveugle sur le ROAS et le CPA
- Les audiences de retargeting ne peuvent pas être construites
- Tu gaspilles du budget sur des impressions qui ne convertissent pas

Mets le tracking en place avant de dépenser le moindre euro en pub.

---

## Vue d'ensemble des pixels par plateforme

| Plateforme | Nom du pixel/tag | API serveur | Événements clés |
|------------|-----------------|:-----------:|-----------------|
| **Google Ads** | Google tag (gtag.js) | Enhanced Conversions | purchase, sign_up, generate_lead |
| **Meta** | Meta Pixel + CAPI | Conversions API | Purchase, Lead, ViewContent, AddToCart |
| **LinkedIn** | Insight Tag | Conversions API | conversion (URL ou événement) |
| **TikTok** | TikTok Pixel | Events API | Purchase, ViewContent, AddToCart, CompleteRegistration |
| **Twitter/X** | Twitter Pixel | - | Purchase, SignUp, Download |

---

## Google Ads

### Installer le Google tag

À ajouter sur toutes les pages, dans `<head>` :

```html
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-XXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'AW-XXXXXXXXX');
</script>
```

Remplace `AW-XXXXXXXXX` par ton identifiant de conversion Google Ads (Outils > Conversions).

### Configurer les actions de conversion

Dans Google Ads > Objectifs > Conversions > Nouvelle action de conversion :

| Conversion | Catégorie | Valeur | Comptage |
|-----------|----------|-------|---------|
| Achat | Achat | Dynamique (montant de la commande) | Chaque |
| Inscription / Lead | Inscription | Fixe (valeur estimée en €) | Une fois |
| Demande de démo | Lead | Fixe (valeur estimée en €) | Une fois |
| Démarrage essai gratuit | Inscription | Fixe (valeur estimée en €) | Une fois |

### Déclencher les événements de conversion

```javascript
// Achat
gtag('event', 'conversion', {
  'send_to': 'AW-XXXXXXXXX/CONVERSION_LABEL',
  'value': 99.00,
  'currency': 'EUR',
  'transaction_id': 'COMMANDE-123'
});

// Lead / Inscription
gtag('event', 'conversion', {
  'send_to': 'AW-XXXXXXXXX/CONVERSION_LABEL',
  'value': 50.00,
  'currency': 'EUR'
});
```

### Enhanced Conversions

Envoie des données first-party hachées (e-mail, téléphone) pour améliorer l'attribution après les restrictions sur les cookies. À activer dans Google Ads > Objectifs > Paramètres > Enhanced conversions.

```javascript
gtag('set', 'user_data', {
  'email': 'utilisateur@exemple.fr',  // haché automatiquement par gtag
  'phone_number': '+33612345678'
});
```

### Alternative via Google Tag Manager

Si tu utilises GTM plutôt que gtag.js directement :
1. Installe le conteneur GTM sur toutes les pages
2. Crée des tags de conversion Google Ads dans GTM
3. Configure les déclencheurs pour les événements de conversion (soumissions de formulaire, achats)
4. Utilise le Data Layer pour passer des valeurs dynamiques (montant de la commande, identifiant de transaction)
5. Teste avec le mode prévisualisation de GTM avant de publier

---

## Meta (Facebook/Instagram)

### Installer le Meta Pixel

À ajouter sur toutes les pages, dans `<head>` :

```html
<script>
  !function(f,b,e,v,n,t,s)
  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
  n.callMethod.apply(n,arguments):n.queue.push(arguments)};
  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
  n.queue=[];t=b.createElement(e);t.async=!0;
  t.src=v;s=b.getElementsByTagName(e)[0];
  s.parentNode.insertBefore(t,s)}(window, document,'script',
  'https://connect.facebook.net/en_US/fbevents.js');
  fbq('init', 'VOTRE_PIXEL_ID');
  fbq('track', 'PageView');
</script>
```

Remplace `VOTRE_PIXEL_ID` par l'identifiant disponible dans Meta Events Manager.

### Événements standard

```javascript
// Vue d'un produit ou d'une page clé
fbq('track', 'ViewContent', {
  content_name: 'Plan Pro',
  content_category: 'Tarifs',
  value: 29.00,
  currency: 'EUR'
});

// Capture de lead (soumission de formulaire, demande de démo)
fbq('track', 'Lead', {
  content_name: 'Demande de démo',
  value: 50.00,
  currency: 'EUR'
});

// Achat
fbq('track', 'Purchase', {
  value: 99.00,
  currency: 'EUR',
  content_type: 'product',
  contents: [{ id: 'plan-pro', quantity: 1 }]
});

// Ajout au panier (e-commerce)
fbq('track', 'AddToCart', {
  content_ids: ['REF-123'],
  content_type: 'product',
  value: 49.00,
  currency: 'EUR'
});
```

### Conversions API (CAPI)

Tracking côté serveur qui vient compléter le pixel navigateur. Indispensable pour une attribution précise après iOS 14+ et les restrictions sur les cookies.

Configuration possible via :
- **Intégration directe** : envoie les événements depuis ton serveur vers l'API Meta
- **Intégrations partenaires** : Shopify, WooCommerce, Segment, etc. disposent d'un support CAPI natif
- **Conversions API Gateway** : solution managée par Meta via AWS

Point clé : envoie les mêmes événements depuis le pixel (navigateur) ET la CAPI (serveur), avec un `event_id` partagé pour la déduplication.

### Aggregated Event Measurement

Obligatoire pour le tracking iOS 14+. Dans Events Manager > Aggregated Event Measurement :
1. Vérifie ton domaine
2. Configure et priorise tes 8 événements clés par ordre d'importance business
3. L'achat doit généralement être en position 1, le lead en position 2

---

## LinkedIn

### Installer l'Insight Tag

À ajouter sur toutes les pages, avant `</body>` :

```html
<script type="text/javascript">
  _linkedin_partner_id = "VOTRE_PARTNER_ID";
  window._linkedin_data_partner_ids = window._linkedin_data_partner_ids || [];
  window._linkedin_data_partner_ids.push(_linkedin_partner_id);
  (function(l) {
    if (!l){window.lintrk = function(a,b){window.lintrk.q.push([a,b])};
    window.lintrk.q=[]}
    var s = document.getElementsByTagName("script")[0];
    var b = document.createElement("script");
    b.type = "text/javascript";b.async = true;
    b.src = "https://snap.licdn.com/li.lms-analytics/insight.min.js";
    s.parentNode.insertBefore(b, s);})(window.lintrk);
</script>
```

### Tracking des conversions

LinkedIn propose deux méthodes :

**Basée sur l'URL** : se déclenche quand quelqu'un visite une URL spécifique (ex. `/merci`).
À configurer dans Campaign Manager > Analyser > Suivi des conversions > Créer une conversion.

**Basée sur des événements** : à déclencher manuellement sur des actions spécifiques :

```javascript
window.lintrk('track', { conversion_id: VOTRE_CONVERSION_ID });
```

### LinkedIn CAPI

Pour le tracking côté serveur, LinkedIn propose une Conversions API. À configurer via des intégrations partenaires (Segment, Tealium) ou des appels API directs. La déduplication avec l'Insight Tag est automatique quand la configuration est correcte.

---

## TikTok

### Installer le TikTok Pixel

À ajouter sur toutes les pages, dans `<head>` :

```html
<script>
  !function (w, d, t) {
    w.TiktokAnalyticsObject=t;var ttq=w[t]=w[t]||[];
    ttq.methods=["page","track","identify","instances","debug","on","off",
    "once","ready","alias","group","enableCookie","disableCookie","holdConsent",
    "revokeConsent","grantConsent"],ttq.setAndDefer=function(t,e)
    {t[e]=function(){t.push([e].concat(Array.prototype.slice.call(arguments,0)))}};
    for(var i=0;i<ttq.methods.length;i++)ttq.setAndDefer(ttq,ttq.methods[i]);
    ttq.instance=function(t){for(var e=ttq._i[t]||[],n=0;
    n<ttq.methods.length;n++)ttq.setAndDefer(e,ttq.methods[n]);return e};
    ttq.load=function(e,n){var r="https://analytics.tiktok.com/i18n/pixel/events.js",
    o=n&&n.partner;ttq._i=ttq._i||{},ttq._i[e]=[],ttq._i[e]._u=r,
    ttq._t=ttq._t||{},ttq._t[e]=+new Date,ttq._o=ttq._o||{},
    ttq._o[e]=n||{};var s=document.createElement("script");
    s.type="text/javascript",s.async=!0,s.src=r+"?sdkid="+e+"&lib="+t;
    var a=document.getElementsByTagName("script")[0];
    a.parentNode.insertBefore(s,a)};
    ttq.load('VOTRE_PIXEL_ID');
    ttq.page();
  }(window, document, 'ttq');
</script>
```

### Événements standard

```javascript
// Vue de contenu
ttq.track('ViewContent', {
  content_id: 'plan-pro',
  content_type: 'product',
  content_name: 'Plan Pro',
  value: 29.00,
  currency: 'EUR'
});

// Inscription / essai
ttq.track('CompleteRegistration', {
  content_name: 'Essai gratuit'
});

// Achat
ttq.track('Purchase', {
  content_id: 'plan-pro',
  content_type: 'product',
  value: 99.00,
  currency: 'EUR',
  quantity: 1
});

// Ajout au panier
ttq.track('AddToCart', {
  content_id: 'REF-123',
  content_type: 'product',
  value: 49.00,
  currency: 'EUR'
});
```

### Events API (côté serveur)

L'Events API de TikTok fonctionne comme la CAPI de Meta : envoie les mêmes événements depuis ton serveur pour une meilleure attribution. Utilise `event_id` pour la déduplication avec les événements du pixel navigateur.

### Advanced Matching

Passe des données utilisateur hachées pour améliorer l'attribution :

```javascript
ttq.identify({
  email: 'utilisateur@exemple.fr',  // haché automatiquement
  phone_number: '+33612345678'
});
```

---

## Checklist de validation

Après l'installation de tout pixel, vérifie avant la mise en production :

### Vérifications côté navigateur

- [ ] Le pixel se déclenche sur toutes les pages (vérifier via extension navigateur)
- [ ] Les événements de conversion se déclenchent au bon moment (après action confirmée, pas au clic sur le bouton)
- [ ] Les paramètres des événements contiennent les bonnes valeurs (devise, montant, identifiants produit)
- [ ] Aucun événement ne se déclenche en double sur la même action
- [ ] Les événements se déclenchent sur desktop et mobile

### Vérifications côté plateforme

- [ ] Les événements apparaissent dans le gestionnaire d'événements/diagnostics de la plateforme
- [ ] Les conversions de test affichent les bonnes valeurs
- [ ] La qualité de correspondance des événements est acceptable (Meta : score > 6)
- [ ] Les événements côté serveur dédupliquent bien avec les événements navigateur (pas de double comptage)

### Outils de débogage

| Plateforme | Outil |
|------------|-------|
| Google | Google Tag Assistant, onglet Réseau des DevTools Chrome |
| Meta | Meta Pixel Helper (extension Chrome), Événements test dans Events Manager |
| LinkedIn | Validateur Insight Tag dans Campaign Manager |
| TikTok | TikTok Pixel Helper (extension Chrome), Events Manager |
| Toutes | Mode prévisualisation GTM (si Google Tag Manager) |

---

## Erreurs courantes

- **Déclencher les événements d'achat sur le clic bouton plutôt que sur la confirmation de paiement** : déclenche toujours sur la page de confirmation ou après validation serveur
- **Oublier la déduplication entre pixel et événements serveur** : sans `event_id` partagé, les conversions seront comptées en double
- **Ne pas tester sur mobile** : de nombreux pixels dysfonctionnent sur les navigateurs mobiles ou dans les webviews in-app
- **Valeurs de test codées en dur** : supprime les montants de test avant la mise en production
- **Oublier d'exclure le trafic interne** : les visites de l'équipe gonflent les données de conversion
- **Installer les pixels sans gestion du consentement** : le RGPD impose le consentement utilisateur avant de déclencher des pixels de tracking dans les régions concernées
- **Pixel installé mais aucune action de conversion créée** : le pixel collecte des données, mais la plateforme ne peut pas optimiser sans actions de conversion définies

---

## Quand passer au tracking côté serveur

Le tracking navigateur seul est de plus en plus peu fiable en raison de :
- App Tracking Transparency d'Apple (iOS 14+)
- Abandon progressif des cookies tiers
- Bloqueurs de publicité (plus de 30 % des audiences tech)

**Utilise le tracking côté serveur (CAPI/Events API) quand :**
- Tu diffuses des publicités Meta ou TikTok (fortement recommandé)
- Ton audience est technophile (usage des bloqueurs plus élevé)
- Tu as besoin d'une attribution précise sur les achats et les revenus
- Tu dépenses plus de 5 000 €/mois sur une plateforme

**Le tracking côté serveur est optionnel quand :**
- Tu fais uniquement du Google Ads (Enhanced Conversions couvre la plupart des lacunes)
- Tu es en phase de test ou dépenses faibles
- Tu fais uniquement du LinkedIn B2B (l'Insight Tag reste fiable)
