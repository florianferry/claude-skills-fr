---
name: commit-push
description: "Utiliser quand l'utilisateur demande de committer tous les changements, avec ou sans push (« commit et push tout », « commit push », « pousse tout », « commit et push », « commit »). Le push n'a lieu que si la demande le dit explicitement : « commit » seul committe et s'arrête."
disable-model-invocation: false
---

# Commit & Push

Committer les changements du dépôt courant en **plusieurs commits cohérents** (un par fonctionnalité ou regroupement pertinent), puis, si la demande le dit, pousser en une passe, sans se faire piéger par les accents.

## Règle critique (accents) : jamais `git commit -m`

Le harness double-encode l'UTF-8 passé en argument shell : `git commit -m "…dépassent…"` stocke du mojibake (`Ã©` au lieu de `é`) et fait perdre du temps en contournements (strip d'accents, globs). Donc **toujours**, sans exception, pour **chaque** commit :

1. Rédiger le message complet (titre + corps) avec l'outil **Write** dans un fichier temporaire, par ex. `/tmp/commit-msg.txt` (Write produit de l'UTF-8 propre). Réécrire ce fichier à chaque groupe.
2. `git commit -F /tmp/commit-msg.txt`

Ne jamais passer d'accents via `-m`. Ne pas rediagnostiquer l'encodage à chaque fois : appliquer directement `-F` dès le premier essai.

## Découper avant de committer (le cœur)

Un seul commit fourre-tout est proscrit dès qu'il y a plusieurs préoccupations distinctes. Chaque commit doit être une unité cohérente, réversible seule, avec son propre message.

0. **Vérifier que l'index est vide** : `git diff --cached --name-only`. S'il liste des fichiers, ne rien désindexer (ni `git reset`, ni `git restore --staged`) : ce contenu appartient peut-être à une autre séance. S'arrêter et le signaler, avec la liste des fichiers indexés.
1. **Comprendre tout ce qui a changé** : `git status --short` puis `git diff --stat` (et le diff détaillé au besoin pour composer des messages honnêtes qui reflètent les changements réels). L'utilisateur code souvent en parallèle : le worktree peut bouger entre deux commandes. Ne stager que les chemins explicitement nommés, jamais `-A`.
2. **Regrouper les fichiers par préoccupation** :
   - par périmètre/scope (dashboard, auth, edge, catalogue, docs…) ou par type (feat / fix / docs / refactor / chore) ;
   - un fichier neuf et le fichier qui l'utilise vont dans le même commit ;
   - ne jamais éclater un même changement logique sur plusieurs commits ;
   - ne pas réunir deux préoccupations sans lien dans un même commit ;
   - si tout relève d'une seule préoccupation, un seul commit est correct : ne pas sur-découper.
3. **Ordonner les commits par dépendance logique** : backend/edge avant client, socle avant surface.
4. **Annoncer le découpage prévu** en un bloc compact (par groupe : type(scope) du message → fichiers), puis enchaîner directement sans attendre de validation.

## Déroulé (par groupe, puis push unique)

Pour chaque groupe, dans l'ordre décidé :

1. `git add -- <fichiers du groupe>` (staging explicite ; couvre neufs, modifiés, supprimés). Jamais `git add -A` global tant qu'il reste plusieurs groupes.
2. `git diff --cached --stat` pour vérifier que seul le groupe visé est indexé.
3. Rédiger le message avec **Write** dans `/tmp/commit-msg.txt`, puis `git commit -F /tmp/commit-msg.txt`.

Quand tous les groupes sont committés :

4. **Pousser seulement sur demande explicite** (« push », « pousse », « commit et push » ou équivalent). Alors, sur la branche courante en une fois : `git push`. Si aucun upstream : `git push -u origin HEAD`. Sans cette demande, ne pas pousser et s'arrêter là : « commit » seul ne vaut pas accord pour pousser, souvent sur `master`.
5. Confirmer : la liste des hashes courts (un par commit, avec son résumé) + le nom de la branche poussée, ou, sans push, ce qui reste à pousser (`git log --oneline @{u}..`, ou l'absence d'upstream).

Ne jamais changer de branche ni en créer une : committer, et pousser si c'est demandé, là où on est (l'utilisateur travaille directement sur sa branche courante).

## Format du message (pour chaque commit)

- Conventional Commits en français : `type(scope): résumé` (ex. `feat(dashboard): …`, `fix(auth): …`, `docs: …`, `refactor: …`).
- Résumé à l'impératif, minuscule, sans point final.
- Corps optionnel en puces si le commit regroupe plusieurs changements distincts.
- **Accents obligatoires**. **Jamais de tiret cadratin** (caractère U+2014) : le remplacer par `,`, `:` ou `.`.

## Pièges (STOP)

- `git add -A` global suivi d'un seul commit : proscrit dès qu'il y a plusieurs préoccupations. Stager groupe par groupe avec `git add -- <fichiers>`.
- Réflexe `git commit -m "…accents…"` : interdit, produit du mojibake. Passer par Write + `-F`, pour chaque commit.
- Deux préoccupations coincées dans un même fichier : pas de staging à la ligne, garder le fichier dans un seul commit et le mentionner dans le corps.
- Fichier en conflit (`UU`) ou WIP parallèle apparu en cours de route (nouveau fichier, fichier modifié entre deux `status`) : ne pas le stager, le laisser à l'utilisateur, le signaler dans le rapport final.
- Index déjà stagé au départ : ne rien désindexer, s'arrêter et le signaler. Ce contenu appartient peut-être à une autre séance.
- `cd` vers un chemin accentué (`Développement`) : échoue de la même façon. Rester dans le répertoire courant (on y est déjà).
- Rien à committer : le dire et s'arrêter, ne rien forcer.
- Push refusé parce que la branche distante a avancé : `git pull --no-rebase`, puis un second push. Le pull passe même avec des modifications non commitées d'autres séances, tant qu'elles portent sur d'autres fichiers ; s'il refuse (conflit, fichier local qu'il écraserait), ou si le second push est refusé aussi, le signaler et s'arrêter. Jamais `--force`, jamais de rebase dans un arbre partagé.
