---
name: murmur-interface
description: Textes d’interface de Murmur, dans l’app Flutter et dans Mes Chantiers (le tableau de bord du site). À charger avant d’écrire ou de modifier un texte affiché à l’écran, bouton, libellé, titre d’écran, sous-titre, message d’erreur, état vide, confirmation, feuille d’accord, texte d’aide, infobulle, notification, note de version, et avant d’écrire les textes d’une maquette. Dit d’abord si le texte doit exister, puis comment l’écrire. Ne pas charger pour un article, un e-mail, une réponse de forum ou le contenu des étapes du catalogue, voir murmur-redaction.
---

# Textes d’interface de Murmur

Un écran de Murmur n’affiche que ce qui est légal ou ce qui sert à la personne qui fait ses travaux. Cette skill tient en une page parce qu’un libellé ne se règle pas avec les règles d’un article : pour tout texte de plus de trois phrases, charger `redaction-francaise`.

La forme de l’écran (pièces, ordre, maquette) relève de `murmur-design-system`, dans le dépôt Murmur.

## 1. Le texte doit-il exister ?

Poser ces questions avant d’écrire, dans l’ordre. Un « oui » suffit à ne rien écrire.

1. **Répète-t-il l’écran ?** Un sous-titre qui redit le titre, une phrase qui redit le bouton, une légende qui décrit ce que la liste montre déjà.
2. **Explique-t-il le fonctionnement de Murmur ?** « Murmur compte… », « Tu pourras… », « Cette liste réunit… ». La personne n’a pas à savoir comment c’est calculé pour s’en servir.
3. **Rassure-t-il ?** « Pas d’inquiétude », « tes chantiers, eux, sont gardés », « en toute sécurité ».
4. **Annonce-t-il la suite ?** « Tu vas maintenant… », « Encore une étape ».
5. **Justifie-t-il un choix de conception ?** Cela va dans le message de commit ou la note de maquette.

Quand un texte part, sa place part avec lui : aucune chaîne vide, aucun espacement orphelin.

Ce qui reste, et reste entier :

- le légal (conditions, accord, mention obligatoire) et la sécurité (électricité, plomb, amiante, produits) ;
- l’erreur, et ce que la personne peut faire ;
- un conseil technique qu’elle ne peut pas deviner, de préférence derrière un « i » plutôt qu’en encadré ;
- une information qui change sa décision : un prix, un délai de séchage, une quantité, une condition ;
- une phrase d’envie là où rien n’a encore commencé (accueil vide, entrée du catalogue). Le minimalisme vise l’aide, pas le ton.

**Ni verbeux ni sec.** Un écran qui demande quelque chose à la personne (créer un compte, donner un accord, supprimer) dit en une phrase ce qu’elle y gagne ou ce qu’elle perd. Retirer cette phrase rend l’écran sec ; en mettre trois, ou une liste d’avantages, le rend bavard. Florian a refusé les deux.

## 2. Écrire ce qui reste

- **Tutoiement**, partout dans l’app et dans Mes Chantiers. Jamais « vous », jamais « l’utilisateur ».
- **Qui parle.** « Murmur » ou « nous ». Jamais « Florian », jamais « je ».
- **Vocabulaire.** « chantier » (un), « travaux » (des), « fournitures », « liste de courses », « étape », « outil ». Jamais « ouvrage », « un travail », « projet » pour un chantier seul, ni un mot du code (« lot », « variante », « conditionnement », « session »).
- **Bouton.** Un verbe à l’infinitif qui dit ce qui se passe, deux ou trois mots : « Enregistrer », « Ajouter un outil », « Voir la liste ». Jamais « OK », « Valider » seul, « C’est parti », « Découvrir ». Le refus se dit sans culpabiliser : « Plus tard », « Annuler ».
- **Titre d’écran ou de feuille.** Un groupe nominal ou une question courte, sans point : « Quels travaux ? », « Enregistrer ton chantier ».
- **Statut.** Un mot fixe, toujours le même : « À démarrer », « En cours », « Terminé ».
- **Casse de phrase**, jamais de majuscule à chaque mot. Les capitales espacées sont un style d’étiquette de section, pas une saisie : écrire « Obligatoires », le style fait le reste.
- **Mot courant.** Celui qu’on dit au comptoir du magasin, pas celui de la fiche technique ni de l’équipe.
- **Une idée, une phrase**, et la même phrase partout où revient la même idée.

### Les formules fixes

| Situation | Texte |
|---|---|
| Un enregistrement échoue | « [La chose] n’a pas été [verbe du geste]. Vérifie ta connexion, puis réessaie. » Le verbe suit le geste : renommé, supprimé, ajouté, coché, mis à jour. Exemple : « Le chantier n’a pas été renommé. Vérifie ta connexion, puis réessaie. » |
| Avertissement de l’Assistant | « Murmur est une IA, elle peut se tromper. Avant d’agir, vérifie toujours les dosages, temps de séchage et les consignes de sécurité. » Ne pas le raccourcir. |

Une erreur ne s’excuse pas (« Oups », « Désolé »), ne blâme pas, ne montre pas de code technique, et ne dit pas ce qui n’est pas arrivé à ses autres données.

### Par type d’écran

- **État vide.** Ce qui manque en un titre, puis l’action qui le remplit en un bouton. Une phrase entre les deux seulement si le bouton ne se comprend pas seul.
- **Confirmation d’une suppression.** Le titre nomme ce qui est supprimé. Le corps dit ce qui disparaît avec, et que c’est définitif, en une ou deux phrases. Le bouton reprend le verbe : « Supprimer le chantier ».
- **Accord ou autorisation.** Ce que Murmur fait et pourquoi la personne y gagne, ce qui advient de ses données, où retirer l’accord. Trois phrases au plus, pas de liste.
- **Fonctions qui reposent sur une IA.** Ce sont des fonctions de Murmur : « Murmur analyse ta photo ». Le fournisseur se nomme une fois, comme un fait technique, là où le légal l’exige : « L’analyse repose sur l’IA d’Anthropic. » Jamais « ta photo est envoyée à Anthropic ».
- **Texte d’aide.** S’il passe le § 1, une phrase entière et courte. S’il sert à un petit nombre, il va derrière un « i ».
- **Montant.** Un seul montant par chose : chaque chantier a le sien, le projet a le sien. Deux montants voisins pour la même chose, qui diffèrent, demandent d’en retirer un, pas d’ajouter une phrase qui explique l’écart. Un montant ne s’arrondit pas d’un écran à l’autre.
- **Texte existant.** Sur une tâche de mise en page, les textes et les données fournis ne se réécrivent pas : on signale à part ce qu’on changerait. Un texte venu du catalogue garde son vouvoiement.

## 3. Typographie

Espace insécable avant `: ; ! ?` et dans les guillemets « ». Apostrophe ’. Points de suspension … en un caractère. Jamais de tiret cadratin : virgule, deux-points, ou point médian espacé ` · ` entre deux informations d’une même ligne. Nombres à la française : `2 178 €`, `3,5 m²`, `24 h`, « entre 2 et 4 heures ». Tous les accents, majuscules comprises (« À acheter », « Étape »).

## 4. Avant de livrer

Extraire les chaînes affichées, une par ligne, hors du code, puis vérifier :

1. Chaque chaîne passe les cinq questions du § 1. Compter les mots de l’écran avant et après : un écran repris qui en affiche plus doit pouvoir dire pourquoi.
2. Aucune phrase ne commence par « Murmur » suivi d’un verbe de fonctionnement, ni par « Tu pourras », « Ici, tu », « Cette page ».
3. Les formules fixes sont employées telles quelles.
4. Tutoiement partout, aucun « Florian », aucun mot du code.
5. Typographie du § 3, par recherche et non à l’œil.

Dans une maquette ou une planche, les notes autour des écrans suivent la même règle : une ligne par écran, qui dit ce qui est où. Ni historique, ni justification, ni « Nouveau : », ni « comme convenu ».

## 5. Corrections de Florian, pour mémoire

| Écrit par l’agent | Ce qu’il a fait | Règle |
|---|---|---|
| Sous une liste d’avantages du compte, « Sans compte, ton estimation reste 30 jours sur ce téléphone. » | supprimé, avec la liste et la coche | § 1, répète et rassure |
| La même feuille sans aucune phrase | « trop sèche » : une phrase sur ce que le compte permet revient | ni verbeux ni sec |
| Une phrase qui comparait la somme des chantiers au reste à acheter | supprimée, un seul montant gardé | un montant par chose |
| Note en tête d’un parcours de pièce, qui expliquait son périmètre | vidée | § 1, explique le fonctionnement |
| « le chiffrage d’un travail » | « d’un chantier » | vocabulaire |
| Feuille d’accord qui nommait « Florian » et parlait d’un envoi à Anthropic | « Murmur », fonction présentée comme celle de Murmur | qui parle, fonctions IA |
| Planches de maquettes avec contexte redit, « Nouveau : », « comme convenu » | « beaucoup de verbiage inutile » | § 4, notes de planche |
