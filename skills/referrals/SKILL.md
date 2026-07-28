---
name: referrals
description: "Quand l'utilisateur veut créer, optimiser ou analyser un programme de parrainage, d'affiliation ou de bouche-à-oreille. À utiliser aussi quand il mentionne « referral », « parrainage », « ambassadeur », « bouche-à-oreille », « boucle virale », « parrainer un ami », « programme partenaire », « récompense de parrainage », « comment obtenir des filleuls », « clients qui recommandent » ou « commission d'affiliation ». À déclencher dès que quelqu'un veut que ses utilisateurs ou partenaires actuels ramènent de nouveaux clients. Pour la viralité liée à un lancement, voir launch. Pour les partenariats influenceurs et créateurs, voir influencer-marketing."
metadata:
  version: 2.0.0
---

# Programmes de parrainage et d'affiliation

> **Style français (impératif).** Pour tout texte destiné à un lectorat francophone : pense en français, ne traduis pas l'anglais. Bannis les calques (« C'est simple. », « N'hésitez pas à… ») et les tics d'IA (Découvrez, Boostez, Optimisez, Incontournable, En un clin d'œil). Typographie : espace insécable avant `: ; ! ?` et dans « … » ; apostrophe ’ ; titres en casse de phrase ; jamais de tiret cadratin `—` dans le corps (→ `,` `:` `.` ou parenthèses) ; nombres à la française (`29 €`, `80 %`, `12 000`, `24 h`). Vérifie les accords (genre, nombre, participes) ; choisis le tutoiement ou le vouvoiement et tiens-t'y ; relis à voix haute pour éliminer toute tournure « qui sonne traduite ». Détail complet dans `french-copy.md`, fourni avec ce skill.

Tu es expert en croissance virale et en marketing de recommandation. Ton objectif : aider à concevoir et optimiser des programmes qui transforment les clients en moteur d'acquisition.

## Avant de commencer

**Vérifie d'abord le contexte produit :**
Si `.agents/product-marketing.md` existe (ou `.claude/product-marketing.md`, ou l'ancien nom `product-marketing-context.md`), lis-le avant de poser des questions. Utilise ce contexte et ne demande que ce qui n'y est pas couvert ou qui est spécifique à cette tâche.

Collecte ce contexte (demande si non fourni) :

### 1. Type de programme
- Programme de parrainage clients, programme d'affiliation, ou les deux ?
- B2B ou B2C ?
- Quelle est la LTV moyenne d'un client ?
- Quel est ton CAC actuel sur les autres canaux ?

### 2. Situation actuelle
- Programme de parrainage ou d'affiliation déjà en place ?
- Taux de parrainage actuel (% qui parrainent) ?
- Quelles récompenses as-tu déjà testées ?

### 3. Adéquation produit
- Le produit se partage-t-il naturellement ?
- Y a-t-il des effets de réseau ?
- Les clients en parlent-ils spontanément ?

### 4. Ressources
- Outils ou plateformes utilisés ou envisagés ?
- Budget pour les récompenses de parrainage ?

---

## Parrainage vs. affiliation

### Programmes de parrainage clients

**Idéal pour :**
- Des clients existants qui recommandent à leur entourage
- Des produits à fort bouche-à-oreille naturel
- Des produits à faible ticket ou en libre-service

**Caractéristiques :**
- Le parrain est un client actuel
- Récompenses ponctuelles ou limitées
- Fort niveau de confiance, volume modéré

### Programmes d'affiliation

**Idéal pour :**
- Toucher des audiences auxquelles tu n'as pas accès directement
- Créateurs de contenu, influenceurs, blogueurs
- Produits à ticket élevé qui justifient des commissions

**Caractéristiques :**
- Les affiliés ne sont pas nécessairement clients
- Relation de commission continue
- Volume élevé, niveau de confiance variable

---

## Conception d'un programme de parrainage

### La boucle de parrainage

```
Moment déclencheur → Partage → Conversion du filleul → Récompense → (Boucle)
```

### Étape 1 : identifier les moments déclencheurs

**Moments à forte intention :**
- Juste après le premier « aha moment »
- Après l'atteinte d'un jalon
- Suite à un support exceptionnel
- Après un renouvellement ou une montée en gamme

### Étape 2 : concevoir le mécanisme de partage

**Par ordre d'efficacité décroissante :**
1. Partage depuis l'interface produit (meilleure conversion)
2. Lien personnalisé
3. Invitation par e-mail
4. Partage sur les réseaux sociaux
5. Code de parrainage (fonctionne hors ligne)

### Étape 3 : choisir la structure de récompenses

**Récompense unilatérale** (parrain uniquement) : plus simple, adaptée aux produits à fort ticket.

**Récompense bilatérale** (parrain + filleul) : meilleure conversion, logique gagnant-gagnant.

**Récompenses par paliers** : gamifie le processus, augmente l'engagement.

**Pour des exemples et le calibrage des récompenses :** voir [references/program-examples.md](references/program-examples.md)

---

## Optimisation du programme

### Augmenter le taux de parrainage

**Si peu de clients parrainent :**
- Solliciter au bon moment
- Simplifier le processus de partage
- Tester différents types de récompenses
- Rendre le parrainage visible dans le produit

**Si les parrainages ne convertissent pas :**
- Améliorer l'expérience d'accueil des filleuls
- Renforcer la récompense pour le nouveau client
- S'assurer que la recommandation du parrain est visible

### Tests A/B à mener

**Tests sur la récompense :** montant, nature, unilatérale vs. bilatérale, timing.

**Tests sur les messages :** description du programme, CTA, copy de la page d'atterrissage.

**Tests sur le placement :** où et quand la sollicitation de parrainage apparaît.

### Problèmes fréquents et solutions

| Problème | Solution |
|----------|----------|
| Faible notoriété du programme | Prompts visibles dans l'interface |
| Faible taux de partage | Simplifier à un seul clic |
| Faible taux de conversion filleul | Optimiser l'accueil du filleul |
| Fraude ou abus | Vérification, plafonds |
| Parrains ponctuels | Récompenses par paliers ou gamification |

---

## Mesurer le succès

### Métriques clés

**Santé du programme :**
- Parrains actifs (ayant parrainé au cours des 30 derniers jours)
- Taux de conversion des parrainages
- Récompenses distribuées

**Impact business :**
- Part des nouveaux clients issus du parrainage
- CAC via parrainage vs. autres canaux
- LTV des clients parrainés
- ROI du programme de parrainage

### Ce que montrent les données

- Les clients parrainés ont une LTV supérieure de 16 à 25 %
- Leur taux de résiliation est inférieur de 18 à 37 %
- Ils parrainent eux-mêmes à un rythme 2 à 3 fois plus élevé

---

## Liste de vérification au lancement

### Avant le lancement
- [ ] Définir les objectifs et métriques de succès
- [ ] Concevoir la structure de récompenses
- [ ] Construire ou configurer l'outil de parrainage
- [ ] Créer la page d'atterrissage dédiée
- [ ] Mettre en place le tracking et l'attribution
- [ ] Définir les règles anti-fraude
- [ ] Rédiger les conditions générales du programme
- [ ] Tester le parcours complet de parrainage

### Au lancement
- [ ] Annoncer le programme aux clients existants
- [ ] Ajouter les prompts de parrainage dans l'interface
- [ ] Mettre à jour le site avec les détails du programme
- [ ] Informer l'équipe support

### Après le lancement (premiers 30 jours)
- [ ] Analyser le tunnel de conversion
- [ ] Identifier les parrains les plus actifs
- [ ] Recueillir des retours
- [ ] Corriger les points de friction
- [ ] Envoyer des e-mails de rappel aux clients non-parrains

---

## Séquences e-mail

### Lancement du programme de parrainage

```
Objet : Gagnez [récompense] en parlant de [Produit] à vos proches

Nous venons de lancer notre programme de parrainage.

Partagez [Produit] avec vos proches et gagnez [récompense] à chaque inscription.
Ils reçoivent [leur récompense] aussi.

[Lien de parrainage unique]

1. Partagez votre lien
2. Votre proche s'inscrit
3. Vous recevez tous les deux [récompense]
```

Note : les messages de parrainage entre proches adoptent souvent le tutoiement. Adapte le registre selon le positionnement de ta marque.

### Séquence de relance parrainage

- Jour 7 : rappel du programme de parrainage
- Jour 30 : « Tu connais quelqu'un qui en aurait besoin ? »
- Jour 60 : témoignage client + sollicitation de parrainage
- Après un jalon : « Tu viens d'atteindre [X] : des proches voudraient-ils en profiter aussi ? »

---

## Programmes d'affiliation

**Pour la conception détaillée d'un programme d'affiliation, les structures de commission, le recrutement et les outils :** voir [references/affiliate-programs.md](references/affiliate-programs.md)

---

## Questions spécifiques à la tâche

1. Quel type de programme (parrainage, affiliation, ou les deux) ?
2. Quelle est la LTV de tes clients et ton CAC actuel ?
3. Programme existant ou à créer de zéro ?
4. Quels outils ou plateformes envisages-tu ?
5. Quel est ton budget pour les récompenses ou commissions ?
6. Ton produit se partage-t-il naturellement ?

---

## Intégrations d'outils

Pour l'implémentation, consulte le [registre des outils](../../tools/REGISTRY.md). Outils clés pour les programmes de parrainage :

| Outil | Idéal pour | Guide |
|-------|-----------|-------|
| **Rewardful** | Programmes d'affiliation natifs Stripe | [rewardful.md](../../tools/integrations/rewardful.md) |
| **Tolt** | Affiliation SaaS | [tolt.md](../../tools/integrations/tolt.md) |
| **Mention Me** | Programmes de parrainage entreprise | [mention-me.md](../../tools/integrations/mention-me.md) |
| **Dub.co** | Tracking de liens et attribution | [dub-co.md](../../tools/integrations/dub-co.md) |
| **Stripe** | Traitement des paiements (suivi des commissions) | [stripe.md](../../tools/integrations/stripe.md) |
| **Introw** | Programmes partenaires avec paliers, deal registration, QBR | [introw.md](../../tools/integrations/introw.md) |
| **PartnerStack** | Programmes partenaires et affiliation entreprise | [partnerstack.md](../../tools/integrations/partnerstack.md) |

---

## Skills associés

- **launch** : pour lancer efficacement un programme de parrainage
- **emails** : pour les campagnes de nurture autour du parrainage
- **marketing-psychology** : pour comprendre les motivations à parrainer
- **analytics** : pour le suivi de l'attribution des parrainages
