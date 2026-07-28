# Bibliothèque d'événements

Liste complète des événements à tracker selon le type de business et le contexte.

## Sommaire
- Événements site marketing (navigation et engagement, interactions CTA et formulaires, événements de conversion)
- Événements produit/application (onboarding, usage principal, erreurs et support)
- Événements de monétisation (pricing et paiement, gestion des abonnements)
- Événements e-commerce (navigation, panier, tunnel d'achat, post-achat)
- Événements B2B/SaaS (équipes et collaboration, intégrations, comptes)
- Propriétés des événements (paramètres)
- Séquences d'événements par funnel

## Événements site marketing

### Navigation et engagement

| Nom de l'événement | Description | Propriétés |
|--------------------|-------------|------------|
| page_view | Page chargée (mesure améliorée) | page_title, page_location, content_group |
| scroll_depth | L'utilisateur a scrollé jusqu'au seuil | depth (25, 50, 75, 100) |
| outbound_link_clicked | Clic vers un site externe | link_url, link_text |
| internal_link_clicked | Clic dans le site | link_url, link_text, location |
| video_played | Vidéo démarrée | video_id, video_title, duration |
| video_completed | Vidéo terminée | video_id, video_title, duration |

### Interactions CTA et formulaires

| Nom de l'événement | Description | Propriétés |
|--------------------|-------------|------------|
| cta_clicked | Clic sur un call-to-action | button_text, cta_location, page |
| form_started | L'utilisateur a commencé à remplir un formulaire | form_name, form_location |
| form_field_completed | Champ rempli | form_name, field_name |
| form_submitted | Formulaire envoyé avec succès | form_name, form_location |
| form_error | Erreur de validation du formulaire | form_name, error_type |
| resource_downloaded | Ressource téléchargée | resource_name, resource_type |

### Événements de conversion

| Nom de l'événement | Description | Propriétés |
|--------------------|-------------|------------|
| signup_started | Inscription initiée | source, page |
| signup_completed | Inscription finalisée | method, plan, source |
| demo_requested | Formulaire de démo soumis | company_size, industry |
| contact_submitted | Formulaire de contact envoyé | inquiry_type |
| newsletter_subscribed | Inscription à la liste e-mail | source, list_name |
| trial_started | Essai gratuit démarré | plan, source |

---

## Événements produit/application

### Onboarding

| Nom de l'événement | Description | Propriétés |
|--------------------|-------------|------------|
| signup_completed | Compte créé | method, referral_source |
| onboarding_started | Onboarding commencé | - |
| onboarding_step_completed | Étape terminée | step_number, step_name |
| onboarding_completed | Toutes les étapes franchies | steps_completed, time_to_complete |
| onboarding_skipped | L'utilisateur a passé l'onboarding | step_skipped_at |
| first_key_action_completed | Moment « aha » atteint | action_type |

### Usage principal

| Nom de l'événement | Description | Propriétés |
|--------------------|-------------|------------|
| session_started | Session applicative démarrée | session_number |
| feature_used | Interaction avec une fonctionnalité | feature_name, feature_category |
| action_completed | Action principale effectuée | action_type, count |
| content_created | L'utilisateur a créé un contenu | content_type |
| content_edited | L'utilisateur a modifié un contenu | content_type |
| content_deleted | L'utilisateur a supprimé un contenu | content_type |
| search_performed | Recherche dans l'application | query, results_count |
| settings_changed | Paramètres modifiés | setting_name, new_value |
| invite_sent | L'utilisateur a invité d'autres personnes | invite_type, count |

### Erreurs et support

| Nom de l'événement | Description | Propriétés |
|--------------------|-------------|------------|
| error_occurred | Erreur rencontrée | error_type, error_message, page |
| help_opened | Aide consultée | help_type, page |
| support_contacted | Demande de support envoyée | contact_method, issue_type |
| feedback_submitted | Retour utilisateur transmis | feedback_type, rating |

---

## Événements de monétisation

### Pricing et paiement

| Nom de l'événement | Description | Propriétés |
|--------------------|-------------|------------|
| pricing_viewed | Page de tarifs consultée | source |
| plan_selected | Offre choisie | plan_name, billing_cycle |
| checkout_started | Paiement initié | plan, value |
| payment_info_entered | Informations de paiement saisies | payment_method |
| purchase_completed | Achat réussi | plan, value, currency, transaction_id |
| purchase_failed | Achat échoué | error_reason, plan |

### Gestion des abonnements

| Nom de l'événement | Description | Propriétés |
|--------------------|-------------|------------|
| trial_started | Essai démarré | plan, trial_length |
| trial_ended | Essai expiré | plan, converted (bool) |
| subscription_upgraded | Offre montée en gamme | from_plan, to_plan, value |
| subscription_downgraded | Offre rétrogradée | from_plan, to_plan |
| subscription_cancelled | Résiliation | plan, reason, tenure |
| subscription_renewed | Renouvellement | plan, value |
| billing_updated | Moyen de paiement modifié | - |

---

## Événements e-commerce

### Navigation produit

| Nom de l'événement | Description | Propriétés |
|--------------------|-------------|------------|
| product_viewed | Page produit consultée | product_id, product_name, category, price |
| product_list_viewed | Catégorie/liste consultée | list_name, products[] |
| product_searched | Recherche effectuée | query, results_count |
| product_filtered | Filtres appliqués | filter_type, filter_value |
| product_sorted | Tri appliqué | sort_by, sort_order |

### Panier

| Nom de l'événement | Description | Propriétés |
|--------------------|-------------|------------|
| product_added_to_cart | Article ajouté | product_id, product_name, price, quantity |
| product_removed_from_cart | Article retiré | product_id, product_name, price, quantity |
| cart_viewed | Page panier consultée | cart_value, items_count |

### Tunnel d'achat

| Nom de l'événement | Description | Propriétés |
|--------------------|-------------|------------|
| checkout_started | Paiement initié | cart_value, items_count |
| checkout_step_completed | Étape terminée | step_number, step_name |
| shipping_info_entered | Adresse de livraison saisie | shipping_method |
| payment_info_entered | Informations de paiement saisies | payment_method |
| coupon_applied | Code promo utilisé | coupon_code, discount_value |
| purchase_completed | Commande passée | transaction_id, value, currency, items[] |

### Post-achat

| Nom de l'événement | Description | Propriétés |
|--------------------|-------------|------------|
| order_confirmed | Confirmation consultée | transaction_id |
| refund_requested | Remboursement initié | transaction_id, reason |
| refund_completed | Remboursement traité | transaction_id, value |
| review_submitted | Avis produit posté | product_id, rating |

---

## Événements B2B/SaaS

### Équipes et collaboration

| Nom de l'événement | Description | Propriétés |
|--------------------|-------------|------------|
| team_created | Nouvelle équipe/org créée | team_size, plan |
| team_member_invited | Invitation envoyée | role, invite_method |
| team_member_joined | Membre ayant rejoint l'équipe | role |
| team_member_removed | Membre retiré | role |
| role_changed | Permissions mises à jour | user_id, old_role, new_role |

### Intégrations

| Nom de l'événement | Description | Propriétés |
|--------------------|-------------|------------|
| integration_viewed | Page d'intégration consultée | integration_name |
| integration_started | Configuration commencée | integration_name |
| integration_connected | Connexion réussie | integration_name |
| integration_disconnected | Intégration retirée | integration_name, reason |

### Comptes

| Nom de l'événement | Description | Propriétés |
|--------------------|-------------|------------|
| account_created | Nouveau compte | source, plan |
| account_upgraded | Montée en gamme | from_plan, to_plan |
| account_churned | Compte résilié | reason, tenure, mrr_lost |
| account_reactivated | Client de retour | previous_tenure, new_plan |

---

## Propriétés des événements (paramètres)

### Propriétés standard à inclure

**Contexte utilisateur :**
```
user_id: "12345"
user_type: "free" | "trial" | "paid"
account_id: "acct_123"
plan_type: "starter" | "pro" | "enterprise"
```

**Contexte session :**
```
session_id: "sess_abc"
session_number: 5
page: "/tarifs"
referrer: "https://google.com"
```

**Contexte campagne :**
```
source: "google"
medium: "cpc"
campaign: "soldes_ete"
content: "hero_cta"
```

**Contexte produit (e-commerce) :**
```
product_id: "REF123"
product_name: "Nom du produit"
category: "Catégorie"
price: 99.99
quantity: 1
currency: "EUR"
```

**Timing :**
```
timestamp: "2024-01-15T10:30:00Z"
time_on_page: 45
session_duration: 300
```

---

## Séquences d'événements par funnel

### Funnel d'inscription
1. signup_started
2. signup_step_completed (e-mail)
3. signup_step_completed (mot de passe)
4. signup_completed
5. onboarding_started

### Funnel d'achat
1. pricing_viewed
2. plan_selected
3. checkout_started
4. payment_info_entered
5. purchase_completed

### Funnel e-commerce
1. product_viewed
2. product_added_to_cart
3. cart_viewed
4. checkout_started
5. shipping_info_entered
6. payment_info_entered
7. purchase_completed
