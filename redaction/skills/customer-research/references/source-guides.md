# Recherche client : guides par source

Guides détaillés, source par source, pour collecter des renseignements clients dans les communautés en ligne.

---

## Reddit

### Trouver les bons sous-reddits

Commence par identifier où passe ton ICP, pas où ton produit est discuté.

**Méthodes de découverte :**
- Chercher `site:reddit.com "[intitulé de poste] outils"` ou `site:reddit.com "[catégorie de problème] logiciel"`
- Utiliser la [recherche de sous-reddits](https://www.reddit.com/subreddits/search) avec des mots-clés liés au problème
- Regarder quels sous-reddits ressortent dans les résultats Google quand tu cherches les problèmes de ton ICP
- Vérifier quels sous-reddits les clients des concurrents mentionnent dans leurs avis

**Sous-reddits à forte valeur par catégorie :**
- B2B SaaS : r/sales, r/marketing, r/entrepreneur, r/startups, r/smallbusiness
- Outils dev : r/programming, r/devops, r/webdev, r/cscareerquestions
- Analytics/data : r/analytics, r/dataengineering, r/BusinessIntelligence
- Marketing : r/PPC, r/SEO, r/emailmarketing, r/content_marketing
- RH/recrutement : r/recruiting, r/humanresources, r/jobs
- Finance/ops : r/accounting, r/financialplanning, r/projectmanagement

### Opérateurs de recherche

```
site:reddit.com/r/[sous-reddit] "[mot-clé]"
site:reddit.com "[problème]" "recommande" OR "suggestion" OR "alternative"
site:reddit.com "[nom du concurrent]" "vs" OR "alternative" OR "passé à"
```

### Ce qu'il faut chercher

**Types de posts à fort signal :**
- « Quels outils utilisez-vous pour X ? » → révèle les alternatives et le vocabulaire
- « Fatigué de [concurrent], je cherche une alternative » → révèle la douleur et les déclencheurs de changement
- « Comment gérez-vous X ? » → révèle les workflows et les contournements
- « Est-ce que [catégorie] vaut le coup ? » → révèle les objections et les critères d'évaluation
- Fils de plaintes sur les concurrents → révèle les lacunes que tu pourrais combler

**Ce qu'il faut extraire :**
- Le problème exact décrit dans le post
- Les solutions les plus votées (ce que les praticiens recommandent vraiment)
- Les plaintes sur les solutions existantes dans les commentaires
- Le langage utilisé : noter les mots et formules spécifiques
- Les tendances de votes : consensus vs. controverse

### Outils
- La recherche native Reddit (limitée mais rapide)
- Google : `site:reddit.com [requête]` (meilleurs résultats)
- Pullpush.io : recherche dans les posts Reddit archivés (utile pour les anciens fils)

---

## G2 et sites d'avis

### Avis sur ton propre produit

Lire dans cet ordre pour maximiser le signal :

1. **Avis 3 étoiles** : les plus honnêtes. Le client a suffisamment aimé pour rester, mais quelque chose lui manquait.
2. **Avis 1 étoile** : comprendre les modes d'échec. Distinguer les problèmes produit des problèmes de support/onboarding.
3. **Avis 5 étoiles** : extraire le langage « ce qu'ils adorent ». Ce sont tes preuves.
4. **Avis 4 étoiles** : contiennent souvent un « la seule chose que j'aurais voulu… » noyé dans les éloges.

**Ce qu'il faut extraire :**
- Ce pour quoi ils l'utilisent (le job to be done)
- Ce qu'ils trouvent le plus difficile ou frustrant
- Ce à quoi ils le comparent (« en venant de [X] », « mieux que [Y] »)
- Les signaux de secteur et de rôle dans les profils des auteurs d'avis

### Avis concurrents sur G2

Les avis 4 étoiles des concurrents sont une mine d'or : des clients qui aiment le produit mais ont encore des reproches.

**Structure G2 à exploiter :**
- « Qu'est-ce que vous aimez le plus ? » → leurs points forts (ton renseignement concurrentiel)
- « Qu'est-ce que vous n'aimez pas ? » → leurs faiblesses (tes opportunités)
- « Quels problèmes résolvez-vous ? » → le job to be done

**Capterra** a une structure similaire. **Trustpilot** tire vers le B2C. Les avis **AppSumo** sont utiles pour le SaaS SMB/prosumer.

### Modèle de mining d'avis

Pour chaque avis 4 étoiles d'un concurrent, extraire :

| Catégorie | Notes |
|-----------|-------|
| Job to be done | Pourquoi utilisent-ils le produit ? |
| Principaux éloges | Ce qu'ils adorent (et qui pourrait être difficile à égaler) ? |
| Principale plainte | Qu'est-ce qui les frustre ? |
| Contexte de changement | Ont-ils mentionné une migration depuis autre chose ? |
| Besoin non satisfait | « J'aimerais que… » ou « Ce serait mieux si… » |

---

## Indie Hackers et Product Hunt

### Indie Hackers

Signal fort pour l'ICP fondateur/builder/PME.

**Où chercher :**
- Posts « Ask IH » : questions sur les problèmes que ton produit résout
- Posts de milestones : quand les fondateurs décrivent leur stack, ils révèlent leurs préférences d'outils et leurs douleurs
- Fils de commentaires sur les lancements de produits dans ta catégorie

**Recherche :** `site:indiehackers.com "[problème]"` ou la recherche native d'IH.

### Product Hunt

Les **onglets Discussion** des produits concurrents sont une mine de recherche :
- Les questions posées = préoccupations pré-achat = objections
- Les commentaires = réactions des early adopters = indicateurs avancés de réception
- Les collections « Alternatives à X » révèlent le paysage concurrentiel tel que les utilisateurs le voient

---

## Hacker News

Signal fort pour l'ICP technique/développeur. Tire vers les builders et les sceptiques.

**Recherches à forte valeur :**
- `site:news.ycombinator.com "[concurrent ou catégorie]"`
- Fils « Ask HN : meilleurs outils pour X »
- Posts « Show HN » sur les concurrents : lire les commentaires sceptiques

**Ce qui différencie HN :**
- Les utilisateurs critiquent davantage l'architecture sous-jacente et le modèle économique
- Opinions tranchées sur les modèles de tarification (en particulier tout ce qui est par abonnement)
- Objections de fond que tu n'entendras pas ailleurs

---

## LinkedIn

### Posts et commentaires

Chercher des posts de praticiens décrivant leurs workflows :
- « [Rôle] dans une [taille d'entreprise] » + mot-clé lié au problème
- Histoires « On faisait [ancienne méthode] mais maintenant on fait [nouvelle méthode] »
- Posts demandant des recommandations d'outils : les commentaires viennent d'acheteurs actifs

### Offres d'emploi

Une offre d'emploi est l'aveu public d'un point de douleur.

**Ce qu'il faut chercher :**
- Quels outils sont listés en « nice to have » vs. « requis » ? (révèle la stack et les outils adjacents)
- Quelles métriques et quels résultats sont mentionnés dans la description du poste ?
- Sur quoi le rôle passe-t-il le plus de temps ? (révèle le job to be done)

**Recherche :** `site:linkedin.com/jobs "[intitulé de poste]" "[outil ou catégorie pertinent]"`

---

## Commentaires YouTube

### Trouver les vidéos à fort signal

- Tutoriels sur les problèmes que ton produit résout
- Vidéos « Meilleurs outils pour X en [année] »
- Démos et walkthroughs de produits concurrents

**Ce qu'il faut chercher dans les commentaires :**
- « Est-ce que ça marche pour [cas d'usage spécifique] ? » → cas limites et besoins non satisfaits
- « J'ai essayé mais… » → points de rupture
- « Et [concurrent] ? » → évaluation active
- Timecodes avec questions → points de confusion dans le workflow

---

## Twitter / X

### Opérateurs de recherche

```
"[concurrent]" -filter:replies min_faves:10
"[mot-clé problème]" "quelqu'un connaît" OR "recommande" OR "alternative"
"[catégorie] est nul" OR "fatigué de [catégorie]"
```

### Ce qu'il faut trouver

- Plaintes en temps réel sur les concurrents
- Praticiens qui décrivent leur stack
- Influenceurs/leaders d'opinion que suit ton ICP (utile pour la distribution)

---

## Articles de blog et forums

### Contenu comparatif

Google : `"[concurrent 1] vs [concurrent 2]"` ou `"meilleur logiciel [catégorie] [année]"`

Lis les commentaires de ces posts : les personnes qui trouvent du contenu comparatif sont en phase d'évaluation active. Leurs commentaires sont des questions auxquelles ton processus commercial doit répondre.

### Communautés de niche

- **Communautés Slack** : de nombreux secteurs ont des groupes Slack publics ou semi-publics. Chercher « [secteur] communauté Slack ».
- **Serveurs Discord** : en pleine croissance pour les communautés de développeurs et de créateurs.
- **Groupes Facebook** : encore très actifs pour les ICP PME, e-commerce, agences, coaches et consultants.
- **Circle/Mighty Networks** : vérifier s'il existe des communautés payantes dans l'espace de ton ICP.

---

## Recherche B2C et grand public

La recherche B2C requiert des sources différentes du B2B SaaS. Les acheteurs grand public ne se retrouvent pas sur LinkedIn ou G2 : ils laissent des traces dans les app stores, les réseaux sociaux et les communautés construites autour de l'activité que ton produit sert.

### Avis App Store (iOS / Google Play)

L'une des sources les plus riches et non filtrées pour les produits mobile/grand public.

**Lire dans cet ordre :**
1. **Avis 1-2 étoiles** : modes d'échec, attentes non satisfaites, pics de frustration
2. **Avis 3 étoiles** : compromis honnêtes et feedback « c'est bien, mais… »
3. **Avis 5 étoiles** : ce qu'ils adorent dans leurs propres mots (preuves et positionnement)

**Ce qu'il faut extraire :**
- Le job pour lequel ils ont « recruté » l'app (« je l'utilise pour… »)
- Le moment où ça a cessé de fonctionner
- Ce à quoi ils la comparent ou ce depuis quoi ils ont migré
- Le langage émotionnel : « j'adore comment… », « je suis tellement frustré que… »

**Conseil de tri :** trier par « Les plus récents » pour du signal frais, puis par « Les plus critiques » pour les thèmes de douleur.

### Avis Amazon (produits physiques ou logiciels avec présence Amazon)

Même ordre de priorité que les app stores : avis 3 étoiles en premier.

**Équivalent G2 pour le SaaS grand public** : Trustpilot, Sitejabber et agrégateurs d'avis propres à chaque produit.

### Reddit grand public

Le Reddit B2C est très vertical : va dans le sous-reddit dédié au hobby ou au style de vie, pas dans les généraux.

**Exemples par type de produit :**
- Apps fitness : r/running, r/loseit, r/fitness, r/MyFitnessPal
- Finances personnelles : r/personalfinance, r/financialindependence, r/ynab
- Productivité/notes : r/productivity, r/Notion, r/ObsidianMD
- Voyage : r/travel, r/solotravel, r/digitalnomad
- Parentalité : r/Parenting, r/beyondthebump, r/daddit

**Modèle de recherche :** `site:reddit.com/r/[communauté] "[nom de l'app ou problème]"`

### Commentaires TikTok et Instagram

Fort signal pour les produits grand public à dimension visuelle ou lifestyle.

**Comment trouver du signal :**
- Chercher sur TikTok « [nom du produit] avis » ou « [produit] ça vaut le coup »
- Regarder les 5 à 10 vidéos les plus vues ; lire TOUS les commentaires, pas seulement les likes
- Sur Instagram, regarder les posts taguant de vrais utilisateurs (pas les posts de marque)

**Ce qu'il faut extraire :**
- Les questions dans les commentaires = besoins non satisfaits ou positionnement flou
- « Est-ce que ça marche pour… ? » = jobs qu'ils veulent lui confier
- Commentaires « Je suis passé de X » = déclencheurs de changement
- Plaintes sur le prix, les fonctionnalités manquantes ou les promesses non tenues

### Commentaires YouTube (grand public)

Même approche que B2B, mais types de vidéos différents :

- « Avis honnête sur l'app X » ou « L'app X après 6 mois »
- Vidéos de comparaison « Meilleures apps [catégorie] [année] »
- Vidéos d'unboxing ou de « prise en main » pour les produits physiques/hardware

Les commentaires sur les vidéos d'avis sont particulièrement précieux : ce sont des personnes en phase active de considération.

### Plateformes communautaires grand public

- **Groupes Facebook** : encore dominants dans de nombreuses niches grand public (parentalité, fitness, services locaux, loisirs)
- **Serveurs Discord** : en croissance pour les communautés gaming, outils créatifs, productivité, crypto, lifestyle
- **Nextdoor** : utile pour les activités de services locaux
- **Quora** : les questions longues révèlent l'anxiété de décision et les critères d'évaluation

---

## SparkToro (intelligence d'audience)

SparkToro est un outil de recherche comportementale sur les audiences. Plutôt que de miner des posts et commentaires individuels, il agrège des données de navigation, de recherche et de réseaux sociaux pour montrer ce que ton audience fait à grande échelle : ce qu'elle lit, regarde, écoute, suit et cherche.

### Quand utiliser SparkToro vs. la recherche manuelle

- **SparkToro en premier** quand tu dois comprendre où passe ton ICP, quels contenus il consomme et quels influenceurs il suit : il répond à ces questions en quelques secondes avec des données agrégées
- **Recherche manuelle en premier** (Reddit, G2, communautés) quand tu as besoin de langage brut, de citations exactes, d'un contexte émotionnel et du « pourquoi » derrière les comportements
- **Idéalement les deux ensemble** : utilise SparkToro pour identifier les podcasts, sous-reddits et sites qui comptent, puis mine ces sources manuellement pour le langage voice of customer

### Requêtes clés à lancer

**Par concurrent :**
- « Personnes qui suivent @concurrent » → révèle les affinités d'audience communes
- « Personnes qui visitent concurrent.com » → montre ce qu'elles consomment par ailleurs

**Par description d'audience :**
- « Personnes qui parlent fréquemment de [sujet] » → trouve les comportements d'audience
- « Personnes dont la bio contient [intitulé de poste] » → profile un segment par rôle

**Par ta propre audience :**
- « Personnes qui visitent tondomaine.com » → comprends ton audience réelle
- Comparer avec les profils d'audience des concurrents pour trouver les lacunes

### Ce qu'il faut extraire

| Type de données | Ce que ça révèle | Pour quoi l'utiliser |
|-----------------|------------------|----------------------|
| Sites les plus visités | Où ton audience lit | Partenariats contenus, cibles pour articles invités |
| Podcasts principaux | Ce qu'elle écoute | Participations en podcast, décisions de sponsoring |
| Chaînes YouTube principales | Ce qu'elle regarde | Stratégie vidéo, placements publicitaires |
| Sous-reddits principaux | Où elle discute | Participation communautaire, ciblage Reddit Ads |
| Mots-clés recherchés | Ce qu'elle google | SEO et sujets de contenus |
| Sujets posés à l'IA | Ce qu'elle demande aux outils IA | Opportunités de contenus émergentes |
| Comptes sociaux suivis | Qui l'influence | Partenariats influenceurs, co-marketing |
| Données démographiques | Qui elle est | Construction de personas, ciblage publicitaire |

### Pondération des sources

Les données SparkToro sont agrégées et anonymisées : elles montrent des tendances, pas des opinions individuelles. Les traiter comme :
- **Haute confiance** pour les données comportementales (ce qu'ils visitent, suivent, cherchent)
- **Confiance moyenne** pour les données démographiques (déclaratives, peuvent être incomplètes)
- **Pas un substitut** à la recherche qualitative (ne capture pas le langage, les émotions ni le « pourquoi »)

### Limites

- Offre gratuite : 5 rapports/mois, résultats limités (top 5-10)
- Pas d'API publique : toute la recherche passe par l'interface web
- Tire vers l'anglophone et le marché américain
- Montre ce que les audiences font, pas pourquoi : à croiser avec des sources qualitatives

Voir [tools/integrations/sparktoro.md](../../../tools/integrations/sparktoro.md) pour les détails complets de l'outil et la tarification.

---

## Organiser ta recherche

Utiliser un système de tags simple sur toutes les sources :

| Tag | Signification |
|-----|---------------|
| `#douleur` | Un problème ou une frustration |
| `#déclencheur` | Un événement qui a lancé la recherche |
| `#résultat` | À quoi ressemble le succès |
| `#langage` | Formules exactes à réutiliser en copy |
| `#alternative` | Une autre solution envisagée ou utilisée |
| `#objection` | Une raison d'hésiter ou de ne pas acheter |
| `#concurrent` | Tout ce qui concerne un produit concurrent |

Tenir un document courant avec les colonnes : Source | Date | Citation | Tags | Notes

Au bout de 20 à 30 entrées, des tendances émergent. Les citations qui apparaissent dans plusieurs sources indépendantes sont tes résultats les plus fiables.

---

## Fiabilité des sources et scoring de confiance

Toutes les sources ne se valent pas. Ce guide permet d'attribuer les labels de confiance.

### Pondération des sources

| Source | Force du signal | Biais à noter |
|--------|----------------|---------------|
| Entretiens clients (spontanés) | Très élevée | Petit échantillon ; biais de sélection vers les clients engagés |
| Entretiens victoires/défaites | Élevée | Mémoire récente uniquement ; rationalisation fréquente |
| Avis App Store / G2 | Élevée | Tire vers les opinions tranchées (adoration ou rejet) |
| Posts Reddit / communautés | Moyenne à élevée | Tire vers les profils techniques, sceptiques et les minorités vocales |
| Tickets de support | Moyenne | Tire vers les problèmes ; majorité silencieuse non représentée |
| Sondage (réponses ouvertes) | Moyenne | Orienté par le cadrage des questions |
| Sondage (choix multiples) | Faible à moyenne | Artefacts des options proposées |
| Verbatims NPS | Moyenne | Corrélé au score ; induit par le moment du sondage |
| Commentaires YouTube/TikTok | Moyenne | Tire vers les spectateurs engagés ; performance sociale |
| Données d'audience SparkToro | Moyenne à élevée | Données comportementales agrégées ; fort pour le « quoi » mais pas le « pourquoi » |
| Offres d'emploi | Faible à moyenne | Aspirationnel, pas forcément reflet de la douleur actuelle |

### Labels de confiance en pratique

Quand tu présentes tes résultats, commence par le niveau de confiance :

```
[CONFIANCE ÉLEVÉE] Les clients se sentent submergés par le reporting manuel : apparaît dans 12 entretiens
sur 20, 4 fils Reddit et représente la plainte n°1 dans les avis G2 3 étoiles. Cohérent entre PME et mid-market.

[CONFIANCE MOYENNE] Les clients nous comparent aux tableurs plus qu'aux concurrents directs :
mentionné dans 6 entretiens et 3 fils Reddit, mais pas encore vu dans les données d'avis.

[CONFIANCE FAIBLE] Les acheteurs grands comptes pourraient avoir des enjeux liés aux achats :
mentionné par 2 personnes interrogées dans des entreprises de 500+ salariés. Signal insuffisant pour agir.
```

### Fenêtre de fraîcheur

- **À utiliser comme source principale** : données des 12 derniers mois
- **À utiliser avec prudence** : 12 à 24 mois (produit et marché ont pu évoluer)
- **À utiliser uniquement pour le contexte de fond** : plus de 2 ans

Quand un thème apparaît de façon cohérente dans des données anciennes et récentes, c'est un signal durable sur lequel il vaut la peine d'agir.
