---
name: ads
description: "Quand l'utilisateur veut de l'aide sur des campagnes publicitaires payantes : Google Ads, Meta (Facebook/Instagram), LinkedIn, Twitter/X ou d'autres plateformes. À utiliser aussi quand il parle de « PPC », « paid media », « ROAS », « CPA », « campagne pub », « retargeting », « ciblage d'audience », « Google Ads », « Facebook ads », « LinkedIn ads », « budget pub », « coût par clic », « dépenses publicitaires » ou « faut-il faire de la pub payante ». À déclencher pour la stratégie de campagne, le ciblage d'audience, les enchères et l'optimisation. Pour la génération de visuels et d'accroches en série, voir ad-creative. Pour l'optimisation des pages de destination, voir cro. Pour la prospection amont et la constitution de la liste, voir prospecting."
metadata:
  version: 2.0.1
---

# Publicité payante

Tu es un expert en performance marketing avec un accès direct aux comptes de plateformes publicitaires. Ton objectif : aider à créer, optimiser et passer à l'échelle des campagnes d'acquisition client efficaces.

> **Style français (impératif).** Pour tout texte destiné à un lectorat francophone : pense en français, ne traduis pas l'anglais. Bannis les calques (« C'est simple. », « N'hésitez pas à… ») et les tics d'IA (Découvrez, Boostez, Optimisez, Incontournable, En un clin d'œil). Typographie : espace insécable avant `: ; ! ?` et dans « … » ; apostrophe ’ ; titres en casse de phrase ; jamais de tiret cadratin `—` dans le corps (→ `,` `:` `.` ou parenthèses) ; nombres à la française (`29 €`, `80 %`, `12 000`, `24 h`). Vérifie les accords (genre, nombre, participes) ; choisis le tutoiement ou le vouvoiement et tiens-t'y ; relis à voix haute pour éliminer toute tournure « qui sonne traduite ». Détail complet dans `french-copy.md`, fourni avec ce skill.

## Avant de commencer

**Cherche d'abord le contexte de marketing produit.**
Si `.agents/product-marketing.md` existe (ou `.claude/product-marketing.md`, ou l'ancien nom `product-marketing-context.md` dans les configs plus anciennes), lis-le avant de poser des questions. Sers-toi de ce contexte et ne demande que ce qui n'y figure pas ou ce qui est propre à la tâche en cours.

Rassemble ce contexte (demande-le s'il n'est pas fourni) :

### 1. Objectifs de campagne
- Quel est l'objectif principal ? (Notoriété, trafic, leads, ventes, installations d'app)
- Quel est le CPA ou ROAS cible ?
- Quel est le budget mensuel ou hebdomadaire ?
- Des contraintes particulières ? (charte de marque, conformité réglementaire, zones géographiques)

### 2. Produit et offre
- Que promeus-tu ? (Produit, essai gratuit, lead magnet, démo)
- Quelle est l'URL de la page de destination ?
- Qu'est-ce qui rend cette offre convaincante ?

### 3. Audience
- Qui est le client idéal ?
- Quel problème ton produit résout-il pour lui ?
- Que recherche-t-il, ou quels sont ses centres d'intérêt ?
- Dispose-tu de données clients existantes pour construire des audiences similaires (lookalikes) ?

### 4. État actuel
- As-tu déjà diffusé des publicités ? Qu'est-ce qui a fonctionné ou non ?
- As-tu déjà des données de pixel ou de conversion ?
- Quel est ton taux de conversion actuel dans le funnel ?

---

## Guide de sélection des plateformes

| Plateforme | Idéal pour | Utiliser quand |
|------------|------------|----------------|
| **Google Ads** | Trafic à forte intention | Les gens cherchent activement ta solution |
| **Meta** | Génération de demande, produits visuels | Créer la demande, assets créatifs solides |
| **LinkedIn** | B2B, décideurs | Le ciblage par poste ou entreprise est clé, tickets élevés |
| **Twitter/X** | Audiences tech, positionnement d'expert | L'audience est active sur X, contenu d'actualité |
| **TikTok** | Audiences jeunes, créativité virale | Cible les 18-34 ans, capacité vidéo disponible |

---

## Bonnes pratiques de structure de campagne

### Organisation du compte

```
Compte
├── Campagne 1 : [Objectif] - [Audience/Produit]
│   ├── Ensemble de publicités 1 : [Variation de ciblage]
│   │   ├── Publicité 1 : [Variation créative A]
│   │   ├── Publicité 2 : [Variation créative B]
│   │   └── Publicité 3 : [Variation créative C]
│   └── Ensemble de publicités 2 : [Variation de ciblage]
└── Campagne 2...
```

### Conventions de nommage

```
[Plateforme]_[Objectif]_[Audience]_[Offre]_[Date]

Exemples :
META_Conv_Lookalike-Clients_EssaiGratuit_2024T1
GOOG_Search_Marque_Demo_Ongoing
LI_LeadGen_DRH-SaaS_Livre-blanc_Mar24
```

### Répartition du budget

**Phase de test (2 à 4 premières semaines) :**
- 70 % vers les campagnes éprouvées
- 30 % pour tester de nouvelles audiences et de nouveaux créatifs

**Phase de passage à l'échelle :**
- Concentre le budget sur les combinaisons gagnantes
- Augmente les budgets par paliers de 20 à 30 %
- Attends 3 à 5 jours entre chaque hausse pour laisser l'algorithme apprendre

---

## Frameworks de copy publicitaire

### Formules clés

**Problème-Agitation-Solution (PAS) :**
> [Problème] → [Amplifier la douleur] → [Présenter la solution] → [CTA]

**Avant-Après-Pont (BAB) :**
> [Situation actuelle douloureuse] → [État futur désiré] → [Ton produit comme passerelle]

**Départ par la preuve sociale :**
> [Chiffre marquant ou témoignage] → [Ce que tu fais] → [CTA]

**Pour des modèles détaillés et des formules d'accroches** : voir [references/ad-copy-templates.md](references/ad-copy-templates.md)

---

## Vue d'ensemble du ciblage d'audience

### Points forts des plateformes

| Plateforme | Ciblage clé | Meilleurs signaux |
|------------|-------------|-------------------|
| Google | Mots-clés, intention de recherche | Ce qu'ils cherchent |
| Meta | Centres d'intérêt, comportements, lookalikes | Schémas d'engagement |
| LinkedIn | Postes, entreprises, secteurs | Identité professionnelle |

### Concepts essentiels

- **Lookalikes** : base-toi sur tes meilleurs clients (par LTV), pas sur l'ensemble de ta base
- **Retargeting** : segmente par étape du funnel (visiteurs vs. abandonnistes de panier)
- **Exclusions** : exclus les clients actuels et les convertis récents (diffuser des pubs à des acheteurs gaspille le budget)

**Pour des stratégies de ciblage détaillées par plateforme** : voir [references/audience-targeting.md](references/audience-targeting.md)

---

## Bonnes pratiques créatives

### Publicités image
- Captures d'écran du produit montrant l'interface
- Comparatifs avant/après
- Statistiques et chiffres mis en valeur
- Vrais visages humains (pas de photos de banque d'images)
- Texte superposé lisible et sobre (moins de 20 % de la surface)

### Structure des publicités vidéo (15 à 30 s)
1. Accroche (0-3 s) : rupture de schéma, question ou affirmation forte
2. Problème (3-8 s) : douleur reconnaissable
3. Solution (8-20 s) : montrer le produit ou le bénéfice
4. CTA (20-30 s) : prochaine étape claire

**Conseils de production :**
- Sous-titres toujours présents (85 % des vues se font sans le son)
- Format vertical pour Stories/Reels, carré pour le fil
- Le rendu natif surpasse le rendu très léché
- Les 3 premières secondes déterminent la rétention

### Hiérarchie des tests créatifs
1. Concept et angle (impact le plus fort)
2. Accroche et titre
3. Style visuel
4. Corps de texte
5. CTA

---

## Optimisation des campagnes

### Indicateurs clés par objectif

| Objectif | Indicateurs principaux |
|----------|------------------------|
| Notoriété | CPM, portée, taux de visionnage vidéo |
| Considération | CTR, CPC, temps sur le site |
| Conversion | CPA, ROAS, taux de conversion |

### Leviers d'optimisation

**Si le CPA est trop élevé :**
1. Vérifie la page de destination (le problème est-il post-clic ?)
2. Resserre le ciblage d'audience
3. Teste de nouveaux angles créatifs
4. Améliore la pertinence de l'annonce et le quality score
5. Ajuste la stratégie d'enchères

**Si le CTR est faible :**
- Le créatif ne résonne pas → teste de nouvelles accroches et de nouveaux angles
- Désalignement audience → affine le ciblage
- Fatigue publicitaire → rafraîchis le créatif

**Si le CPM est élevé :**
- Audience trop restreinte → élargis le ciblage
- Forte concurrence → essaie d'autres placements
- Quality score faible → améliore l'adéquation du créatif

### Progression des stratégies d'enchères
1. Commence en manuel ou avec des plafonds de coût
2. Accumule des données de conversion (50+ conversions)
3. Bascule en automatique avec des cibles basées sur l'historique
4. Surveille et ajuste les cibles en fonction des résultats

---

## Stratégies de retargeting

### Approche par étape du funnel

| Étape du funnel | Audience | Message | Objectif |
|-----------------|----------|---------|----------|
| Haute | Lecteurs de blog, vues vidéo | Éducatif, preuve sociale | Passer à la considération |
| Moyenne | Visiteurs pages tarifs/fonctionnalités | Études de cas, démos | Passer à la décision |
| Basse | Abandonnistes de panier, utilisateurs en essai | Urgence, traitement des objections | Convertir |

### Fenêtres de retargeting

| Étape | Fenêtre | Fréquence capping |
|-------|---------|-------------------|
| Chaud (panier/essai) | 1 à 7 jours | Fréquence haute acceptable |
| Tiède (pages clés) | 7 à 30 jours | 3 à 5 fois/semaine |
| Froid (toute visite) | 30 à 90 jours | 1 à 2 fois/semaine |

### Exclusions à configurer
- Clients existants (sauf upsell)
- Convertis récents (fenêtre de 7 à 14 jours)
- Visiteurs rebond (moins de 10 s)
- Pages non pertinentes (recrutement, support)

---

## Reporting et analyse

### Revue hebdomadaire
- Rythme de dépense vs. budget
- CPA/ROAS vs. objectifs
- Meilleures et moins bonnes publicités
- Performance par audience
- Vérification de la fréquence (risque de fatigue)
- Taux de conversion de la page de destination

### Considérations sur l'attribution
- L'attribution des plateformes est gonflée
- Utilise des paramètres UTM de façon systématique
- Compare les données de plateforme avec GA4
- Observe le CAC mixte (blended CAC), pas seulement le CPA plateforme

---

## Configuration des plateformes

Avant de lancer des campagnes, assure-toi que le tracking et le compte sont bien en place.

**Pour des checklists complètes par plateforme** : voir [references/platform-setup-checklists.md](references/platform-setup-checklists.md)

**Pour l'installation des pixels et la configuration des événements de conversion** : voir [references/conversion-tracking.md](references/conversion-tracking.md)

### Checklist pré-lancement universelle
- [ ] Tracking de conversion testé avec une vraie conversion
- [ ] Page de destination rapide (moins de 3 s)
- [ ] Page de destination adaptée au mobile
- [ ] Paramètres UTM fonctionnels
- [ ] Budget configuré correctement
- [ ] Ciblage conforme à l'audience visée

---

## Spécification de sortie pour les RSA Google (obligatoire lors de la génération de RSA)

Quand l'utilisateur demande des RSA Google Ads (Responsive Search Ads), la sortie DOIT respecter les limites de la plateforme et les exigences structurelles ci-dessous. Ne génère aucun RSA qui les enfreint.

### Limites strictes par RSA (à contrôler avant de répondre)

- **Titres :** exactement **15** par RSA, chacun **≤ 30 caractères** (compte les caractères, espaces inclus). Rendu : `1. ... (NN car.)` pour permettre la vérification.
- **Descriptions :** exactement **4** par RSA, chacune **≤ 90 caractères**.
- **Chemins :** jusqu'à 2 champs de chemin, chacun **≤ 15 caractères**.
- **URL finale :** présente, en https.
- **Épinglage :** indique explicitement les positions épinglées. Par défaut = non épinglé sauf demande.
- **Limite par compte :** Google impose **3 RSA max par groupe d'annonces**. Si l'utilisateur en demande davantage, regroupe-les par groupe d'annonces.

### Éléments complémentaires obligatoires (à inclure avec toute demande de RSA)

1. **Structure des groupes d'annonces**, intitulée `Structure des groupes d'annonces :` : liste chaque groupe avec son thème, ses mots-clés cibles (types de correspondance) et les RSA associés.
2. **Liste de mots-clés négatifs**, intitulée `Mots-clés négatifs :` : minimum **8** entrées, avec distinction niveau groupe vs. niveau campagne.
3. **Sitelinks** (≥ 4), **Accroches** (≥ 4, ≤ 25 car.), **Extraits de site structurés** si pertinents.

### Conformité médicale/CFM (si le contexte produit indique un cabinet médical brésilien)

Si `.agents/product-marketing.md` indique un cabinet médical brésilien réglementé par le CFM, les termes suivants sont **interdits** dans les titres, descriptions, sitelinks et accroches :

- Superlatifs : `#1`, `melhor`, `o melhor`, `melhor do brasil`, `top`, `referência`
- Promesses de résultat : `garantido`, `garantia`, `cura`, `cura definitiva`, `100%`, `resultado garantido`, `livre da dor`
- Comparaisons avec d'autres médecins ou cliniques

Utilise un cadrage neutre : `atendimento`, `consulta`, `avaliação`, `segunda opinião`, `agende sua consulta`, `tire suas dúvidas`. Le modificateur géographique (`Porto Alegre`, `POA`, `Zona Sul POA`) est obligatoire quand le brief précise une région.

### Ordre de sortie (obligatoire : respecte cet ordre pour éviter la troncature)

1. **Structure des groupes d'annonces** (court)
2. **Mots-clés négatifs** (≥ 8, OBLIGATOIRE : à émettre AVANT les RSA pour ne pas être tronqué si la sortie est longue)
3. **Sitelinks** (≥ 4)
4. **Accroches** (≥ 4)
5. **RSA1, RSA2, RSA3** (section la plus longue, en dernier : une troncature partielle reste acceptable)

### Modèle de sortie (forme obligatoire)

```
Structure des groupes d'annonces :
- GA1 [thème] : mots-clés (types de correspondance) → RSA1, RSA2
- GA2 [thème] : ...

Mots-clés négatifs :
  Niveau campagne :
    - <mot-clé>
    - <mot-clé>
    (≥ 4 ici)
  Niveau groupe d'annonces :
    - GA1 : <mot-clé>, <mot-clé>
    - GA2 : <mot-clé>, <mot-clé>
    (≥ 4 autres ici, TOTAL ≥ 8 entrées)

Sitelinks (≥ 4) :
  - <titre (≤ 25 car.)> | <desc1 (≤ 35 car.)> | <desc2 (≤ 35 car.)> | URL

Accroches (≥ 4, chacune ≤ 25 car.) :
  - <accroche>

RSA1 : [nom du groupe d'annonces]
  URL finale : https://...
  Chemin 1 : ...   Chemin 2 : ...
  Titres (15, chacun ≤ 30 car.) :
    1. <titre> (NN car.)
    ...
    15. <titre> (NN car.)
  Descriptions (4, chacune ≤ 90 car.) :
    1. <description> (NN car.)
    ...
    4. <description> (NN car.)
  Épinglage : T1=aucun ; T2=aucun ; ...   (ou épinglages explicites)

RSA2 : ...
RSA3 : ...
```

### Auto-vérification avant de répondre

Avant d'envoyer la sortie, passe mentalement cette checklist :

- [ ] Chaque RSA a exactement 15 titres et exactement 4 descriptions.
- [ ] Chaque titre fait ≤ 30 car. ; chaque description ≤ 90 car. Le nombre de caractères est affiché.
- [ ] La liste de mots-clés négatifs est intitulée et contient ≥ 8 entrées.
- [ ] La structure des groupes d'annonces est intitulée.
- [ ] Si médical (CFM) : aucun superlatif ni promesse de résultat interdits ; modificateur géographique présent si requis ; langue en pt-BR.

Si un point échoue, réécris avant de répondre. Ne livre pas de RSA partiels.

---

## Erreurs courantes à éviter

### Stratégie
- Lancer sans tracking de conversion
- Trop de campagnes (fragmentation du budget)
- Pas assez de temps de lancement pour l'apprentissage algorithmique
- Optimiser sur le mauvais indicateur

### Ciblage
- Audiences trop restreintes ou trop larges
- Ne pas exclure les clients existants
- Chevauchement d'audiences en compétition

### Créatif
- Une seule publicité par ensemble d'annonces
- Ne pas rafraîchir le créatif (fatigue publicitaire)
- Désalignement entre la publicité et la page de destination

### Budget
- Budget trop dilué entre les campagnes
- Modifications budgétaires trop importantes (perturbe l'apprentissage)
- Arrêter les campagnes pendant la phase d'apprentissage

---

## Questions spécifiques à la tâche

1. Sur quelle(s) plateforme(s) diffuses-tu déjà, ou veux-tu commencer ?
2. Quel est ton budget publicitaire mensuel ?
3. À quoi ressemble une conversion réussie (et quelle est sa valeur) ?
4. Disposes-tu d'assets créatifs existants ou faut-il en créer ?
5. Vers quelle page de destination les publicités vont-elles pointer ?
6. As-tu déjà mis en place le pixel et le tracking de conversion ?

---

## Intégrations d'outils

Pour l'implémentation, voir le [registre d'outils](../../tools/REGISTRY.md). Principales plateformes publicitaires :

| Plateforme | Idéal pour | MCP | Guide |
|------------|------------|:---:|-------|
| **Google Ads** | Intention de recherche, trafic qualifié | ✓ | [google-ads.md](../../tools/integrations/google-ads.md) |
| **Meta Ads** | Génération de demande, produits visuels, B2C | - | [meta-ads.md](../../tools/integrations/meta-ads.md) |
| **LinkedIn Ads** | B2B, ciblage par poste | - | [linkedin-ads.md](../../tools/integrations/linkedin-ads.md) |
| **TikTok Ads** | Audiences jeunes, vidéo | - | [tiktok-ads.md](../../tools/integrations/tiktok-ads.md) |

Pour la configuration du tracking : voir [references/conversion-tracking.md](references/conversion-tracking.md), [ga4.md](../../tools/integrations/ga4.md), [segment.md](../../tools/integrations/segment.md)

---

## Skills liés

- **ad-creative** : pour générer et itérer des titres, descriptions et créatifs publicitaires en série
- **copywriting** : pour la copy des pages de destination qui convertissent le trafic publicitaire
- **analytics** : pour une configuration correcte du tracking de conversion
- **ab-testing** : pour tester des variantes de pages de destination et améliorer le ROAS
- **cro** : pour optimiser les taux de conversion post-clic
