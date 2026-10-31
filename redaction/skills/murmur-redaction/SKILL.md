---
name: murmur-redaction
description: "Règles rédactionnelles Murmur, à charger dès qu'on écrit ou modifie du TEXTE destiné à être lu par un humain ou stocké en base : strings Dart affichées, fichiers de contenu (app/assets/legal/*.md, articles), colonnes texte du catalogue (etapes.contenu_detaille, conseil, description, variantes, dtu_rules.justification, ouvrages.description, articles.contenu_md, variables.conseil), prompts LLM des edge functions, migrations SQL insérant du texte, commit messages, changelog, docs, et tout texte du site sous `web/` (articles MDX, composants, métadonnées). Contient l'interdiction absolue des em dashes, le tableau de remplacement et la grille de relecture anti-slop (idiomes à contresens, jargon interne, calques, formules d'affiche). À NE PAS charger pour du refactoring de code pur sans string affichée."
user-invocable: true
allowed-tools:
  - Read
  - Grep
  - Bash
---

# Rédaction Murmur

## Interdiction absolue des em dashes (`—`, U+2014)

Le caractère em dash (`—`) est **totalement proscrit** dans tout texte produit ou ajouté au projet MURMUR. C'est un marqueur stylistique perçu comme « IA-écrit » qui nuit à la crédibilité rédactionnelle. Aucune exception rhétorique n'est acceptée.

**Périmètre couvert (sans exception)** :
- Strings Dart affichées à l'utilisateur : widgets `Text`, labels, placeholders, tooltips, messages d'erreur, snackbars.
- Fichiers de contenu : `app/assets/legal/*.md`, articles éditoriaux, documents embarqués, seeds JSON.
- Colonnes texte de la base (tables catalogue) : `etapes.contenu_detaille`, `etapes.conseil`, `etapes.description`, `etapes.variantes`, `dtu_rules.justification`, `diagnostic_mapping.justification`, `ouvrages.description`, `variantes_materiaux.usage_conseille`, `articles.contenu_md`, `articles.titre`, `variables.conseil`, et toute autre colonne rédactionnelle.
- Prompts LLM des edge functions (`ask_mentor/persona.ts`, `ask_mentor/index.ts`, `diagnostic-photo/index.ts`, `resume-chantier/*`, tout futur prompt système ou user).
- Migrations SQL : aucun em dash dans les chaînes insérées (`INSERT`/`UPDATE`).
- Commit messages, PR descriptions, `docs/CHANGELOG.md`, documentation (`docs/**/*.md`), wikis (`wiki/`, `web/wiki/`).
- Site : `web/src/**` (articles MDX, composants, métadonnées), `web/docs/`, maquettes HTML.
- Commentaires Dart et TypeScript (par cohérence).

**Remplacements recommandés selon le contexte** :

| Usage | Remplacement |
|---|---|
| Incise encadrée de deux tirets cadratins | virgules : `X, Y, Z` |
| Tiret cadratin qui enchaîne deux phrases | point, ou deux-points si la seconde explique la première |
| Tiret cadratin entre un titre et un sous-titre d'interface | middot espacé ` · ` |
| Tiret cadratin entre le nom d'un élément de liste et sa définition | deux-points : `**Pilier X : nom**` |
| Placeholder « valeur absente » (`'—'` seul, ex. `formatCost`) | **exception autorisée** : c'est un glyphe typographique, pas de la rédaction |

## Ce que Murmur ajoute aux règles générales

Toutes les règles de langue (contenu, écriture parlée, calques, tics d'IA, typographie, relecture
en passes) sont dans `redaction-francaise`, et ne se recopient pas ici. Cette skill ne porte que
ce qui est propre à Murmur, et renvoie au § concerné.

Le site s'écrit par séries (plus de 70 articles, 52 fiches de glossaire, 13 outils). L'audit du
24 septembre 2026 (`docs/audits/site-ai-slop/` du monorepo) a montré que les tics d'IA classiques
y étaient absents, mais que les mêmes règles appliquées à l'identique d'une page à l'autre
formaient une signature (`redaction-francaise` § 5 bis), et le relevé du 29 septembre a trouvé
près de 90 phrases dans le dialecte des agents (§ 5 ter). D'où ces règles propres au projet :

- **La voix de Florian se lit sur ses corrections.** Avant d'écrire ou de relire un texte qui
  parle en son nom ou à sa place (forum, article, e-mail, vitrine), lire
  `references/corrections-florian.md` : ses retouches réelles, avant et après. Elles priment sur
  les règles générales quand les deux divergent, sauf faute d'orthographe ou de typographie.
- **Vocabulaire.** « chantier » au singulier, « travaux » au pluriel, jamais « un travail » ni
  « chaque travail » ; `ouvrage` reste dans le code et la base. « Compagnon de travaux » est la
  signature de la marque (décision du 24 septembre 2026).
- **Pas de vocabulaire d'application grand public.** « pensé pour », « accompagner », « pas à
  pas », « étape par étape », « en toute transparence », « embarquer », « sans stress » : dire le
  mécanisme (« Murmur calcule les quantités et le prix des matériaux »).
- **Aucun jargon d'outillage ni mot du code dans le texte affiché.** « pilier », « cluster »,
  « corpus », « pages satellites », « lot », « mentor », « conditionnement », « email », « & »
  restent dans les scripts et les plans.
- **Une promesse, une fois par page**, là où elle sert (« Quand il ne sait pas, il le dit »).
- **Microcopy de l'espace connecté.** Une seule formule d'échec : « [L'action] n'a pas été
  enregistrée. Vérifie ta connexion, puis réessaie. » Pas de réassurance « tes chantiers, eux, … », pas d'objet qui « part » ni d'adresse qui « s'abîme ».
- **Boutons et CTA.** Un bouton dit ce qu'il fait (« Chiffrer votre salle de bain »), jamais
  « Donnez vie à votre projet », ni « Téléchargez » tant que la bêta est sur invitation.
- **Les e-mails aussi.** Les modèles de `web/emails/` vivent hors de `src/`, donc hors du régime
  par défaut de `check:slop` : `npm run check:slop -- --libre <fichier>` les lit, comme tout plan,
  brouillon ou réponse de forum, avant tout envoi.

### Quotas du site et leur contrôle

Une seule table : les quotas de `redaction-francaise` § 5 bis et 5 ter tels que Murmur les
applique, avec le code que `npm run check:slop` affiche. Un quota se change ici et dans
`web/tools/check-slop.mts` dans le même commit, jamais dans un seul des deux.

| Motif | Quota par page | Code `check:slop` |
|---|---|---|
| Contraste binaire, « ce n'est pas X, c'est Y » | 1, jamais en ouverture, intertitre ni chute | `contraste` |
| Superlatif d'exclusivité, « le seul », « le vrai sujet » | 0 comme intensif ; le script en tolère 1 pour l'emploi factuel | `exclusivite` |
| Omniscience, « que personne ne lit » | 0 | `omniscience` |
| Nombre annoncé, « trois choses » | 1, recompté | `nombre` |
| Verbe de dramatisation, « se joue », « tranche » | 1 | `dramatisation` |
| Maxime ou balance de coûts | 0 | `maxime` |
| Méta-commentaire | 0 | `meta` |
| Annonce en « Voici », « Voilà » | 1 | `voici` |
| Réassurance en anaphore | 0 | `reassurance` |
| Chiffre à effet sans source | 0 | `chiffre-effet` |
| Intertitre en apposition | 0 | `apposition` |
| Vocabulaire d'application grand public | 0 | `lexique` |
| Jargon d'outillage | 0 | `jargon` |
| Mot du code dans le texte public | 0 | `vocabulaire-murmur` |
| « ouvrage » dans une phrase sur le produit | 0 | `ouvrage-produit` |
| « rendre » au sens de *returns* | 0 | `calque-code` |
| Calque de l'anglais sans emploi français légitime | 0 | `calque-anglais` |
| Chose qui juge, « la hauteur départage » | 1 | `verbe-juge` |
| Mise en relief, « c'est lui qui » | 1 | `mise-en-relief` |
| Tournures pronominales de méthode, « se fige », « se décide » | 3 | aucun, à la relecture |
| Phrase de 12 mots et plus reprise d'une autre page, intertitre cloné, ouverture sur un moule usé | 0 | contrôles entre pages |

`calque-anglais` n'est qu'un filet : la passe de calques de `redaction-francaise` § 6 bis porte
le jugement. Le crochet Stop du dépôt (`scripts/relecture_calques.py`) l'impose en fin de tour sur
le Mac, mais il ne tourne pas dans une séance cloud : là, la relecture en passes est une étape
écrite de la tâche, avec son compte rendu.

Le contrôle mécanique est `npm run check:slop` depuis `web/`, sur les fichiers modifiés :
`npm run check:slop -- <fichier> [<fichier>…]`. Il ne juge pas, il montre où relire.

**Vérification avant tout commit touchant du texte** :

```bash
grep -rn "—" app/lib/src app/assets supabase/migrations supabase/functions web/src \
  --include="*.dart" --include="*.md" --include="*.mdx" --include="*.sql" --include="*.ts" --include="*.tsx" \
  | grep -v "\.g\.dart" | grep -v "'—'" | grep -v "strip_em_dashes"
```

La commande doit ne rien retourner. En cas de contenu DB ajouté, vérifier également via MCP `execute_sql` :

```sql
SELECT COUNT(*) FROM etapes WHERE contenu_detaille::text LIKE '%' || chr(8212) || '%';
```

## Relecture obligatoire, en contexte neuf

Décidé par Florian le 2026-10-30, après deux articles publiés sans relecture alors que la skill la demandait : **aucun texte rédigé ne part sans avoir été relu par un sous-agent qui ne l'a pas écrit.** L'auteur ne voit plus ses propres notes ni ses ordres secs ; ses contrôles passent quand même. Cela vaut pour toutes les surfaces : article, page du site, e-mail, texte de l'app, réponse de forum, post, annonce.

**Qui relit.** Un sous-agent lancé par l'outil Agent (`general-purpose`), jamais un fork, qui hérite du contexte de l'auteur. Sa consigne nomme le fichier (le chemin, ou le slug d'un article) et dit « relecture ».

**Ce qu'il reçoit, et rien d'autre.** Le texte seul ; `redaction-francaise` (SKILL.md en entier) ; cette skill, pour la table des surfaces et les quotas ; `references/corrections-florian.md` ; pour un article, `voix-murmur.md` de `murmur-blog` ; pour les forums, la page mémoire `style-florian-forums`. Ni le brief, ni les sources, ni la conversation : il lit comme le lecteur.

**Ce qu'il cherche, passage par passage.** Les passes de `redaction-francaise` § 6 bis, avec la question de voix de la surface, puis cinq questions : où une phrase entière a-t-elle été réduite en notes ? quel avis est donné comme un ordre sec, ou sans la nuance qu'un artisan y mettrait ? quelle source nommée n'a rien à faire dans la phrase ? quel chiffre est là pour tenir une règle plutôt que pour aider à décider ? quelle phrase personne ne dirait à voix haute ? Il cherche aussi les calques (rétro-traduction, `references/calques.md`) et les tics (`references/tics-ia.md`).

**Ce qu'il rend.** La liste des phrases à reprendre, chacune avant puis après, avec la raison en quelques mots. L'auteur applique ce qui tient, relance `check:slop`, et met la liste au rapport de livraison, ou dit pourquoi il garde une phrase.

**Comment c'est imposé.** Dans le dépôt Murmur, le crochet `.claude/hooks/relecture_obligatoire.py` refuse un `git commit` qui ajoute au moins trois phrases françaises à un texte public sans un tel sous-agent dans la séance ; un libellé ou deux passent, le crochet Stop les relit. Hors du dépôt (Claude Doc des forums, e-mail, post), rien ne l'impose mécaniquement : la relecture se fait avant que le texte passe « À relire », et le message à Florian dit qu'elle a eu lieu et ce qu'elle a changé. Un texte livré sans cette ligne n'est pas livré.

## Relecture anti-slop, obligatoire avant de livrer

Les greps attrapent des mots. Ils ne voient ni une expression employée à contresens, ni un slogan creux, ni une phrase que personne ne dirait. Ces défauts ont passé une première livraison du site (septembre 2026) alors que les règles de rédaction étaient chargées : c'est cette section qui les arrête.

### Méthode : relire le texte seul, hors du code

Dans du HTML, du TSX ou du Dart, les phrases sont noyées dans les balises et on relit la mise en page, pas la langue. Avant de livrer, extraire toutes les chaînes affichées et les relire une par une, dans l'ordre de la page.

```bash
# HTML ou maquette : une chaîne affichée par ligne, sans balises ni SVG
python3 - "$F" <<'PY'
import re, html, sys
s = open(sys.argv[1]).read()
s = re.sub(r'<(style|script|svg|helmet)\b.*?</\1>', '', s, flags=re.S)
for p in re.split(r'<[^>]+>', s):
    p = html.unescape(p).strip()
    if len(p) > 2: print(p)
PY
```

Pour chaque ligne, se poser les questions qui suivent. Une seule réponse « oui » suffit à réécrire la phrase. Lancer aussi les contrôles automatiques de la skill `redaction-francaise` sur le texte extrait, jamais sur le fichier brut.

### L'expression toute faite est-elle prise dans son vrai sens ?

Toute locution figée se vérifie avant d'être gardée. Le sens figuré l'emporte toujours sur le sens littéral chez le lecteur.

| Écrit | Ce que ça veut dire vraiment | À écrire |
|---|---|---|
| au pied du mur | acculé, sans échappatoire | sur le chantier, pendant les travaux |
| poser à plat | rien (l'expression est « mettre à plat ») | mettre à plat, ou dire l'action |
| votre chantier sous les yeux | on ne sait pas qui regarde | il connaît votre chantier |
| les fournitures tombent | argot de tableur | Murmur affiche les matériaux et le total |

En cas de doute sur une locution, la remplacer par le mot simple. Une image ratée coûte plus qu'une phrase plate.

### Le mot vient-il de l'équipe plutôt que du lecteur ?

Le vocabulaire des specs, des audits et du code ne va pas dans la copy. Mots vus dans une maquette et à traduire :

| Jargon interne | Mot du lecteur |
|---|---|
| en vedette, libellé, vue, groupe | le montant affiché, rangé par… |
| conditionnements du magasin | en boîtes et en sacs, comme en magasin |
| le fil du chantier | les étapes suivantes |
| ouvrage | chantier, travaux (règle projet) |
| le panier (sur la vitrine) | ce qu'il reste à acheter |

Test : un primo-accédant qui n'a jamais ouvert l'app comprend-il le mot sans explication ? Sinon, le changer.

### Est-ce un calque ou une marque ?

- `table` pour un tableau de données : écrire **tableau**.
- `caddie` est une marque : écrire **chariot**.
- `scotch` passe dans un conseil de geste (usage courant), pas dans un titre.
- Tout mot qui sonne comme une traduction littérale de l'anglais (`dashboard`, `feature`, `workflow`, `en un clic`) se remplace.

### Est-ce une formule d'affiche ?

Ces patrons ont l'air travaillés et ne disent rien. Ils sont interdits en titre comme en corps :

- **Chiasme ou reprise en miroir** : « Un compte, deux écrans » suivi de « Deux écrans, un seul chantier ».
- **« X, et Y est là »** : « Trois lettres, et le chantier est là. »
- **Paire symétrique** : « Le caddie d'une main, le téléphone de l'autre. »
- **Antithèse rythmée** : « Assis, vous chiffrez… Debout, vous cochez… »
- **Titre qui promet sans dire** : « Chaque écran fait ce qu'il fait le mieux », « Ce que le grand écran change », « Fait pour le clavier, la souris et le papier ».
- **« …, et vous »** en fin de titre : « L'app, Mes chantiers, et vous. »
- **Fragment de chute** : « Sans quitter le clavier. » posé seul après une phrase complète.
- **Chose qui agit** : « l'étape où vous vous êtes arrêté vous attend ». Écrire qui fait l'action : « Murmur garde l'étape ».

Remède unique : dire le fait. « L'ordinateur pour préparer, le téléphone pour le magasin et les travaux. » « Tapez ⌘K puis « carrel » : le chantier, l'article et le calculateur s'affichent. »

### Les faits annoncés tiennent-ils ?

- **Compter ce qu'on énumère.** « Quatre questions » suivies de trois réponses est une faute visible.
- **Mêmes chiffres d'un bloc à l'autre.** Un montant cité dans le texte doit être celui de la capture ou de la maquette voisine.
- **Pas de fonctionnalité au présent si elle n'est pas livrée.** Sinon badge « En alpha » ou « À l'étude » (voir `web/PRODUCT.md`).

### Le registre est-il le bon pour cette surface ?

Chaque surface a son registre et son degré de parlé (`redaction-francaise` § 1 bis). Les
corrections de Florian viennent pour l'instant des forums : leur fond (phrases entières, mot
courant, avis nuancé) vaut partout où l'on écrit des phrases, leur ton familier seulement sur les
forums.

| Surface | Registre | Degré de parlé |
|---|---|---|
| Réponses de forum | « je » de Florian, vouvoiement (tutoiement sur r/bricolage), « Bonjour, » puis signature « Florian » | parlé : sa voix familière, « N'hésitez pas », « clairement », une exclamation ; voir `references/corrections-florian.md` |
| Blog | vouvoiement, voix éditoriale sans « je » ni « nous », même pour un avis ; « je » seulement dans les articles signés (décision du 2026-10-30) | écrit soigné : un artisan qui explique dans un guide, pas un ami au téléphone. Phrases entières, avis nuancé (« en général », « mieux vaut »), mot courant, mise en garde en clair ; ni « c'est pas », ni « clairement », ni « du coup », ni exclamation |
| Vitrine (`web/`, pages produit) | vouvoiement, « je » de Florian, jamais « nous » ni « notre » hors textes légaux | écrit sobre, phrases courtes, le mécanisme plutôt que la promesse |
| Articles signés, pages d'auteur, légende de formulaire bêta | « je » de Florian, avec ses propres mots quand ils existent déjà dans `home-copy.ts` | écrit personnel, proche de sa voix sans ses familiarités |
| App : boutons, libellés, titres d'écran, messages d'erreur | tutoiement | interface : bref, verbe d'action, mot courant, aucune nuance ni phrase narrative ; un libellé n'est pas une phrase en notes |
| Espace connecté Mes chantiers (tableau de bord du site) | tutoiement | interface, comme l'app ; les textes d'aide (état vide, explication d'un total) en phrases entières courtes |
| Catalogue (contenu des étapes) | vouvoiement, écart connu et accepté (décision du 2026-09-29) | écrit de méthode : impératif sur le geste, phrases entières, sans familiarité |

Quand une phrase de Florian existe déjà sur le site pour le même usage, la reprendre plutôt que la réécrire.

### Florian le dirait-il à voix haute ?

Relire d'abord `references/corrections-florian.md`. Puis lire la phrase comme si Florian l'expliquait à un ami qui refait sa salle de bain. Si personne ne parle ainsi (« Aucune ressaisie entre les deux », « Vos retours passent en correctif »), réécrire avec les mots de la conversation.

### Reste-t-il une phrase qui marcherait pour n'importe quelle app ?

Test de substitution de `redaction-francaise` §1 : remplacer « Murmur » par un concurrent. Si la phrase reste vraie, elle ne dit rien. La réécrire avec un chiffre, un geste, un matériau ou une étape nommée.

### Compte rendu de relecture

En livrant, lister les phrases réécrites pendant la relecture, groupées par type (idiome, jargon, calque, formule d'affiche, fait incohérent). Une relecture qui ne trouve rien sur plus de vingt chaînes est suspecte : la refaire.

