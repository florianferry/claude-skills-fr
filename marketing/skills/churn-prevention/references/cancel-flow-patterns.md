# Patterns de tunnel d’annulation

Exemples de tunnels d’annulation par type de produit, prestataire de facturation et secteur.

---

## Tunnel d’annulation par type de produit

### B2C / SaaS libre-service

Volume élevé, accompagnement faible. Le tunnel doit fonctionner sans intervention humaine.

**Structure du tunnel :**
```
Bouton annuler → Exit survey (1 question) → Offre dynamique → Confirmation → Post-annulation
```

**Caractéristiques :**
- Entièrement automatisé, sans intervention humaine
- Rapide : 2 à 3 écrans maximum
- Une offre principale + une offre de repli, pas un menu d’options
- Optimisé mobile (beaucoup d’annulations se font sur mobile)
- Option « continuer à résilier » visible à chaque étape

**Taux de rétention typique :** 20 à 30 %

**Exemple pour une application de productivité à 29 €/mois :**
1. « Quelle est la principale raison ? » → 6 options
2. Sélection « Trop cher » → « 25 % de réduction pendant 3 mois (économisez 21,75 €) »
3. Refus → « Ou passez à notre formule Starter à 12 €/mois »
4. Refus → « Désolé de vous voir partir. Votre accès est maintenu jusqu’au [date]. »

---

### B2B / Formules équipe

Volume plus faible, enjeux plus élevés. La prise en charge personnelle vaut l’investissement.

**Structure du tunnel :**
```
Bouton annuler → Exit survey → Offre (ou redirection customer success) → Confirmation → Post-annulation
```

**Caractéristiques :**
- Rediriger les comptes au-dessus d’un seuil MRR vers le customer success
- Montrer l’impact sur l’équipe (« Vos 8 collaborateurs perdront l’accès »)
- Proposer un appel entre administrateurs pour les comptes entreprise
- Réflexion plus longue : permettre « planifier un appel » comme option de rétention
- Seuls les administrateurs / propriétaires peuvent lancer la résiliation (pas n’importe quel membre)

**Taux de rétention typique :** 30 à 45 % (plus élevé grâce à la relation directe)

**Routage par MRR :**

| MRR du compte | Tunnel |
|---------------|--------|
| < 100 €/mois | Tunnel automatisé avec offres |
| 100 à 500 €/mois | Automatisé + signalement au customer success |
| 500 à 2 000 €/mois | Redirection vers le customer success avant la résiliation |
| 2 000 €+/mois | Résiliation libre-service bloquée, appel customer success obligatoire |

---

### Freemium / Passage payant vers gratuit

Clients qui résilient leur offre payante pour revenir à la version gratuite. Psychologie différente : ils ne partent pas, ils rétrogradent.

**Structure du tunnel :**
```
Bouton annuler → Proposition « Passer en gratuit ? » → Exit survey (si toujours décidé) → Offre → Confirmation
```

**Caractéristiques :**
- Présenter la formule gratuite en premier (avant toute offre de rétention)
- Montrer ce qu’ils conservent en gratuit vs. ce qu’ils perdent
- La « rétention » ici, c’est garder le client en gratuit, pas le perdre complètement
- Suivre les utilisateurs gratuits pour des campagnes de re-upgrade ultérieures

---

## Tunnel d’annulation par cycle de facturation

### Abonnés mensuels

- Plus sensibles au prix, engagement plus court
- Les remises fonctionnent bien (20 à 30 % pendant 2 à 3 mois)
- La pause est efficace (1 à 2 mois)
- Proposer le passage à l’annuel avec remise comme alternative

**Priorité des offres :**
1. Remise (si la raison = prix)
2. Pause (si la raison = pas assez utilisé / temporaire)
3. Passage à l’annuel (si engagé mais sensible au prix)

### Abonnés annuels

- Engagement plus fort, ils résilient souvent pour des raisons plus profondes
- Les attentes de remboursement au prorata comptent
- Fenêtre de rétention plus longue (ils ont déjà payé)
- Prise en charge personnelle plus justifiée (LTV plus élevé en jeu)

**Priorité des offres :**
1. Pause du reste de la période (si temporaire)
2. Ajustement de formule + avoir sur le prochain renouvellement
3. Prise en charge personnelle par le customer success
4. Remboursement partiel + changement de formule (préférable à un remboursement total + résiliation)

**Gestion des remboursements :**
- Proposer un remboursement au prorata s’il reste beaucoup de temps
- « Pause jusqu’au renouvellement » si moins de 3 mois restants
- Rester généreux : une mauvaise expérience de remboursement crée des détracteurs bruyants

---

## Patterns d’offres de rétention

### L’escalier des remises

Ne pas commencer par la remise la plus élevée. Monter progressivement :

```
Clic sur annuler → 15 % de réduction → Toujours décidé → 25 % de réduction → Toujours décidé → Laisser partir
```

**Règles :**
- 2 offres de remise maximum par session d’annulation
- Ne jamais dépasser 30 % (au-delà, les clients apprennent à résilier pour en profiter)
- Limiter les remises dans le temps (2 à 3 mois, puis retour au plein tarif)
- Suivre ceux qui acceptent une remise : s’ils résilient à nouveau au plein tarif, ne pas répéter l’offre

### Le guide de la pause

La pause vaut souvent mieux qu’une remise car elle ne dévalue pas le produit.

**Mise en place :**

| Paramètre | Recommandation |
|-----------|---------------|
| Options de durée | 1 mois, 2 mois, 3 mois |
| Sélection par défaut | 1 mois (la plus courte) |
| Durée maximale | 3 mois (au-delà, les clients reviennent rarement) |
| Pendant la pause | Données conservées, accès suspendu |
| Réactivation | Automatique avec e-mail de préavis 7 jours avant |
| Pauses répétées | Autoriser 1 pause par période de 12 mois |

**Séquence de réactivation après pause :**
- J-7 : « Votre pause se termine dans 7 jours. On a été occupés, voici les nouveautés. »
- J-1 : « Bienvenue demain ! Voici ce qui vous attend. »
- J0 : « Vous êtes de retour ! Voici un tour rapide des nouveautés. »

### Le chemin vers le changement de formule

Pour les produits avec plusieurs formules, le changement de formule est la rétention la plus solide :

```
┌─────────────────────────────────────────────┐
│  Avant de partir, pourquoi ne pas adapter   │
│  votre formule ?                            │
│                                             │
│  Actuelle : Pro (49 €/mois)                 │
│                                             │
│  ┌───────────────────────────────────────┐  │
│  │ Passer à Starter (19 €/mois)          │  │
│  │                                       │  │
│  │ ✓ Vous gardez : projets, intégrations │  │
│  │ ✗ Vous perdez : analytics avancés,    │  │
│  │   fonctionnalités équipe              │  │
│  │                                       │  │
│  │ [Passer à Starter]                    │  │
│  └───────────────────────────────────────┘  │
│                                             │
│  [Non merci, continuer à résilier]          │
└─────────────────────────────────────────────┘
```

**Bonnes pratiques pour le changement de formule :**
- Montrer précisément ce qu’ils conservent et ce qu’ils perdent
- Utiliser des coches et des croix pour faciliter la lecture
- Conserver leurs données même en formule inférieure
- En cas de changement, ne pas afficher de nudge d’upgrade pendant au moins 30 jours

### Gérer le passage à un concurrent

Quand la raison de résiliation est « je passe à un concurrent » :

1. **Demander lequel** (optionnel, ne pas forcer)
2. **Montrer un comparatif** si tu en as un (voir skill competitors)
3. **Proposer un avoir de migration** (« On s’aligne sur leur prix pendant 3 mois »)
4. **Demander un appel de feedback** (« 15 minutes pour comprendre ce qui nous manque »)

Ces données sont précieuses pour les équipes produit et marketing.

---

## Expérience post-annulation

Ce qui se passe après l’annulation a un impact sur :
- Le potentiel de réactivation
- Le bouche-à-oreille
- Le sentiment dans les avis

### Page de confirmation

```
Votre abonnement a été résilié.

Ce qui se passe maintenant :
• Votre accès reste actif jusqu’au [date de fin de période]
• Vos données sont conservées pendant 90 jours
• Vous pouvez vous réabonner à tout moment depuis votre compte

[Réactiver mon compte]

On espère vous revoir. On continuera à progresser grâce aux retours
de clients comme vous.
```

### Séquence post-annulation

| Délai | Action |
|-------|--------|
| Immédiatement | E-mail de confirmation avec la date de fin d’accès |
| Jour 1 | (Rien : ne pas paraître désespéré) |
| Jour 7 | Sondage NPS / satisfaction sur l’expérience globale |
| Jour 30 | E-mail « ce qui a changé » avec les récentes améliorations |
| Jour 60 | Adresser leur raison de résiliation spécifique si elle a été corrigée |
| Jour 90 | Dernière tentative de réactivation avec une offre spéciale |

**Pour les séquences d’e-mails de réactivation détaillées** : voir le skill emails.

---

## Règles de segmentation

Les tunnels d’annulation les plus efficaces utilisent la segmentation pour proposer des offres différentes selon les clients.

### Dimensions de segmentation

| Dimension | Pourquoi c’est important |
|-----------|--------------------------|
| Formule / MRR | Les clients à forte valeur reçoivent une prise en charge personnelle |
| Ancienneté | Les clients de longue date reçoivent des offres plus généreuses |
| Niveau d’usage | Clients actifs et clients dormants ne reçoivent pas le même message |
| Cycle de facturation | Mensuel vs. annuel : approches différentes |
| Rétentions précédentes | Ne pas répéter la même remise à quelqu’un qui a déjà résilié |
| Raison de résiliation | Détermine quelle offre afficher (le cœur du mapping) |

### Tunnels par segment

**Nouveau client (< 30 jours) :**
- Il n’a pas encore activé le produit. La rétention passe par l’onboarding, pas les remises.
- Offre : appel d’onboarding gratuit, aide à la configuration, prolongation d’essai
- Question : « Qu’espériez-vous accomplir ? » (identifier ce qui manque)

**Client engagé qui résilie pour des raisons de prix :**
- Il aime le produit mais ne peut pas en justifier le coût.
- Offre : remise, passage à l’annuel, changement de formule
- Fort potentiel de rétention

**Client dormant (aucune connexion depuis 30+ jours) :**
- Il a oublié le produit. Une remise ne le fera pas revenir.
- Offre : pause d’abonnement, conversation « qu’est-ce qui a changé ? »
- Faible potentiel de rétention : se concentrer sur l’apprentissage

**Utilisateur intensif passant à un concurrent :**
- Il choisit activement quelque chose d’autre.
- Offre : alignement concurrentiel, appel de feedback, aperçu de la roadmap
- Potentiel moyen de rétention, dépend de la raison

---

## Checklist de mise en place

### Phase 1 : fondation (semaine 1)
- [ ] Ajouter un tunnel d’annulation (exit survey + 1 offre + confirmation)
- [ ] Mettre en place l’exit survey avec 5 à 7 catégories de raisons
- [ ] Associer une offre par raison (mapping simple 1:1)
- [ ] Suivre les raisons de résiliation et le taux de rétention dans les analytics
- [ ] Activer les e-mails de pré-dunning pour l’expiration de carte

### Phase 2 : optimisation (semaines 2 à 4)
- [ ] Ajouter des offres de repli (offre principale + offre secondaire par raison)
- [ ] Mettre en place l’option de pause d’abonnement
- [ ] Configurer la séquence d’e-mails de dunning (4 e-mails sur 10 jours)
- [ ] Activer les relances intelligentes (Stripe Smart Retries ou équivalent)
- [ ] Ajouter un routage par MRR pour les comptes à forte valeur

### Phase 3 : avancé (mois 2+)
- [ ] Construire le score de santé à partir des signaux d’usage
- [ ] Mettre en place des déclencheurs d’intervention proactive
- [ ] Tester les montants de remise et les types d’offres (A/B)
- [ ] Segmenter les tunnels par formule, ancienneté et usage
- [ ] Séquence de réactivation post-annulation (en coordination avec le skill emails)
- [ ] Analyse par cohorte : churn par canal, formule, ancienneté

---

## Points de conformité

### FTC Click-to-Cancel (États-Unis)
- La résiliation doit être aussi simple que l’inscription
- Impossible d’exiger un appel téléphonique si l’inscription s’est faite en ligne
- Impossible d’ajouter des étapes excessives pour décourager l’annulation
- Les offres de rétention sont autorisées, mais « continuer à résilier » doit rester clair

### RGPD / Conservation des données (UE)
- Informer les utilisateurs de la durée de conservation des données après résiliation
- Proposer l’export des données avant la suppression du compte
- Respecter les demandes de suppression dans les 30 jours
- Ne pas utiliser les données post-annulation à des fins marketing sans consentement

### Bonnes pratiques générales
- Toujours afficher un chemin clair pour finaliser la résiliation
- Ne jamais cacher le bouton d’annulation (dark pattern)
- Traiter la résiliation même en cas d’erreur dans le tunnel
- Confirmer la résiliation par e-mail
