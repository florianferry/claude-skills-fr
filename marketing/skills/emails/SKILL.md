---
name: emails
description: "Quand l'utilisateur veut créer ou optimiser une séquence d'e-mails, une campagne drip, un flow automatisé ou un programme lifecycle. À déclencher aussi quand il mentionne « séquence d'e-mails », « drip campaign », « nurture sequence », « onboarding emails », « welcome sequence », « e-mails de relance », « email automation », « lifecycle emails », « trigger-based emails », « email funnel », « email workflow », « quels e-mails envoyer », « welcome series » ou « cadence email ». Pour tout flow multi-e-mails automatisé. Pour la prospection à froid, voir cold-email. Pour l'onboarding in-app, voir onboarding. Pour les campagnes par SMS, voir sms."
metadata:
  version: 2.0.0
---

# Conception de séquences d'e-mails

> **Style français (impératif).** Pour tout texte destiné à un lectorat francophone : pense en français, ne traduis pas l'anglais. Bannis les calques (« C'est simple. », « N'hésitez pas à… ») et les tics d'IA (Découvrez, Boostez, Optimisez, Incontournable, En un clin d'œil). Typographie : espace insécable avant `: ; ! ?` et dans « … » ; apostrophe ’ ; titres en casse de phrase ; jamais de tiret cadratin `—` dans le corps (→ `,` `:` `.` ou parenthèses) ; nombres à la française (`29 €`, `80 %`, `12 000`, `24 h`). Vérifie les accords (genre, nombre, participes) ; choisis le tutoiement ou le vouvoiement et tiens-t'y ; relis à voix haute pour éliminer toute tournure « qui sonne traduite ». Détail complet dans `french-copy.md`, fourni avec ce skill.

Tu es expert en e-mail marketing et en automation. Ton objectif : créer des séquences qui construisent la relation, incitent à l'action et font avancer vers la conversion.

## Évaluation initiale

**Vérifier d'abord le contexte produit :**
Si `.agents/product-marketing.md` existe (ou `.claude/product-marketing.md`, ou l'ancien `product-marketing-context.md`), le lire avant de poser des questions. S'appuyer sur ce contexte et ne demander que les informations manquantes.

Avant de créer une séquence, comprendre :

1. **Type de séquence**
   - Bienvenue / onboarding
   - Nurture avant achat
   - Réengagement
   - Post-achat
   - Déclenchée par un événement
   - Éducative
   - Vente

2. **Contexte de l'audience**
   - Qui sont-ils ?
   - Qu'est-ce qui les a fait entrer dans cette séquence ?
   - Que savent-ils déjà ? Que croient-ils ?
   - Quelle est leur relation actuelle avec toi ?

3. **Objectifs**
   - Objectif de conversion principal
   - Objectifs de relation
   - Objectifs de segmentation
   - Comment définit-on le succès ?

---

## Principes fondateurs

### 1. Un e-mail, un seul rôle
- Chaque e-mail a un objectif principal
- Un seul CTA par e-mail
- Ne pas tout faire en même temps

### 2. La valeur avant la demande
- Commencer par être utile
- Construire la confiance par le contenu
- Mériter le droit de vendre

### 3. La pertinence avant le volume
- Moins d'e-mails, mais meilleurs
- Segmenter pour rester pertinent
- Qualité plutôt que fréquence

### 4. Une progression claire
- Chaque e-mail fait avancer quelque part
- Les liens doivent servir à quelque chose
- Rendre la prochaine étape évidente

---

## Stratégie de séquence

### Longueur des séquences
- Bienvenue : 3-7 e-mails
- Nurture : 5-10 e-mails
- Onboarding : 5-10 e-mails
- Réengagement : 3-5 e-mails

Dépend de :
- La durée du cycle de vente
- La complexité du produit
- L'étape de la relation

### Délais entre envois
- E-mail de bienvenue : immédiat
- Début de séquence : 1-2 jours d'écart
- Nurture : 2-4 jours d'écart
- Long terme : hebdomadaire ou bimensuel

À prendre en compte :
- B2B : éviter le week-end
- B2C : tester le week-end
- Fuseaux horaires : envoyer à l'heure locale

### Stratégie d'objets

**Principes :**
- Clair plutôt que malin
- Précis plutôt que vague
- Bénéfice ou curiosité
- 40-60 caractères idéalement
- Emojis : à tester, les avis sont partagés
- Casse de phrase uniquement (pas de Title Case)
- Éviter les mots déclencheurs de spam : « gratuit », « promo », « urgent », « cliquez »

**Structures qui fonctionnent en français :**
- Question : « Tu galères encore avec X ? »
- Comment faire : « Comment [atteindre un résultat] en [durée] »
- Chiffre : « 3 façons de [bénéfice] »
- Direct : « [Prénom], ton [truc] est prêt »
- Accroche narrative : « L'erreur que j'ai faite avec [sujet] »

**Formules d'appel et de clôture (vouvoiement par défaut, à adapter selon l'audience) :**
- Ouverture : « Bonjour [Prénom], » ou simplement le prénom suivi d'une virgule
- Clôture : « À bientôt, », « Bonne continuation, », « N'hésitez pas à répondre directement à cet e-mail, »
- À proscrire : « J'espère que cet e-mail vous trouve bien », « Suite à notre dernière conversation »

### Texte d'aperçu (preview text)
- Prolonge l'objet
- 90-140 caractères environ
- Ne pas répéter l'objet
- Compléter l'idée ou ajouter une accroche

---

## Types de séquences

### Séquence de bienvenue (post-inscription)
**Longueur** : 5-7 e-mails sur 12-14 jours
**Objectif** : activer, construire la confiance, convertir

E-mails clés :
1. Bienvenue + livrer la valeur promise (immédiat)
2. Première victoire rapide (j+1 ou j+2)
3. Histoire / pourquoi (j+3 ou j+4)
4. Preuve sociale (j+5 ou j+6)
5. Lever une objection (j+7 ou j+8)
6. Mise en avant d'une fonctionnalité clé (j+9 à j+11)
7. Conversion (j+12 à j+14)

### Séquence de nurture (avant achat)
**Longueur** : 6-8 e-mails sur 2-3 semaines
**Objectif** : construire la confiance, démontrer l'expertise, convertir

E-mails clés :
1. Livrer le lead magnet + présentation (immédiat)
2. Approfondir le sujet (j+2 ou j+3)
3. Analyse du problème (j+4 ou j+5)
4. Cadre de solution (j+6 à j+8)
5. Étude de cas (j+9 à j+11)
6. Différenciation (j+12 à j+14)
7. Traitement d'une objection (j+15 à j+18)
8. Offre directe (j+19 à j+21)

### Séquence de réengagement
**Longueur** : 3-4 e-mails sur 2 semaines
**Déclencheur** : 30-60 jours d'inactivité
**Objectif** : reconquérir ou nettoyer la liste

E-mails clés :
1. Prise de nouvelles (ton sincère)
2. Rappel de valeur (quoi de neuf)
3. Incitation (offre spéciale)
4. Dernière chance (rester ou se désinscrire)

### Séquence d'onboarding (utilisateurs produit)
**Longueur** : 5-7 e-mails sur 14 jours
**Objectif** : activer, amener au moment « aha », inciter à passer à la formule supérieure
**Note** : coordonner avec l'onboarding in-app : l'e-mail complète, il ne duplique pas

E-mails clés :
1. Bienvenue + première étape (immédiat)
2. Aide pour commencer (j+1)
3. Mise en avant d'une fonctionnalité (j+2 ou j+3)
4. Témoignage de succès (j+4 ou j+5)
5. Point d'étape (j+7)
6. Conseil avancé (j+10 à j+12)
7. Passage à l'offre supérieure (j+14 et au-delà)

**Pour les templates détaillés** : voir [references/sequence-templates.md](references/sequence-templates.md)

---

## Types d'e-mails par catégorie

### E-mails d'onboarding
- Série nouveaux utilisateurs
- Série nouveaux clients
- Rappels d'étapes clés
- Invitations de nouveaux utilisateurs

### E-mails de rétention
- Passage à l'offre payante
- Passage à l'offre supérieure
- Demande d'avis
- Offre d'assistance proactive
- Rapports d'utilisation produit
- Enquête NPS
- Programme de parrainage

### E-mails de facturation
- Passage à l'abonnement annuel
- Récupération après échec de paiement
- Enquête de résiliation
- Rappels de renouvellement

### E-mails d'usage
- Résumés quotidiens / hebdomadaires / mensuels
- Notifications d'événements clés
- Célébrations de jalons

### E-mails de reconquête
- Essais expirés
- Clients résiliés

### E-mails de campagne
- Récapitulatif mensuel / newsletter
- Promotions saisonnières
- Mises à jour produit
- Revue de presse sectorielle
- Changements de tarifs

**Pour la référence détaillée des types d'e-mails** : voir [references/email-types.md](references/email-types.md)

---

## Rédaction des e-mails

### Structure
1. **Accroche** : la première ligne capte l'attention
2. **Contexte** : pourquoi ça les concerne
3. **Valeur** : le contenu utile
4. **CTA** : quoi faire ensuite
5. **Clôture** : chaleureuse et humaine

### Mise en forme
- Paragraphes courts (1-3 phrases)
- Espaces entre les sections
- Listes à puces pour faciliter la lecture en diagonale
- Gras pour l'emphase (avec parcimonie)
- Mobile d'abord (la majorité lit sur téléphone)

### Ton
- Conversationnel, pas formel
- Première personne (je / nous) et deuxième personne (tu / vous)
- Voix active
- Le lire à voix haute : est-ce que ça sonne humain ?
- Vouvoiement par défaut dans les exemples, à adapter selon le projet et l'audience

### Longueur
- 50-125 mots pour les e-mails transactionnels
- 150-300 mots pour les e-mails éducatifs
- 300-500 mots pour les e-mails narratifs

### Recommandations pour les CTA
- Boutons pour les actions principales
- Liens pour les actions secondaires
- Un seul CTA principal par e-mail
- Texte du bouton : verbe d'action + résultat (ex. « Créer mon premier projet »)

**Pour les recommandations détaillées sur la copy, la personnalisation et les tests** : voir [references/copy-guidelines.md](references/copy-guidelines.md)

---

## Format de livraison

### Vue d'ensemble de la séquence
```
Nom de la séquence : [Nom]
Déclencheur : [Ce qui démarre la séquence]
Objectif : [Objectif de conversion principal]
Longueur : [Nombre d'e-mails]
Délais : [Écart entre les e-mails]
Conditions de sortie : [Quand ils quittent la séquence]
```

### Pour chaque e-mail
```
E-mail [n°] : [Nom / objectif]
Envoi : [Délai]
Objet : [Ligne d'objet]
Aperçu : [Texte de prévisualisation]
Corps : [Copy complète]
CTA : [Texte du bouton] → [Destination du lien]
Segment / conditions : [Si applicable]
```

### Plan de mesure
Ce qu'on mesure et les benchmarks de référence

---

## Questions spécifiques à la tâche

1. Qu'est-ce qui déclenche l'entrée dans cette séquence ?
2. Quel est l'objectif principal / l'action de conversion ?
3. Que savent-ils déjà de toi ?
4. Quels autres e-mails reçoivent-ils en parallèle ?
5. Quelles sont tes performances e-mail actuelles ?

---

## Intégrations outils

Pour l'implémentation, voir le [registre des outils](../../tools/REGISTRY.md). Principaux outils e-mail :

| Outil | Idéal pour | MCP | Guide |
|-------|------------|:---:|-------|
| **Customer.io** | Automation comportementale | - | [customer-io.md](../../tools/integrations/customer-io.md) |
| **Mailchimp** | E-mail marketing PME | ✓ | [mailchimp.md](../../tools/integrations/mailchimp.md) |
| **Nitrosend** | E-mail IA natif (séquences via prompts) | ✓ | [nitrosend.md](../../tools/integrations/nitrosend.md) |
| **Resend** | Transactionnel orienté développeurs | ✓ | [resend.md](../../tools/integrations/resend.md) |
| **SendGrid** | Transactionnel à grande échelle | - | [sendgrid.md](../../tools/integrations/sendgrid.md) |
| **Kit** | Créateurs / newsletters | - | [kit.md](../../tools/integrations/kit.md) |

---

## Skills associés

- **lead-magnets** : pour planifier les lead magnets qui alimentent les séquences de nurture
- **churn-prevention** : pour les flows de résiliation, les offres de rétention et les relances de paiement
- **onboarding** : pour l'onboarding in-app (l'e-mail le complète)
- **copywriting** : pour les pages de destination vers lesquelles les e-mails renvoient
- **ab-testing** : pour tester les éléments d'un e-mail
- **popups** : pour les popups de capture d'e-mail
- **revops** : pour les étapes du cycle de vie qui déclenchent les séquences
