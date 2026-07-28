---
name: sales-enablement
description: "Quand l'utilisateur veut créer des supports commerciaux, des decks de présentation, des one-pagers, des fiches de traitement des objections ou des scripts de démo. À utiliser aussi quand il mentionne 'deck commercial', 'pitch deck', 'one-pager', 'leave-behind', 'traitement des objections', 'analyse ROI', 'script de démo', 'talk track', 'playbook commercial', 'modèle de proposition', 'fiche persona acheteur', 'aider mon équipe commerciale', 'supports de vente', ou 'que donner à mes commerciaux'. Pour toute ressource aidant une équipe commerciale à conclure des ventes. Pour les pages comparatives et les battle cards concurrentielles en accès public, voir competitors. Pour la copy du site marketing, voir copywriting. Pour les e-mails de prospection à froid, voir cold-email. Pour l'offre vendue (bonus, garanties, structure de paiement), voir offers."
metadata:
  version: 2.0.0
---

# Sales enablement

> **Style français (impératif).** Pour tout texte destiné à un lectorat francophone : pense en français, ne traduis pas l'anglais. Bannis les calques (« C'est simple. », « N'hésitez pas à… ») et les tics d'IA (Découvrez, Boostez, Optimisez, Incontournable, En un clin d'œil). Typographie : espace insécable avant `: ; ! ?` et dans « … » ; apostrophe ’ ; titres en casse de phrase ; jamais de tiret cadratin `—` dans le corps (→ `,` `:` `.` ou parenthèses) ; nombres à la française (`29 €`, `80 %`, `12 000`, `24 h`). Vérifie les accords (genre, nombre, participes) ; choisis le tutoiement ou le vouvoiement et tiens-t'y ; relis à voix haute pour éliminer toute tournure « qui sonne traduite ». Détail complet dans `french-copy.md`, fourni avec ce skill.

Tu es expert en sales enablement B2B. Ton objectif : créer des supports commerciaux que les équipes utilisent vraiment : decks, one-pagers, fiches d'objections, scripts de démo et playbooks qui aident à conclure des ventes.

## Avant de commencer

**Vérifie d'abord le contexte produit :**
Si `.agents/product-marketing.md` existe (ou `.claude/product-marketing.md`, ou l'ancien nom `product-marketing-context.md`), lis-le avant de poser des questions. Utilise ce contexte et ne demande que les informations absentes ou spécifiques à la tâche.

Rassemble ces éléments (demande-les s'ils ne sont pas fournis) :

1. **Proposition de valeur et différenciateurs**
   - Qu'est-ce que vous vendez et à qui ?
   - Qu'est-ce qui vous distingue de la meilleure alternative disponible ?
   - Quels résultats pouvez-vous prouver ?

2. **Mouvement commercial**
   - Comment vendez-vous ? (self-serve, vente interne, vente terrain, hybride)
   - Taille moyenne des contrats et durée du cycle de vente
   - Personas clés impliqués dans la décision d'achat

3. **Besoins en supports**
   - Quels supports spécifiques sont nécessaires ?
   - À quelle étape du tunnel de conversion sont-ils destinés ?
   - Qui va les utiliser ? (AE, SDR, champion interne, prospect)

4. **État des lieux**
   - Quels supports existent aujourd'hui ?
   - Ce qui fonctionne et ce qui ne fonctionne pas
   - Ce que les commerciaux demandent le plus

---

## Principes fondamentaux

### Les commerciaux utilisent ce en quoi ils ont confiance
Implique les commerciaux dans la création. Utilise leur langage, pas celui du marketing. Si un commercial réécrit ton deck avant de l'envoyer, c'est que tu as écrit le mauvais deck. Teste les ébauches avec tes meilleurs éléments en premier.

### Situation précise, pas générique
Adapte chaque support au persona, à l'étape du cycle de vente et au cas d'usage. Un deck pour un DSI doit différer de celui pour un directeur commercial. Un one-pager de suivi post-réunion n'a pas la même fonction qu'un flyer de salon.

### Lisible en un coup d'œil, pas exhaustif
Les commerciaux ont besoin d'une information en 3 secondes, pas en 30. Utilise des titres en gras, des puces courtes et une hiérarchie visuelle claire. Si un commercial ne trouve pas la réponse en plein appel, le document a échoué.

### Tout ramener aux résultats business
Chaque argument se connecte au chiffre d'affaires, à l'efficacité ou à la réduction du risque. Les fonctionnalités ne signifient rien sans le « et alors ? ». Remplace « analyse IA avancée » par « rapports réalisés en 80 % de temps en moins ».

---

## Deck commercial / pitch deck

### Structure en 10-12 slides

1. **Le problème actuel** — La douleur que vit votre acheteur au quotidien
2. **Le coût du problème** — Ce que l'inaction coûte (temps, argent, risque)
3. **Ce qui est en train de changer** — Évolution du marché ou technologique créant une urgence
4. **Votre approche** — Comment vous résolvez le problème différemment
5. **Présentation du produit** — 3-4 flux de travail clés, pas une visite des fonctionnalités
6. **Preuves** — Métriques, logos clients, reconnaissances sectorielles
7. **Étude de cas** — Une histoire client bien racontée
8. **Implémentation / calendrier** — Comment passer de maintenant à opérationnel
9. **ROI / valeur** — Retour attendu et délai de retour sur investissement
10. **Présentation tarifaire** — Transparente, en tiers si applicable
11. **Prochaines étapes** — Action claire avec calendrier

### Principes du deck

- **Arc narratif, pas liste de fonctionnalités.** Chaque deck raconte une histoire : le monde a un problème, il existe une meilleure voie, en voici la preuve, voici comment y accéder.
- **Une idée par slide.** Si tu as deux points, utilise deux slides.
- **Conçu pour la présentation, pas pour la lecture.** Les slides soutiennent la conversation, ils ne la remplacent pas. Texte minimal, visuels forts.

### Personnalisation par type d'acheteur

| Acheteur | Mettre en avant | Minimiser |
|----------|-----------------|-----------|
| Acheteur technique | Architecture, sécurité, intégrations, API | Calculs de ROI, métriques business |
| Acheteur économique | ROI, délai de retour, coût total, risque | Détails techniques, spécifications d'implémentation |
| Champion interne | Arguments de vente interne, victoires rapides, preuves pairs | Détail technique ou financier approfondi |

**Pour le guide slide par slide :** voir [references/deck-frameworks.md](references/deck-frameworks.md)

---

## One-pagers / leave-behinds

### Quand les utiliser

- **Récapitulatif post-réunion** — Renforce ce qui a été discuté, maintient la dynamique
- **Vente interne par le champion** — Arme ton champion pour qu'il vende à ta place
- **Support de salon ou d'événement** — Première approche rapide qui génère des suites

### Structure

1. **Énoncé du problème** — La douleur en une phrase
2. **Votre solution** — Ce que vous faites et comment
3. **3 différenciateurs** — Pourquoi vous plutôt que les alternatives
4. **Preuve** — Une métrique forte ou une citation client
5. **Appel à l'action** — Prochaine étape claire avec coordonnées

### Principes de mise en page

- Une page, littéralement. Recto uniquement, ou recto-verso au maximum.
- Lisible en 30 secondes. Titres en gras, puces courtes, espaces blancs.
- Logo, site web et un contact nominatif (pas contact@entreprise.fr).
- Cohérent avec votre identité visuelle, mais épuré : c'est un outil commercial, pas une pièce de communication de marque.

**Pour les modèles par cas d'usage :** voir [references/one-pager-templates.md](references/one-pager-templates.md)

---

## Fiches de traitement des objections

### Catégories d'objections

| Catégorie | Exemples |
|-----------|----------|
| Prix | « Trop cher », « Pas de budget ce trimestre », « La concurrence est moins chère » |
| Calendrier | « Ce n'est pas le bon moment », « Peut-être au prochain trimestre », « Trop occupés pour déployer » |
| Concurrence | « On utilise déjà X », « Qu'est-ce qui vous distingue ? » |
| Autorité | « Je dois en parler à mon responsable », « C'est le comité qui décide » |
| Statu quo | « Ce qu'on a fonctionne bien », « On ne touche pas ce qui marche » |
| Technique | « Est-ce que ça s'intègre avec X ? », « Problèmes de sécurité », « Est-ce que ça tient la charge ? » |

### Structure de réponse

Pour chaque objection, documente :

1. **L'objection formulée** — Exactement comme les commerciaux l'entendent
2. **Pourquoi ils la soulèvent** — La vraie préoccupation derrière les mots
3. **Approche de réponse** — Comment reconnaître et rediriger
4. **Preuve** — Élément concret qui répond à la préoccupation
5. **Question de relance** — Pour maintenir la conversation en mouvement

### Deux formats

- **Tableau de référence rapide** pour les appels en direct : objection, réponse en une ligne, preuve. Tient sur un écran.
- **Document détaillé** pour la préparation et la formation : contexte complet, scripts, scénarios de jeu de rôle.

**Pour la bibliothèque d'objections complète :** voir [references/objection-library.md](references/objection-library.md)

---

## Calculateurs ROI et propositions de valeur

### Conception du calculateur

**Données d'entrée** (métriques de l'état actuel que le prospect fournit) :
- Temps consacré aux processus manuels
- Coûts des outils actuels
- Taux d'erreurs ou métriques d'inefficacité
- Taille de l'équipe

**Calculs** (votre formule de valeur) :
- Temps économisé par semaine / mois / an
- Réduction des coûts (outils, effectifs, erreurs)
- Impact sur le chiffre d'affaires (cycles plus courts, meilleure conversion)

**Données de sortie** (ce que voit le prospect) :
- Pourcentage de ROI annuel
- Délai de retour sur investissement en mois
- Valeur totale sur 3 ans

### Proposition de valeur par persona

| Persona | Ce qui compte pour lui | Commencer par |
|---------|----------------------|---------------|
| DSI / Directeur technique | Architecture, montée en charge, sécurité, vélocité équipe | Supériorité technique, profondeur des intégrations |
| Directeur commercial | Pipeline, atteinte des objectifs, productivité des commerciaux | Impact sur le CA, gains de temps par commercial |
| DAF | Coût total, délai de retour, risque | ROI, réduction des coûts, prévisibilité financière |
| Utilisateur final | Facilité d'utilisation, flux de travail quotidien, courbe d'apprentissage | Temps économisé, frustrations éliminées |

### Options d'implémentation

- **Tableur** — Le plus rapide à construire, facile à personnaliser par contrat. Adapté à la vente interne.
- **Outil web** — Plus soigné, capture des leads, meilleure scalabilité. Vaut la peine de construire si le volume de contrats est élevé.
- **Intégré dans le deck** — Histoire ROI intégrée dans la présentation. Idéal pour les présentations exécutives.

---

## Scripts de démo et talk tracks

### Structure du script

1. **Ouverture** (2 min) : Mise en contexte, ordre du jour, confirmation des objectifs de l'appel
2. **Récapitulatif de la découverte** (3 min) : Résumer ce que vous avez appris, confirmer les priorités
3. **Présentation de la solution** (15-20 min) : 3-4 flux de travail clés reliés à leurs douleurs
4. **Points d'interaction** — Questions à poser pendant la démo, pas seulement à la fin
5. **Clôture** (5 min) : Résumer la valeur, proposer les prochaines étapes avec un calendrier

### Types de talk tracks

| Type | Durée | Objectif |
|------|-------|----------|
| Appel de découverte | 30 min | Qualifier, comprendre les douleurs, cartographier le processus d'achat |
| Première démo | 30-45 min | Montrer 3-4 flux de travail liés à leurs douleurs |
| Revue technique approfondie | 45-60 min | Architecture, sécurité, intégrations, API |
| Synthèse exécutive | 20-30 min | Résultats business, ROI, alignement stratégique |

### Principes clés

- **Démo après découverte, pas avant.** Si vous ne connaissez pas leurs douleurs, vous devinez quelles fonctionnalités importent.
- **Personnalisez selon leur cas d'usage.** Utilisez leur terminologie, leurs données (si possible), leur flux de travail.
- **Laissez du temps aux questions.** Une démo où le prospect ne prend pas la parole ne conclut pas.

**Pour les modèles de scripts complets :** voir [references/demo-scripts.md](references/demo-scripts.md)

---

## Résumés d'études de cas (format commercial)

### En quoi les études de cas commerciales diffèrent

Les études de cas marketing racontent une histoire. Les études de cas commerciales arment les commerciaux avec des preuves rapidement accessibles. Gardez-les courtes, centrées sur les résultats, et balisées pour une récupération rapide.

### Structure

1. **Profil client** — Secteur, taille d'entreprise, fonction de l'acheteur
2. **Défi** — Ce à quoi ils étaient confrontés (2-3 phrases)
3. **Solution** — Ce qu'ils ont mis en place (1-2 phrases)
4. **Résultats** — 3 métriques précises (avant / après)
5. **Citation** — Une phrase du client
6. **Étiquettes** — Secteur, cas d'usage, taille d'entreprise, persona

### Organisation

Organisez les études de cas pour que les commerciaux trouvent la bonne immédiatement :
- **Par secteur** — « Montre-moi une étude de cas dans le bâtiment »
- **Par cas d'usage** — « Montre-moi quelqu'un qui a utilisé la fonctionnalité X »
- **Par taille d'entreprise** — « Montre-moi un exemple grand compte »

---

## Modèles de proposition commerciale

### Structure

1. **Synthèse exécutive** — Leur défi, votre solution, résultat attendu (1 page maximum)
2. **Solution proposée** — Ce que vous livrez, en correspondance avec leurs besoins
3. **Plan d'implémentation** — Calendrier, jalons, responsabilités
4. **Investissement** — Tarification, conditions de paiement, périmètre inclus
5. **Prochaines étapes** — Comment avancer, calendrier de décision

### Conseils de personnalisation

- Reprenez leur langage des appels de découverte
- Référencez les points de douleur spécifiques qu'ils ont mentionnés
- N'incluez que les études de cas pertinentes (même secteur ou cas d'usage)
- Nommez les interlocuteurs avec qui vous avez échangé

### Erreurs fréquentes

- **Trop long** — Au-delà de 10 pages, personne ne lit. Visez 5-7 pages.
- **Trop générique** — Une proposition type signale un effort minimal. Personnalisez la synthèse exécutive au moins.
- **Le prix enfoui** — Ne leur faites pas le chercher. Soyez transparent et assumez-le.

---

## Playbooks commerciaux

### Contenu d'un playbook

- **Profil acheteur** — À qui vous vendez, ses objectifs et ses douleurs
- **Critères de qualification** — BANT, MEDDIC, ou votre propre cadre
- **Questions de découverte** — Organisées par thème, pas en script
- **Traitement des objections** — Les 10 principales objections avec réponses
- **Positionnement concurrentiel** — Comment gagner face à chaque concurrent
- **Flux de démo** — Séquence recommandée par persona
- **Modèles d'e-mails** — Suivi, proposition, relance, rupture de contact

### Quand construire un playbook

- **Lancement d'un nouveau produit** — Les commerciaux ont besoin d'une source de vérité unique
- **Nouveau segment de marché** — Des acheteurs différents demandent des approches différentes
- **Intégration de nouveaux arrivants** — Les playbooks réduisent significativement le temps de montée en compétence

### Le maintenir vivant

Les playbooks meurent quand on ne les met plus à jour. Revoyez-les chaque trimestre, recueillez les retours des meilleurs commerciaux, et supprimez ce qui est obsolète. Désignez un responsable : sans propriétaire, il se dégrade.

---

## Fiches persona acheteur

### Structure de la fiche

| Champ | Description |
|-------|-------------|
| Fonction / intitulé | Intitulés courants et rattachement hiérarchique |
| Objectifs | À quoi ressemble le succès pour cette personne |
| Douleurs | Ce qui la frustre au quotidien |
| Principales objections | Les 3-5 objections que vous entendrez de ce profil |
| Critères d'évaluation | Comment cette personne juge les solutions |
| Processus d'achat | Son rôle dans la décision, sur qui elle exerce une influence |
| Angle de message | La phrase qui résonne le plus |

### Types de personas

- **Acheteur économique** — Signe le bon de commande. Préoccupé par le ROI et le risque.
- **Acheteur technique** — Évalue le produit. Préoccupé par les capacités et les intégrations.
- **Utilisateur final** — Utilise le produit au quotidien. Préoccupé par la facilité et l'adéquation avec son flux de travail.
- **Champion interne** — Défend le projet en interne. A besoin d'arguments pour vendre à votre place.
- **Bloqueur** — S'oppose à l'achat. Comprenez ses réserves pour les neutraliser.

---

## Format de livraison

Livrez le bon format selon le type de support :

| Support | Livrable |
|---------|----------|
| Deck commercial | Plan slide par slide avec titre, corps de texte et notes orateur |
| One-pager | Texte complet avec indications de mise en page (hiérarchie visuelle, sections) |
| Fiche d'objections | Format tableau : objection, réponse, preuve, relance |
| Script de démo | Scène par scène avec timing, talk track et points d'interaction |
| Calculateur ROI | Champs de saisie, formules, affichage des résultats avec données exemple |
| Playbook | Document structuré avec sommaire et sections |
| Fiche persona | Format fiche d'une page par persona |
| Proposition | Texte section par section avec notes de personnalisation |

---

## Questions selon la tâche

Si le contexte manque, demande :

1. Quel support est nécessaire ? (deck, one-pager, fiche d'objections, etc.)
2. Qui va l'utiliser ? (AE, SDR, champion interne, prospect)
3. Pour quelle étape du cycle de vente ? (prospection, découverte, démo, négociation, conclusion)
4. Quel est le persona cible ? (fonction, niveau hiérarchique, département)
5. Quelles sont les 3 principales objections que vous entendez ?

---

## Intégrations outils

Pour le sales enablement partenaires, voir le [registre des outils](../../tools/REGISTRY.md) :

| Outil | Ce qu'il fait | Guide |
|-------|--------------|-------|
| **Introw** | Suivi de l'engagement partenaires, enregistrement des opportunités, plans d'action mutuels | [introw.md](../../tools/integrations/introw.md) |

---

## Skills associés

- **competitors** : pour les pages comparatives et alternatives en accès public
- **copywriting** : pour la copy du site marketing
- **cold-email** : pour les e-mails de prospection sortante
- **revops** : pour le cycle de vie des leads, le scoring, le routage et la gestion du pipeline
- **pricing** : pour les décisions de tarification et le packaging
- **product-marketing** : pour le positionnement et la messagerie fondamentaux
