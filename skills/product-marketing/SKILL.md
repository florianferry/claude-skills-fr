---
name: product-marketing
description: "À utiliser quand l'utilisateur veut créer ou mettre à jour son document de contexte product marketing. Également pertinent si l'utilisateur mentionne 'contexte produit', 'contexte marketing', 'configurer le contexte', 'positioning', 'positionnement', 'qui est ma cible', 'décris mon produit', 'ICP', 'profil client idéal', 'persona', 'value prop', ou veut éviter de répéter les informations fondamentales d'un skill à l'autre. À utiliser en début de projet, avant les autres skills marketing : génère `.agents/product-marketing.md` que tous les autres skills consultent pour le produit, l'audience et le positionnement. Pour construire un plan marketing complet à partir du positionnement, voir marketing-plan."
metadata:
  version: 2.0.0
---

# Contexte product marketing

> **Style français (impératif).** Pour tout texte destiné à un lectorat francophone : pense en français, ne traduis pas l'anglais. Bannis les calques (« C'est simple. », « N'hésitez pas à… ») et les tics d'IA (Découvrez, Boostez, Optimisez, Incontournable, En un clin d'œil). Typographie : espace insécable avant `: ; ! ?` et dans « … » ; apostrophe ’ ; titres en casse de phrase ; jamais de tiret cadratin `—` dans le corps (→ `,` `:` `.` ou parenthèses) ; nombres à la française (`29 €`, `80 %`, `12 000`, `24 h`). Vérifie les accords (genre, nombre, participes) ; choisis le tutoiement ou le vouvoiement et tiens-t'y ; relis à voix haute pour éliminer toute tournure « qui sonne traduite ». Détail complet dans `french-copy.md`, fourni avec ce skill.

Tu aides les utilisateurs à créer et maintenir un document de contexte product marketing. Ce document centralise les informations fondamentales sur le positionnement et le messaging, que les autres skills marketing consultent automatiquement, ce qui évite de tout répéter à chaque fois.

Le document est enregistré dans `.agents/product-marketing.md`.

## Déroulé

### Étape 1 : vérifier si un contexte existe déjà

Commence par vérifier si `.agents/product-marketing.md` existe. Vérifie aussi `.claude/product-marketing.md` et l'ancien nom `product-marketing-context.md` (dans `.agents/` ou `.claude/`) pour les configurations plus anciennes. Si le fichier est trouvé ailleurs que dans `.agents/product-marketing.md`, propose de le déplacer à l'emplacement canonique.

**S'il existe :**
- Lis-le et résume ce qui y est capturé
- Demande quelles sections mettre à jour
- Collecte uniquement les informations pour ces sections

**S'il n'existe pas, propose deux options :**

1. **Brouillon automatique depuis le dépôt** (recommandé) : tu analyses le dépôt (README, pages d'accueil, contenus marketing, package.json, etc.) et tu rédiges une V1 du document. L'utilisateur relit, corrige et comble les lacunes. C'est bien plus rapide que de partir de zéro.

2. **Partir de zéro** : tu guides la conversation section par section, en posant les questions une à une.

La plupart des utilisateurs préfèrent l'option 1. Après avoir présenté le brouillon, demande : « Qu'est-ce qui doit être corrigé ? Qu'est-ce qui manque ? »

### Étape 2 : collecter les informations

**En mode brouillon automatique :**
1. Lis le dépôt : README, pages d'accueil, contenus marketing, pages « À propos », méta-descriptions, package.json, toute documentation existante
2. Rédige toutes les sections à partir de ce que tu trouves
3. Présente le brouillon et demande ce qui doit être corrigé ou est manquant
4. Itère jusqu'à ce que l'utilisateur soit satisfait

**En mode départ de zéro :**
Guide la conversation section par section, une à la fois. Ne pose pas toutes les questions d'un coup.

Pour chaque section :
1. Explique brièvement ce que tu cherches à capturer
2. Pose les questions pertinentes
3. Confirme la précision
4. Passe à la suivante

Pousse pour obtenir le langage exact des clients, mot pour mot. Les formulations verbatim valent bien plus que des descriptions polies, car elles reflètent vraiment la façon dont les clients pensent et parlent, ce qui rend la copy bien plus juste.

---

## Sections à capturer

### 1. Présentation du produit
- Description en une ligne
- Ce que ça fait (2-3 phrases)
- Catégorie du produit (sur quel « rayon » le produit se trouve, comment les clients le cherchent)
- Type de produit (SaaS, marketplace, e-commerce, service, etc.)
- Modèle économique et tarification

### 2. Audience cible
- Type de structure ciblée (secteur, taille, stade)
- Décideurs cibles (rôles, départements)
- Cas d'usage principal (le problème central résolu)
- Jobs to be done (2-3 choses pour lesquelles les clients « engagent » le produit)
- Cas d'usage et scénarios spécifiques

### 3. Personas (B2B uniquement)
Si plusieurs parties prenantes interviennent dans la décision d'achat, renseigner pour chacune :
- Utilisateur, Champion, Décideur, Acheteur financier, Influenceur technique
- Ce qui compte pour chacun, leur défi, et la valeur que le produit leur promet

### 4. Problèmes et points de friction
- Le défi central des clients avant de te découvrir
- Pourquoi les solutions actuelles ne suffisent pas
- Ce que ça leur coûte (temps, argent, opportunités)
- La tension émotionnelle (stress, peur, doute)

### 5. Paysage concurrentiel
- **Concurrents directs** : même solution, même problème (ex. : Notion vs Confluence)
- **Concurrents secondaires** : solution différente, même problème (ex. : Notion vs Google Docs)
- **Concurrents indirects** : approche concurrente (ex. : Notion vs Excel ou cahier papier)
- En quoi chacun déçoit les clients

### 6. Différenciation
- Différenciateurs clés (ce que les alternatives n'ont pas)
- Comment le produit résout le problème différemment
- Pourquoi c'est mieux (bénéfices)
- Pourquoi les clients te choisissent plutôt qu'une alternative

### 7. Objections et anti-personas
- Les 3 principales objections entendues en vente et comment y répondre
- Qui n'est PAS la bonne cible (anti-persona)

### 8. Dynamiques de changement
Les quatre forces du JTBD :
- **Pression** : quelles frustrations poussent les clients à quitter leur solution actuelle
- **Attraction** : qu'est-ce qui les attire vers le produit
- **Habitude** : ce qui les retient dans leur approche actuelle
- **Anxiété** : ce qui les inquiète à l'idée de changer

### 9. Langage client
- Comment les clients décrivent le problème (verbatim)
- Comment ils décrivent le produit (verbatim)
- Mots et expressions à utiliser
- Mots et expressions à éviter
- Glossaire des termes spécifiques au produit

### 10. Voix de la marque
- Ton (professionnel, décontracté, bienveillant, etc.)
- Style de communication (direct, conversationnel, technique)
- Personnalité de la marque (3-5 adjectifs)

### 11. Preuves et réassurance
- Indicateurs clés ou résultats à citer
- Clients notables ou logos
- Extraits de témoignages
- Thèmes de valeur principaux et preuves associées

### 12. Objectifs
- Objectif business principal
- Action de conversion clé (ce qu'on veut que les gens fassent)
- Métriques actuelles (si connues)

---

## Étape 3 : créer le document

Après avoir collecté les informations, crée `.agents/product-marketing.md` avec cette structure :

```markdown
# Contexte product marketing

*Dernière mise à jour : [date]*

## Présentation du produit
**En une ligne :**
**Ce que ça fait :**
**Catégorie :**
**Type de produit :**
**Modèle économique :**

## Audience cible
**Structures ciblées :**
**Décideurs :**
**Cas d'usage principal :**
**Jobs to be done :**
-
**Cas d'usage :**
-

## Personas
| Persona | Ce qui compte | Défi | Valeur promise |
|---------|--------------|------|----------------|
| | | | |

## Problèmes et points de friction
**Problème central :**
**Pourquoi les alternatives ne suffisent pas :**
-
**Ce que ça coûte :**
**Tension émotionnelle :**

## Paysage concurrentiel
**Direct :** [Concurrent] : limite parce que…
**Secondaire :** [Approche] : limite parce que…
**Indirect :** [Alternative] : limite parce que…

## Différenciation
**Différenciateurs clés :**
-
**Comment on le fait différemment :**
**Pourquoi c'est mieux :**
**Pourquoi les clients nous choisissent :**

## Objections
| Objection | Réponse |
|-----------|---------|
| | |

**Anti-persona :**

## Dynamiques de changement
**Pression :**
**Attraction :**
**Habitude :**
**Anxiété :**

## Langage client
**Comment ils décrivent le problème :**
- « [verbatim] »
**Comment ils nous décrivent :**
- « [verbatim] »
**Mots à utiliser :**
**Mots à éviter :**
**Glossaire :**
| Terme | Définition |
|-------|-----------|
| | |

## Voix de la marque
**Ton :**
**Style :**
**Personnalité :**

## Preuves et réassurance
**Indicateurs :**
**Clients :**
**Témoignages :**
> « [citation] » — [qui]
**Thèmes de valeur :**
| Thème | Preuve |
|-------|--------|
| | |

## Objectifs
**Objectif business :**
**Action de conversion :**
**Métriques actuelles :**
```

---

## Étape 4 : confirmer et enregistrer

- Montre le document complété
- Demande si des ajustements sont nécessaires
- Enregistre dans `.agents/product-marketing.md`
- Indique : « Les autres skills marketing utiliseront désormais ce contexte automatiquement. Lance `/product-marketing` à tout moment pour le mettre à jour. »

---

## Conseils

- **Sois précis** : demande « Quelle est la frustration n° 1 qui les amène à toi ? » plutôt que « Quel problème résolvent-ils ? »
- **Capture les mots exacts** : le langage client prime sur les descriptions polies
- **Demande des exemples** : « Tu peux me donner un exemple ? » débloque des réponses bien plus riches
- **Valide au fil de l'eau** : résume chaque section et confirme avant de passer à la suivante
- **Saute ce qui ne s'applique pas** : tous les produits n'ont pas besoin des 12 sections (ex. : les Personas pour un produit B2C)
