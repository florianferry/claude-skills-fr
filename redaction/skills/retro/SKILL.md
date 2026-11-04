---
name: retro
description: "Fait la rétrospective d’une séance de code et propose d’améliorer l’environnement de l’agent, de la piste la plus grave à la moins grave."
disable-model-invocation: true
---

L’utilisateur demande une **rétrospective**. Tu proposes des améliorations de l’**environnement** de l’agent, pour que les prochaines séances se passent mieux.

## Étapes

1. Lis les sources de la séance que l’utilisateur désigne. Sans précision, prends la séance en cours. Les journaux des séances Claude Code sont dans `~/.claude/projects/<dossier du projet>/<id de séance>.jsonl`.

2. Cherche des pistes d’amélioration dans ces catégories.

- **Navigation** : l’agent a-t-il trouvé facilement les bons fichiers ? Des fichiers dépendent-ils les uns des autres sans que rien ne le signale ? Un **renvoi** (une ligne qui dit où trouver quoi) aiderait-il ? _À regarder quand_ la séance a mis longtemps à trouver une information.
- **Contrôles automatiques** : un contrôle aurait-il attrapé une erreur de l’agent ? Lint, typage, tests, contrôle sur les fichiers ? Lis d’abord la commande de contrôle du dépôt (scripts `lint` ou `check` du `package.json` ou de l’outil de build, workflow de CI) : si un contrôle existe déjà mais n’est pas branché, ou s’il est cassé sans bruit, le constat porte sur lui, et il se répare au lieu de se réécrire. Un dépôt sans **garde-fou** (ni crochet de pré-commit ni job de CI qui lance lint, typage ou tests) est un constat en soi : chaque séance y perd une occasion d’attraper une erreur. _À regarder quand_ l’agent a commis une erreur qu’un contrôle aurait attrapée, ou que le dépôt n’a aucun garde-fou.
- **Règles de code** : faut-il donner une nouvelle règle à l’**agent de relecture** ? Retirer ou clarifier une règle existante ? Classe d’abord l’écart. Un écart **mécanique** (motif syntaxique fixe, API interdite, forme d’import, emplacement de fichier) appelle un contrôle déterministe, sans discussion : une règle dans le linter du dépôt, un nouveau crochet de pré-commit ou un nouveau job de CI, selon ce qui coûte le moins avec le langage et les garde-fous en place. Par défaut, construis le contrôle plutôt que d’écrire la règle. Garde le fichier de règles de relecture pour les vraies **questions de jugement** : cohérence entre fichiers, « suit le style du code voisin », tout ce qu’aucun garde-fou ne pourra remplacer. _À regarder quand_ l’agent de relecture a laissé passer une erreur.
- **CLAUDE.md et mémoire** : des consignes devraient-elles passer dans les règles de relecture ou dans des contrôles automatiques ? Une leçon gardée en mémoire qui décrit un écart mécanique devient un contrôle. _À regarder quand_ le `CLAUDE.md` ou la mémoire sont particulièrement longs, dans le dépôt OU au niveau de l’utilisateur.
- **Économie d’outils** : l’agent a-t-il fait des appels d’outils lents ou lourds qu’on pourrait alléger ? Un outil maison (CLI, MCP) renvoie-t-il beaucoup trop de texte ? _À regarder quand_ l’agent a fait un appel d’outil lourd.
- **Consignes sans effet** : cherche dans les fichiers de consignes les instructions qui ne changent rien au comportement de l’agent. _À regarder quand_ ces fichiers sont gros et difficiles à manier.
- **Accès à l’information** : cherche comment donner plus d’informations à l’agent, par exemple en recopiant les journaux du serveur de dev dans un fichier, ou par un accès en lecture seule à des services tiers. _À regarder quand_ une information cruciale manquait à l’agent.

3. Présente ces pistes à l’utilisateur, en français, de la plus grave à la moins grave.

## Référence

### Implémentation et relecture

Tout travail passe par deux étapes : l’implémentation et la relecture. L’agent d’implémentation subit la plus forte **pression de contexte** : il explore, écrit le code et corrige les échecs.

L’agent de relecture subit la plus faible : il reçoit un diff, n’a rien à explorer, et souvent rien à écrire ni à déboguer.

Confie donc les règles de code à l’agent de relecture.

### Fichiers

Plusieurs fichiers du dépôt sont à ta disposition :

- `CLAUDE.md` ou `AGENTS.md` : ils entrent dans le contexte de tout agent qui travaille dans le dépôt. À utiliser avec une extrême parcimonie, en général pour des **renvois** vers d’autres fichiers.
- La mémoire persistante, si le projet en a une (`MEMORY.md` et ses fichiers) : même règle, son index est chargé à chaque séance.
- Le fichier de règles de relecture (`CODING_STANDARDS.md` ou l’équivalent du dépôt) : lu à la relecture, pas à l’implémentation. Ajoute des renvois vers des dossiers de docs s’il dépasse 1 000 lignes.
- Les docs : des fichiers de référence, atteints par des renvois depuis d’autres fichiers. Cherche les docs existantes avant d’en écrire de nouvelles.
- Les skills : pour de la doc (leur description entre dans le contexte de l’agent) ou pour des commandes lancées par l’utilisateur.
