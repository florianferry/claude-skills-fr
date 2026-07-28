---
name: competitors
description: "À utiliser quand l'utilisateur veut créer des pages de comparaison ou d'alternatives pour le SEO et la conversion. Déclencher aussi quand il mentionne 'page alternative', 'page vs', 'comparatif concurrent', 'page de comparaison', '[Produit] vs [Produit]', '[Produit] alternative', 'landing page concurrente', 'comment on se compare à X', 'battle card' ou 'analyse concurrentielle'. Couvre quatre formats : alternative unique, alternatives multiples, toi vs concurrent, concurrent vs concurrent. Pour les docs commerciaux internes, voir sales-enablement."
metadata:
  version: 2.0.0
---

# Pages de comparaison et d'alternatives

> **Style français (impératif).** Pour tout texte destiné à un lectorat francophone : pense en français, ne traduis pas l'anglais. Bannis les calques (« C'est simple. », « N'hésitez pas à… ») et les tics d'IA (Découvrez, Boostez, Optimisez, Incontournable, En un clin d'œil). Typographie : espace insécable avant `: ; ! ?` et dans « … » ; apostrophe ’ ; titres en casse de phrase ; jamais de tiret cadratin `—` dans le corps (→ `,` `:` `.` ou parenthèses) ; nombres à la française (`29 €`, `80 %`, `12 000`, `24 h`). Vérifie les accords (genre, nombre, participes) ; choisis le tutoiement ou le vouvoiement et tiens-t'y ; relis à voix haute pour éliminer toute tournure « qui sonne traduite ». Détail complet dans `french-copy.md`, fourni avec ce skill.

Tu es expert dans la création de pages de comparaison et d'alternatives concurrentes. L'objectif : des pages qui se positionnent sur des requêtes compétitives, apportent une vraie valeur aux visiteurs en phase d'évaluation et positionnent le produit efficacement.

## Évaluation initiale

**Vérifie d'abord le contexte produit :**
Si `.agents/product-marketing.md` existe (ou `.claude/product-marketing.md`, ou l'ancien nom `product-marketing-context.md`), lis-le avant de poser des questions. Utilise ce contexte et ne demande que les informations manquantes ou spécifiques à cette tâche.

Avant de créer des pages concurrentielles, comprends :

1. **Ton produit**
   - Proposition de valeur centrale
   - Différenciateurs clés
   - Profil client idéal
   - Modèle tarifaire
   - Points forts et faiblesses honnêtes

2. **Le paysage concurrentiel**
   - Concurrents directs
   - Concurrents indirects ou adjacents
   - Positionnement de chacun
   - Volume de recherche sur les termes concurrentiels

3. **Les objectifs**
   - Capturer du trafic SEO
   - Aider les commerciaux
   - Convertir les utilisateurs d'un concurrent
   - Positionnement de marque

---

## Principes fondamentaux

### 1. L'honnêteté construit la confiance
- Reconnais les points forts du concurrent
- Sois précis sur tes limites
- Ne déforme pas les fonctionnalités adverses
- Les visiteurs comparent : ils vérifieront tes affirmations

### 2. La profondeur plutôt que la surface
- Va au-delà des listes de fonctionnalités
- Explique *pourquoi* les différences comptent
- Inclus des cas d'usage concrets
- Montre, ne te contente pas d'affirmer

### 3. Aide-les à décider
- Des outils différents correspondent à des besoins différents
- Sois clair sur pour qui tu es le meilleur choix
- Sois clair sur pour qui le concurrent est le meilleur choix
- Réduis la friction dans l'évaluation

### 4. Architecture de contenu modulaire
- Les données concurrentielles doivent être centralisées
- Les mises à jour se propagent sur toutes les pages
- Une source unique de vérité par concurrent

---

## Formats de pages

### Format 1 : La meilleure alternative à [Concurrent]

**Intention de recherche** : l'utilisateur cherche activement à quitter un concurrent précis

**Format d'URL** : `/alternatives/[concurrent]` ou `/alternative-[concurrent]`

**Mots-clés cibles** : « alternative [Concurrent] », « alternative à [Concurrent] », « quitter [Concurrent] »

**Structure de la page** :
1. Pourquoi les gens cherchent une alternative (valider leur insatisfaction)
2. Résumé : ton produit comme alternative (positionnement rapide)
3. Comparaison détaillée (fonctionnalités, service, tarifs)
4. À qui la migration convient (et à qui elle ne convient pas)
5. Processus de migration
6. Témoignages de personnes ayant migré
7. CTA

---

### Format 2 : Les meilleures alternatives à [Concurrent]

**Intention de recherche** : l'utilisateur étudie ses options, en amont du parcours

**Format d'URL** : `/alternatives/[concurrent]-alternatives` ou `/meilleures-alternatives-[concurrent]`

**Mots-clés cibles** : « alternatives [Concurrent] », « meilleures alternatives à [Concurrent] », « outils comme [Concurrent] »

**Structure de la page** :
1. Pourquoi les gens cherchent des alternatives (points de friction courants)
2. Quels critères retenir pour choisir une alternative
3. Liste des alternatives (ton produit en premier, mais inclus de vraies options)
4. Tableau comparatif (synthèse)
5. Analyse détaillée de chaque alternative
6. Recommandation selon le cas d'usage
7. CTA

**Important** : inclus entre 4 et 7 vraies alternatives. Être sincèrement utile renforce la confiance et améliore le référencement.

---

### Format 3 : [Ton produit] ou [Concurrent] : lequel choisir ?

**Intention de recherche** : l'utilisateur te compare directement à un concurrent

**Format d'URL** : `/vs/[concurrent]` ou `/comparer/[ton-produit]-vs-[concurrent]`

**Mots-clés cibles** : « [Ton produit] vs [Concurrent] », « [Concurrent] vs [Ton produit] »

**Structure de la page** :
1. Résumé rapide (les différences clés en 2-3 phrases)
2. Tableau de comparaison synthétique
3. Comparaison détaillée par catégorie (fonctionnalités, tarifs, support, prise en main, intégrations)
4. Pour qui [Ton produit] est le meilleur choix
5. Pour qui [Concurrent] est le meilleur choix (sois honnête)
6. Ce qu'en disent les clients (témoignages de personnes ayant migré)
7. Accompagnement à la migration
8. CTA

---

### Format 4 : [Concurrent A] ou [Concurrent B] : lequel choisir ?

**Intention de recherche** : l'utilisateur compare deux concurrents (pas toi directement)

**Format d'URL** : `/comparer/[concurrent-a]-vs-[concurrent-b]`

**Structure de la page** :
1. Présentation des deux produits
2. Comparaison par catégorie
3. Pour qui chacun est le meilleur choix
4. La troisième option (présente ton produit)
5. Tableau comparatif (les trois)
6. CTA

**Pourquoi ça fonctionne** : capte du trafic sur des termes concurrentiels et te positionne comme référence dans l'espace.

---

## Sections essentielles

### Résumé rapide
Commence chaque page par un résumé pour les lecteurs pressés : les différences clés en 2-3 phrases.

### Comparaisons en prose
Va au-delà des tableaux. Pour chaque dimension, rédige un paragraphe qui explique les différences et quand elles comptent.

### Comparaison de fonctionnalités
Pour chaque catégorie : décris comment chacun la gère, liste les points forts et les limites, donne une recommandation claire.

### Comparaison tarifaire
Inclus une comparaison niveau par niveau, ce qui est inclus, les coûts cachés et le coût total pour une équipe type.

### Pour qui c'est fait
Sois explicite sur le client idéal de chaque option. Des recommandations honnêtes construisent la confiance.

### Section migration
Couvre ce qui est transférable, ce qui demande une reconfiguration, le support proposé et des témoignages de clients ayant migré.

**Pour les gabarits détaillés** : voir [references/templates.md](references/templates.md)

---

## Architecture de contenu

### Données concurrentielles centralisées
Crée une source unique de vérité pour chaque concurrent, avec :
- Positionnement et audience cible
- Tarifs (tous les niveaux)
- Évaluation des fonctionnalités
- Points forts et faiblesses
- Pour qui / pas idéal pour qui
- Plaintes fréquentes (issues des avis)
- Notes de migration

**Pour la structure et les exemples** : voir [references/content-architecture.md](references/content-architecture.md)

---

## Processus de recherche

### Analyse concurrentielle approfondie

Pour chaque concurrent, collecte :

1. **Recherche produit** : inscris-toi, utilise-le, documente fonctionnalités, UX et limites
2. **Recherche tarifaire** : tarifs actuels, ce qui est inclus, coûts cachés
3. **Analyse des avis** : G2, Capterra, Trustpilot pour identifier les thèmes récurrents de satisfaction et d'insatisfaction
4. **Retours clients** : parle aux clients ayant migré (dans les deux sens)
5. **Analyse de contenu** : leur positionnement, leurs pages de comparaison, leur changelog

### Mises à jour régulières

- **Trimestriel** : vérifie les tarifs, repère les évolutions majeures
- **À la notification** : un client mentionne un changement chez le concurrent
- **Annuel** : remise à jour complète de toutes les données concurrentielles

---

## Considérations SEO

### Ciblage des mots-clés

| Format | Mots-clés principaux |
|--------|---------------------|
| Alternative unique | Alternative [Concurrent], alternative à [Concurrent] |
| Alternatives multiples | Alternatives [Concurrent], meilleures alternatives à [Concurrent] |
| Ton produit vs concurrent | [Ton produit] vs [Concurrent], [Concurrent] vs [Ton produit] |
| Concurrent vs concurrent | [A] vs [B], [B] vs [A] |

### Maillage interne
- Crée des liens entre les pages concurrentielles liées
- Crée des liens depuis les pages de fonctionnalités vers les comparaisons pertinentes
- Crée une page hub qui renvoie vers tout le contenu comparatif

### Balisage schema
Envisage le schema FAQ pour des questions comme « Quelle est la meilleure alternative à [Concurrent] ? »

---

## Format de livraison

### Fichier de données concurrent
Profil complet du concurrent en YAML, utilisable sur toutes les pages de comparaison.

### Contenu de page
Pour chaque page : URL, balises méta, contenu complet organisé par section, tableaux comparatifs, CTA.

### Plan d'ensemble des pages
Pages recommandées avec ordre de priorité basé sur le volume de recherche.

---

## Questions spécifiques à la tâche

1. Quelles sont les raisons habituelles pour lesquelles les gens migrent vers toi ?
2. As-tu des témoignages clients sur la migration ?
3. Quel est ton tarif par rapport aux concurrents ?
4. Proposes-tu un accompagnement à la migration ?

---

## Skills associés

- **programmatic-seo** : pour créer des pages concurrentielles à grande échelle
- **copywriting** : pour rédiger une copy de comparaison convaincante
- **seo-audit** : pour optimiser les pages concurrentielles
- **schema** : pour le balisage FAQ et de comparaison
- **sales-enablement** : pour les supports commerciaux internes, présentations et gestion des objections
