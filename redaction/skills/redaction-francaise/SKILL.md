---
name: redaction-francaise
description: Règles de rédaction française irréprochable, à charger dès qu'on produit du contenu destiné à être lu en français, copy de page, e-mail, annonce, post social, microcopy, titre, CTA, script, documentation, article. Couvre ce qu'un texte doit contenir (fait vérifiable, mécanisme, lecteur adressé), la typographie française (insécables, guillemets, apostrophes, pas de tiret cadratin, nombres), les calques de l'anglais à bannir, les tics d'IA, les structures qui trahissent une génération automatique, les accords et le registre tu/vous. Prime sur les exemples anglophones des skills de rédaction. Ne pas charger pour du code sans texte affiché.
user-invocable: true
allowed-tools:
  - Read
  - Grep
  - Bash
---

# Français irréprochable

S'applique **dès que tu produis du contenu destiné à être lu en français** : copy de page, e-mail,
annonce, post social, microcopy, titre, CTA, script, article, etc. Ces règles **priment sur les
exemples et règles de style anglophones** des skills (copywriting, copy-editing, emails,
ad-creative, social…), qui sont calqués sur l'anglais.

**Principe fondateur :** un bon texte français n'est *jamais* une traduction de l'anglais. Il a son
propre rythme, sa propre typographie, ses propres tournures. Vise un rendu de rédacteur français
professionnel, pas un rendu « traduit ».

Les sections 5 et 6 sont adaptées de `stop-slop` (Hardik Pandya, MIT), transposées au français.

## 1. Ce que le texte doit contenir

Les sections 2 à 5 disent quoi retirer. Celle-ci dit quoi mettre, et elle passe en premier.
Un texte qui se contente d'éviter les formules interdites devient lisse, sans faute et creux :
c'est le défaut le plus facile à produire et le plus difficile à voir, parce qu'aucune ligne
n'accroche l'œil. **Retirer une formule creuse sans la remplacer par un fait ne corrige rien.**

**Un fait vérifiable par paragraphe.** Chiffre, unité, montant, date, norme, nom propre, geste
précis, étape nommée. Un paragraphe qui n'en porte aucun décrit du vide : il occupe la place
d'une information sans en apporter. Le contrôle est mécanique (§7), le remède ne l'est pas.
Il faut aller chercher le fait, pas reformuler la phrase autour du trou.

**Le test de substitution.** Si la phrase reste vraie en remplaçant ton sujet par n'importe
quel concurrent, produit ou métier, elle ne dit rien. « Une solution pensée pour vous faire
gagner du temps » passe le test partout, donc ne signifie rien nulle part. Réécris jusqu'à ce
que la phrase ne puisse décrire que *cette* chose-là.

**Un mécanisme, pas une valeur.** Décris ce qui se passe, pas ce que le lecteur est censé en
retirer. « Bloque la commande tant que le relevé n'est pas saisi » se vérifie. « Simplifie
votre gestion » ne se vérifie pas. La valeur, le lecteur la déduit ; le mécanisme, lui seul
peut le lui apprendre.

**Le lecteur dans la pièce.** Adresse-le directement plutôt que de le décrire à distance.
« Beaucoup d'utilisateurs se retrouvent démunis face à… » le range dans une statistique.
« Vous ouvrez le devis et le montant a doublé » le met devant la chose. `vous` (ou `tu`) bat
`on`, `l'utilisateur`, `le client`, `chacun`.

**Le test de sortie.** À la dernière ligne, le lecteur doit savoir quoi faire, quoi choisir ou
quoi vérifier. S'il sait seulement que « c'est important » ou que « ça compte de plus en plus »,
le texte a échoué, quelle que soit sa tenue.

**Le mot du lecteur d'abord, le terme technique ensuite.** Employer son vocabulaire, puis lui
donner le terme exact une fois, en gras, et le réutiliser nu ensuite. Jamais l'inverse, jamais
un acronyme supposé connu.

**Ouvrir sur une scène, pas sur une catégorie.** La première phrase montre une situation
identifiable, pas le domaine dont on va parler. « Le devis arrive à 4 200 € pour une pièce de
9 m² » ouvre ; « La rénovation est un sujet complexe » n'ouvre rien.

**La réserve écrite en clair.** Ce qu'on ne sait pas, ce qui ne marche pas, la limite du
conseil : ça se dit en pleine phrase, pas en note de bas de page. Un chiffre non sourcé porte
sa réserve dans le corps du texte (« ce n'est pas une moyenne mesurée, c'est un ordre de
grandeur »). L'honnêteté est un trait de style, pas une mention légale.

### Lexique de substitution

Un verbe concret vaut mieux qu'une périphrase administrative.

| À écrire | Pas |
|---|---|
| comptez, prévoyez, visez | il faut prévoir, il convient de prévoir |
| poser, tirer, couler, régler, brancher | procéder à l'installation de, effectuer la mise en place |
| vous | l'utilisateur, le client final, chacun, on |
| ça fuit, ça se fissure | présente un défaut d'étanchéité, une altération structurelle |
| coûte 29 € par mois | à partir de tarifs attractifs |
| en trois étapes, en deux jours | rapidement, en un rien de temps |
| parce que, donc, sinon | dans le but de, afin de, dans une optique de |

## 2. Penser en français, pas traduire l'anglais

- **Bannir les calques structurels** : « Vous voulez X ? Nous avons Y. », « C'est simple. »,
  « En quelques clics. », « N'hésitez pas à… », « Et si… ? », « Imaginez un monde où… ». Ces
  structures trahissent une traduction.
- **Proscrire les tics d'IA en français** : *Découvrez, Boostez, Optimisez, Dopez, Révolutionnaire,
  Incontournable, Ultime, En un clin d'œil, En toute simplicité, Que vous soyez… ou…*, ainsi que la
  répétition de *grâce à / permet de / afin de / au cœur de / véritable*.
- **Franglais** (*insights, workflow, game-changer, deal, must-have*) **uniquement** si l'audience
  l'emploie réellement dans la vraie vie. Sinon, mot français.
- Préférer le mot **concret et courant** au mot abstrait ou ronflant.

### Formules à supprimer, liste opérationnelle

Chaque suppression laisse un trou. Le combler avec un fait du §1, pas avec une autre formule.

**Ouvertures creuses.** *De nos jours · À l'heure où · Dans un monde où · Il est important de noter
que · Il convient de · Force est de constater · Comme vous le savez · Sachez que · Voici tout ce
qu'il faut savoir sur*

**Liants automatiques en tête de paragraphe.** *En effet · De plus · Par ailleurs · Ainsi ·
Néanmoins · Cependant · En outre · Toutefois*. Test : supprime le liant. Si la phrase tient debout,
il était décoratif. Un sur trois suffit.

**Superlatifs de remplissage.** *véritable · incontournable · essentiel · crucial · indispensable
(sauf obligation réelle) · un allié de taille · la clé réside dans · un jeu d'enfant · sans plus
attendre*

**Fermetures molles.** *En conclusion · Pour conclure · Vous l'aurez compris · N'hésitez pas à ·
En espérant que cet article · Il ne vous reste plus qu'à*

**Adverbes en -ment.** Traque-les et coupe-les : *particulièrement, réellement, véritablement,
notamment, simplement, facilement, rapidement*. Ils affaiblissent la phrase qu'ils prétendent
renforcer. Exception : les adverbes techniques qui portent une information
(*perpendiculairement, horizontalement, trimestriellement*).

## 3. Typographie française (non négociable)

- **Espace insécable** avant `: ; ! ?` et à l'intérieur des guillemets : « comme ceci ».
- **Guillemets français** « » (jamais `" "`). **Apostrophe typographique** ’ (jamais `'`).
  **Points de suspension** … en un seul caractère (jamais `...`).
- **Pas de *title case*** : les titres et boutons sont en **casse de phrase** (seule la 1re lettre et
  les noms propres prennent la majuscule). → « Commencez votre essai gratuit », pas « Commencez Votre
  Essai Gratuit ».
- **Jamais de tiret cadratin `—`** dans le corps du texte. Le remplacer par `,` `.`, `:` ou des
  parenthèses (sauf règle projet plus stricte : certains projets excluent aussi les parenthèses,
  auquel cas suivre le tableau de remplacement propre au projet).
- **Nombres et unités à la française** : virgule décimale (`3,5`), espace insécable pour les milliers
  (`12 000`), symbole après le nombre avec espace (`29 €`, `80 %`, `24 h`, `15 min`).
- **Fourchettes en toutes lettres** : `entre 2 et 4 heures`, pas `2-4h`.
- **Majuscules accentuées** : `À`, `É`, `Ç` en début de phrase ou de titre.
- **Listes à puces** : pas de majuscule initiale sauf si l'élément est une phrase complète.
  Ponctuation de fin homogène sur toute la liste.

## 4. Tournures, accords et rythme

- **Registre cohérent** : choisis tutoiement **ou** vouvoiement selon l'audience et le projet, puis
  tiens-t'y sur **tout** le texte. En l'absence de consigne, aligne-toi sur l'existant du projet ou
  demande. Ne tranche pas au hasard et n'alterne jamais.
- **Accords vérifiés systématiquement** : genre, nombre, participes passés (avec *avoir* / *être*),
  accord de l'adjectif, *leur/leurs*, *quel(le)(s)*, *tout/tous/toute(s)*.
- **Rythme français** : le staccato qui marche en anglais (« Fast. Simple. Done. ») tombe à plat en
  français. Varie la longueur des phrases ; laisse-les respirer.
- **CTA** = verbe d'action naturel en français (« Créer mon compte », « Demander une démo », « Voir
  les tarifs »), **pas** un calque de l'anglais ni une rafale de `!!`.
- **Ponctuation sobre** : pas de points d'exclamation en série ; l'emphase passe par le mot juste,
  pas par la typographie.
- **Liaisons naturelles** : varie les connecteurs (« mais, pourtant, du coup, en clair,
  c'est-à-dire ») au lieu de calquer « however / moreover / in order to ».

## 5. Structures à casser

Ces tournures ne sont ni des anglicismes ni des fautes. Ce sont les patrons de phrase que la
génération automatique produit par défaut, et que le lecteur reconnaît sans savoir les nommer.

- **Le contraste binaire.** « Ce n'est pas X, c'est Y. » « Non pas X, mais Y. » Écris Y directement.
- **La triade systématique.** « rapide, simple et efficace ». Deux éléments valent mieux que trois,
  et un exemple concret vaut mieux que deux adjectifs.
- **La question rhétorique en chaîne.** Une question en intertitre est utile. Trois questions
  d'affilée dans un paragraphe sont une posture.
- **La fragmentation dramatique.** Phrase courte. Très courte. Pour l'effet. Deux ruptures par texte,
  pas davantage.
- **L'inanimé qui agit.** « Le budget explose », « la méthode s'impose », « la plainte devient un
  correctif ». Nomme qui fait l'action.
- **La voix passive.** « La résine doit être appliquée sur… » devient « Appliquez la résine sur… ».
  Sur un texte de méthode, l'impératif est la forme naturelle.
- **Le méta-commentaire.** « Dans cet article, nous allons voir », « Passons maintenant à »,
  « Comme nous l'avons vu plus haut ». Supprime, et laisse le texte avancer.
- **La déclaration vague.** « Les conséquences sont importantes. » Nomme la conséquence :
  « La cloison se gorge d'eau et le placo se délite en six mois. »
- **La phrase à encadrer.** Si un passage ressemble à une accroche LinkedIn ou à une citation
  d'affiche, réécris-le.
- **Le catalogue froid.** Un comparatif, une liste d'options ou un tableau qui se termine sans
  recommandation laisse au lecteur le travail qu'il était venu déléguer. Tranche.

## 6. Grille de contrôle avant de livrer

Relis le texte à voix haute et vérifie, point par point :

1. **Aucun paragraphe sans fait vérifiable** (§1). C'est le premier point parce que c'est celui
   qu'on saute.
2. Aucune phrase ne survit au test de substitution : rien qui reste vrai pour n'importe quel
   concurrent.
3. Aucune phrase ne « sonne traduite ». Sinon, réécris-la.
4. **Tous les accents et diacritiques** sont présents (jamais d'ASCII à la place : « é » pas « e »,
   « à » pas « a »).
5. **Accords** corrects (relire spécifiquement les participes passés et adjectifs).
6. **Typographie** : espaces insécables, guillemets « », apostrophes ’, pas de tiret cadratin,
   nombres à la française.
7. **Registre** tu/vous homogène d'un bout à l'autre.
8. Aucun tic d'IA ni anglicisme injustifié des listes §2.
9. Aucune structure du §5 laissée en place.

Puis note le texte de 1 à 10 sur chaque dimension :

| Dimension | Question |
|---|---|
| Concret | Chaque paragraphe apporte-t-il un fait, un geste ou une décision ? |
| Rythme | Les longueurs de phrase varient-elles, ou est-ce métronomique ? |
| Confiance | Le texte respecte-t-il l'intelligence du lecteur, sans surexpliquer ? |
| Authenticité | Un professionnel du sujet aurait-il pu l'écrire ainsi ? |
| Densité | Reste-t-il une phrase supprimable sans perte ? |

**Sous 40 sur 50, révise. Sous 30, réécris la section fautive plutôt que de la rapiécer.**

Un texte qui note 10 partout sauf en Concret n'est pas un bon texte à corriger : c'est un texte
vide bien habillé. Reprends-le par le §1, pas par la typographie.

## 7. Contrôles automatiques

À lancer sur le fichier avant livraison. Ils ne jugent pas, ils montrent où regarder.

```bash
F=texte.md

# Paragraphes sans aucun chiffre, à relire un par un : candidats au vide
awk 'BEGIN{RS=""} !/[0-9]/ {print NR": "substr($0,1,90)"..."}' "$F"

# Verbes vides et promesses non vérifiables
grep -nEi "permet de|vous fait gagner|simplifie|facilite|optimise|améliore|au service de|pensé pour|conçu pour" "$F"

# Tiret cadratin, doit renvoyer 0
grep -c "—" "$F"

# Formules et tics interdits
grep -nEi "de nos jours|à l'heure où|dans un monde où|il est important de noter|il convient de|force est de constater|n'hésitez pas|vous l'aurez compris|en conclusion|pour conclure|incontournable|un allié de taille|la clé réside|en un clin d'œil|en toute simplicité|que vous soyez|boostez|dopez|révolutionnaire" "$F"

# Adverbes en -ment, par fréquence
grep -oE "[a-zà-ÿ]+ment\b" "$F" | sort | uniq -c | sort -rn | head

# Apostrophes droites et guillemets anglais
grep -cE "'|\"" "$F"

# Ponctuation double sans espace insécable devant
grep -nE "[^  ][:;!?]" "$F" | grep -v http

# Points de suspension en trois points
grep -n "\.\.\." "$F"
```

Trois occurrences de *notamment* dans 1 200 mots signalent une phrase à réécrire, pas une faute.
Un paragraphe remonté par le premier contrôle n'est pas une faute non plus : c'est une question,
« qu'est-ce que ce paragraphe apprend ? ». S'il n'y a pas de réponse, il se supprime.

---

Base `stop-slop` : MIT.
