---
name: redaction-francaise
description: Règles de rédaction française irréprochable, à charger dès qu'on produit du contenu destiné à être lu en français, copy de page, e-mail, annonce, post social, réponse de forum, microcopy, titre, CTA, script, documentation, article. Couvre ce qu'un texte doit contenir (fait vérifiable, mécanisme, lecteur adressé), l'écriture parlée qui sonne humain (phrases entières, avis nuancé, mot courant), la typographie française (insécables, guillemets, apostrophes, pas de tiret cadratin, nombres), les calques de l'anglais à bannir, les tics d'IA, les structures qui trahissent une génération automatique, la relecture en passes, les accords et le registre tu/vous. Prime sur les exemples anglophones des skills de rédaction. Ne pas charger pour du code sans texte affiché.
user-invocable: true
allowed-tools:
  - Read
  - Grep
  - Bash
---

# Français irréprochable

S'applique **dès que tu produis du contenu destiné à être lu en français** : copy de page, e-mail,
annonce, post social, réponse de forum, microcopy, titre, CTA, script, article, etc. Ces règles
**priment sur les exemples et règles de style anglophones** des skills (copywriting, copy-editing,
emails, ad-creative, social…), qui sont calqués sur l'anglais. Une règle propre à un projet
(registre, vocabulaire, quotas) l'emporte sur celle-ci là où elle est plus précise.

**Principe fondateur :** un bon texte français n'est *jamais* une traduction de l'anglais, et il
ne se lit pas comme une suite de notes. Il a son propre rythme, sa propre typographie, ses propres
tournures, et il sonne comme quelqu'un qui parle à quelqu'un. Vise un rendu de rédacteur français
professionnel, pas un rendu « traduit » ni « généré ».

## Comment s'en servir

| Tu fais | Tu lis |
|---|---|
| Écrire | ce fichier en entier, avant la première phrase |
| Relire, réécrire, auditer | ce fichier, puis `references/calques.md` et `references/tics-ia.md` pendant les passes du § 6 bis |
| Remplacer un mot lourd ou administratif | `references/mots-simples.md` |
| Lancer les contrôles mécaniques | `scripts/controles.sh <fichier>` (§ 7), sauf si le projet a les siens |

Les sections 5 et 6 sont adaptées de `stop-slop` (Hardik Pandya, MIT), transposées au français.

## 1. Ce que le texte doit contenir

Les sections 2 à 5 disent quoi retirer. Celle-ci et la suivante disent quoi mettre, et elles
passent en premier. Un texte qui se contente d'éviter les formules interdites devient lisse, sans
faute et creux : c'est le défaut le plus facile à produire et le plus difficile à voir.
**Retirer une formule creuse sans la remplacer par un fait ne corrige rien.**

**Un fait vérifiable par section.** Chiffre, unité, montant, date, norme, nom propre, geste précis,
étape nommée. Une section qui n'en porte aucun décrit du vide : il faut aller chercher le fait, pas
reformuler autour du trou. Un paragraphe de liaison, d'avis ou de mise en garde peut s'en passer :
c'est lui qui fait respirer le texte. **Le fait plaqué** est l'excès inverse : un chiffre collé pour
tenir la règle, un calcul là où un ordre de grandeur suffit, un prix qui n'aide pas à décider.

**Le test de substitution.** Si la phrase reste vraie en remplaçant ton sujet par n'importe quel
concurrent, produit ou métier, elle ne dit rien. « Une solution pensée pour vous faire gagner du
temps » passe le test partout, donc ne signifie rien nulle part.

**Un mécanisme, pas une valeur.** Décris ce qui se passe, pas ce que le lecteur est censé en
retirer. « Envoie un rappel la veille du rendez-vous » se vérifie. « Simplifie votre gestion » ne
se vérifie pas.

**Le lecteur dans la pièce.** Adresse-le directement plutôt que de le décrire à distance.
« Beaucoup d'utilisateurs se retrouvent démunis face à… » le range dans une statistique. « Vous
ouvrez le devis et le montant a doublé » le met devant la chose. `vous` (ou `tu`) bat `on`,
`l'utilisateur`, `le client`, `chacun`.

**Le test de sortie.** À la dernière ligne, le lecteur sait quoi faire, quoi choisir ou quoi
vérifier. S'il sait seulement que « c'est important », le texte a échoué.

**Le mot du lecteur d'abord, le terme technique ensuite.** Employer son vocabulaire, puis lui
donner le terme exact une fois, en gras, et le réutiliser nu ensuite. Jamais un acronyme supposé
connu.

**Ouvrir sur une scène, pas sur une catégorie.** « Le devis arrive à 4 200 € pour une pièce de
9 m² » ouvre ; « La rénovation est un sujet complexe » n'ouvre rien.

**La réserve écrite en clair.** Ce qu'on ne sait pas, la limite du conseil : en pleine phrase, pas
en note. Un chiffre non sourcé porte sa réserve dans le corps (« c'est un ordre de grandeur, pas une
moyenne mesurée »). Ne jamais inventer un fait pour combler un trou : le demander, ou couper.

**Les sources en pied, pas en refrain.** Une source se nomme dans la phrase là où elle tranche un
désaccord ou là où le lecteur a besoin de son autorité. Ailleurs, elle va dans la liste des
sources. Trois fabricants ou trois études cités à la file font lire une compilation de notices.

## 1 bis. Écrire comme on parle, selon la surface

Ce qui fait sonner un texte « machine » n'est le plus souvent pas un tic : c'est la compression.
L'agent écrit en notes, affirme sans nuance, choisit le mot de la fiche technique, et coupe ce
qui relie les idées. Un humain qui explique quelque chose à quelqu'un fait l'inverse. Ces règles
viennent de corrections réelles, faites par un rédacteur sur des brouillons d'agent.

**Le degré de parlé dépend de la surface.** Les gestes ci-dessous valent partout où l'on écrit
des phrases ; leur dose, non. Fixer la surface avant d'écrire :

| Surface | Ce qui s'applique | Ce qui ne s'applique pas |
|---|---|---|
| Message, réponse de forum, e-mail personnel | tout, y compris le registre familier de l'auteur (« clairement », « du coup », une exclamation) | rien |
| Article, guide, page éditoriale | phrases entières, avis nuancé, mot courant, mise en garde en clair, paragraphes courts | familiarités (« c'est pas », « clairement », « du coup »), exclamations, « je » si la voix du projet l'exclut : un professionnel qui explique, pas un ami au téléphone |
| Interface : bouton, libellé, titre d'écran, message d'erreur, tableau de bord | mot courant, mécanisme exact, verbe d'action, aucune formule | phrases entières, nuances et mise en garde narrative : l'interface est brève par nature, un libellé n'est pas une phrase en notes |
| Texte d'aide dans l'interface (infobulle, état vide, explication d'un calcul) | phrases entières courtes, mot courant | nuances empilées, familiarités, exclamations |

Le projet précise ses surfaces et leur registre ; sa table prime sur celle-ci.


- **Des phrases entières, pas des notes.** L'article, le verbe, la fin de la phrase restent :
  « joints de 3 mm, croisillons obligatoires » devient « laissez des joints de 3 mm environ, avec
  des croisillons pour qu'ils restent réguliers » ; « eau qui stagne : drain » devient « si l'eau
  stagne au pied du mur, c'est plutôt un drain qu'il faudra prévoir ». Le style
  télégraphique (article omis, phrase nominale, deux-points à la place du verbe) est un défaut à
  part entière, même quand chaque mot est juste.
- **L'avis nuancé, comme le donne quelqu'un du métier.** « en général », « dans la plupart des
  cas », « le plus souvent », « ça tient sans souci », « je partirais plutôt sur » (si le registre
  du projet admet le « je »). Une seule nuance par affirmation,
  là où l'incertitude est réelle. L'impératif sec reste pour le geste précis et pour la sécurité ;
  ailleurs, un conseil se donne, il ne s'ordonne pas. Remplacer « X conseille de… » par un
  impératif nu ne retire pas la source, cela change le ton : préférer « le plus sûr est de… »,
  « on ajoute en général… ».
- **Le mot courant plutôt que le mot de la fiche.** « les plaques collées au mur » plutôt que « le
  doublage collé » pour un lecteur qui débute, « ce que l'artisan facture pour la pose » plutôt que
  « la ligne main-d'œuvre », « le joint risque de se fendre » plutôt que « le joint peut tirer ».
  Aucun mot d'emballage ni de catalogue (« peintable », « lessivable » dans une phrase), aucun mot
  forgé (« relessiver », « repréparer ») : « qui se peint », « lessivez de nouveau ».
- **Dire ce qui compte, en clair.** Annoncer le piège avant de le décrire (« Attention, avant de
  poncer : »), dire franchement qu'une idée est mauvaise (« franchement, mieux vaut éviter »), une
  exclamation quand elle porte une vraie mise en garde (une par texte au plus hors registre
  familier). Le lecteur doit savoir où est le piège sans le déduire. Cette annonce n'est pas un
  tic à couper : une mise en garde par texte est attendue, et la retirer parce qu'une phrase
  voisine « porte déjà » le risque rend le texte plus sec, pas meilleur.
- **Des paragraphes courts, une idée chacun.** Dans une réponse, un message ou un conseil, trois
  ou quatre paragraphes de deux ou trois phrases se lisent ; un bloc de six phrases qui enchaîne
  le diagnostic, deux solutions et une mise en garde se lit comme une notice. Couper au
  changement d'idée, pas au milieu d'une explication.
- **Les liants qui portent le sens restent.** « mais », « donc », « sinon », « par contre », « du coup », « puis » : la règle du § 2 ne vise que le liant décoratif en tête de paragraphe.
- **Ne pas montrer qu'on a fouillé.** Dans une réponse à quelqu'un, ne pas reprendre ce qu'on a lu
  de lui ailleurs (sa région, un détail de son profil) ni citer un autre participant sans raison.
  Couper le conseil en trop, celui qui n'était pas demandé.
- **Couper l'explication en chute.** « …, et c'est tout l'intérêt », « …, qui laisse le joint
  travailler », « …, c'est ce qui compte » : la phrase s'arrête sur le fait. Le lecteur n'a pas
  besoin qu'on lui redise pourquoi la solution marche quand la phrase d'avant l'a expliqué.

Test : lire la phrase à voix haute comme si on l'expliquait au téléphone. Si personne ne parle
ainsi, la réécrire avec les mots de la conversation, sans perdre le fait.

## 2. Penser en français, pas traduire l'anglais

- **Bannir les calques structurels** : « Vous voulez X ? Nous avons Y. », « C'est simple. »,
  « En quelques clics. », « N'hésitez pas à… », « Et si… ? », « Imaginez un monde où… ».
- **Remplacer les formules de réclame par un fait** : *Découvrez, Boostez, Optimisez, Dopez,
  Révolutionnaire, Incontournable, Ultime, En un clin d'œil, En toute simplicité, Que vous soyez…
  ou…*, et la répétition de *grâce à / permet de / afin de / au cœur de / véritable*.
- **Franglais** (*insights, workflow, game-changer, deal, must-have*) **uniquement** si l'audience
  l'emploie réellement. Sinon, mot français.
- **Formules à supprimer**, chaque suppression comblée par un fait du § 1 : ouvertures creuses
  (*De nos jours, À l'heure où, Il est important de noter que*), liants automatiques en tête de
  paragraphe (*En effet, De plus, Par ailleurs, En outre*, un sur trois suffit), superlatifs de
  remplissage (*crucial, essentiel, un allié de taille*), fermetures molles (*En conclusion, Vous
  l'aurez compris*), adverbes en -ment qui ne portent rien, cadrages d'époque (*À l'ère de, dans le
  paysage actuel, plongeons dans*), verbes valises (*tirer parti de, jouer un rôle clé, s'impose
  comme*), autorité vague (*les études montrent, les experts s'accordent*). Listes complètes :
  `references/tics-ia.md`.

## 2 bis. Calques de l'anglais

Aucune liste ne couvrira tous les calques : il en naît un neuf à chaque texte. Le contrôle qui
marche est un test, appliqué dans une relecture à part.

**Le test de rétro-traduction.** Retraduis la phrase en anglais, mot pour mot. Si elle tombe en
anglais idiomatique sans rien changer, et qu'un Français au téléphone ne la dirait pas ainsi,
c'est un calque : réécris-la à partir du sens, jamais à partir des mots. « Votre cuisine, poste
par poste » ne repasse pas en anglais sans perte ; « ce que l'outil rend » donne *what the tool
returns* : calque.

Les quatre familles, détaillées avec leurs exceptions dans `references/calques.md` :

- **Faux amis** : *rendre un résultat, adresser un problème, impacter, réaliser que, délivrer,
  faire sens, être en charge de, opportunité, consistant, supporter un format, initier, digital,
  éventuellement, définitivement, dédié, basé sur, sécuriser un budget, challenger, venir avec,
  une alternative, résulter en, drastique, significatif, au final, versus*.
- **Mots anglais restés** : *wording, feature, home, template, item, slot, flow, scope, check,
  fallback, layout, dashboard, onboarding, feedback, tooltip, workflow, roadmap, preview, release*.
  Interdits dans un texte public, à remplacer dans un plan dès qu'un mot français existe.
- **Tournures traduites** : *Prêt à vous lancer ?, Le saviez-vous ?, Gardez à l'esprit que, En
  termes de, Ça fait la différence, C'est là que X entre en jeu, Tout ce que vous devez savoir sur,
  Assurez-vous que* en série, le *X par X* forgé, les noms empilés sans préposition (« liste
  courses chantier »), le possessif en série.
- **Anglicismes de syntaxe**, les plus durs à voir : l'ordinal avant le nombre (« les premiers
  cinq jours »), « Comparé à » en tête de phrase, le passif impossible (« la question a été
  répondue »), la préposition calquée (« satisfait avec », « m'aider avec »), le possessif devant
  une partie du corps (« lavez vos mains »), le nom placé avant celui qu'il précise (« Dupont
  plomberie devis »).

## 3. Typographie française (non négociable)

- **Espace insécable** avant `: ; ! ?` et à l'intérieur des guillemets : « comme ceci ».
- **Guillemets français** « » (jamais `" "`). **Apostrophe typographique** ’ (jamais `'`).
  **Points de suspension** … en un seul caractère (jamais `...`).
- **Pas de *title case*** : titres et boutons en **casse de phrase**. → « Commencez votre essai
  gratuit », pas « Commencez Votre Essai Gratuit ».
- **Jamais de tiret cadratin `—`** dans le corps du texte. Le remplacer par `,` `.`, `:` ou des
  parenthèses, ou suivre le tableau de remplacement du projet s'il en a un.
- **Nombres et unités à la française** : virgule décimale (`3,5`), espace insécable pour les
  milliers (`12 000`), symbole après le nombre avec espace (`29 €`, `80 %`, `24 h`, `15 min`).
- **Fourchettes en toutes lettres** : `entre 2 et 4 heures`, pas `2-4h`.
- **Majuscules accentuées** : `À`, `É`, `Ç` en début de phrase ou de titre.
- **Minuscule après le deux-points**, sauf devant un nom propre ou une citation.
- **Listes à puces** : pas de majuscule initiale sauf si l'élément est une phrase complète ;
  ponctuation de fin homogène.

## 4. Tournures, accords et rythme

- **Registre cohérent** : tutoiement **ou** vouvoiement selon l'audience et le projet, tenu sur
  **tout** le texte. Sans consigne, s'aligner sur l'existant ou demander.
- **Accords vérifiés systématiquement** : genre, nombre, participes passés (avec *avoir* /
  *être*), adjectifs, *leur/leurs*, *quel(le)(s)*, *tout/tous/toute(s)*.
- **Rythme français** : le staccato qui marche en anglais (« Fast. Simple. Done. ») tombe à plat.
  Des phrases de longueurs variées, qui respirent.
- **CTA** = verbe d'action naturel (« Créer mon compte », « Voir les tarifs »), pas un calque ni
  une rafale de `!!`.
- **Liaisons naturelles** : « mais, pourtant, du coup, en clair, c'est-à-dire » plutôt que les
  calques de *however / moreover / in order to*.

## 5. Structures à casser

Ni anglicismes ni fautes : les patrons de phrase que la génération automatique produit par
défaut, et que le lecteur reconnaît sans savoir les nommer. Les plus fréquents, avec le remède :

- **Le contraste binaire** (« Ce n'est pas X, c'est Y », « Non pas X, mais Y ») et **l'addition
  en balancier** (« Non seulement X, mais aussi Y ») : écrire Y directement.
- **La triade systématique** (« rapide, simple et efficace ») : garder le nombre d'éléments que le
  propos demande.
- **Le nombre annoncé** (« trois choses », « deux options s'offrent à vous : ») : entrer par le
  premier élément.
- **La question-réponse éclair** (« Le résultat ? Des murs secs. ») : la réponse directement.
- **La fragmentation dramatique** (« Phrase courte. Très courte. ») et **le staccato fabriqué** :
  réserver la phrase courte aux vraies ruptures.
- **L'inanimé qui agit ou qui juge** (« le budget explose », « la hauteur départage ») : nommer
  qui fait l'action.
- **La voix passive** et **l'impersonnel de notice** (« il est conseillé de », « doit être
  appliquée ») : l'impératif sur un geste, un sujet humain ailleurs.
- **Le méta-commentaire** (« Dans cet article, nous allons voir ») et **le texte qui parle de
  lui-même** (« Ce guide complet vous accompagne ») : supprimer.
- **La queue en participe présent** (« …, soulignant l'importance de ») et **la maxime de chute**
  (« l'étude coûte moins cher que le doute ») : finir sur un fait.
- **La pseudo-clivée en série** (« Ce qui coûte, c'est la reprise ») et **la mise en relief
  répétée** (« c'est lui qui », « c'est là que ») : le sujet directement.
- **L'adversaire imaginaire** (« Contrairement à une idée reçue ») et **l'omniscience** (« que
  personne ne lit », « l'erreur classique ») : donner le fait sans le mettre en scène.
- **L'évitement du verbe « être »** (« constitue », « s'avère », « se veut ») et **le lien flou**
  (« lié à », « en lien avec ») : dire la relation réelle.
- **Les précautions empilées** (« pourrait potentiellement ») et **les absolus paresseux**
  (« toujours », « tous les bricoleurs ») : une seule réserve, réelle.
- **Le catalogue froid** : un comparatif ou une liste d'options qui finit sans recommandation.
  Trancher.
- **Le gabarit visible** : sections calibrées à la même longueur, intertitres en question en série,
  puces à libellé gras en série, tableau qui aurait dû être une phrase, plan qui se répète.

Liste complète et exemples : `references/tics-ia.md` § 5.

### 5 bis. Les motifs de série

Certaines structures passent sur une page et ne se voient qu'en série : c'est leur retour d'un
texte à l'autre qui signe la génération automatique. Elles naissent quand une bonne règle
(ouvrir sur une scène, un fait par section, un encart par texte) s'applique mécaniquement à toute
une série. Chaque motif a un quota par texte (contraste binaire : 1, jamais en première phrase,
en intertitre ni en fin de section ; superlatif d'exclusivité, omniscience, maxime de chute,
intertitre en apposition, chiffre à effet sans source : 0 ; nombre annoncé, balance avant-après,
verbe de dramatisation : 1 ; une phrase de plus de 12 mots reprise d'un texte voisin : 0). Table
complète : `references/tics-ia.md` § 5 bis.

**Varier d'un texte à l'autre.** Avant d'écrire un texte d'une série (articles, fiches, réponses
de forum), relire l'ouverture, les intertitres et la fin des deux ou trois textes voisins : ce
qu'ils emploient déjà se remplace. Un gabarit fixe la structure, jamais les phrases.

### 5 ter. Le dialecte des agents

Quand le même agent écrit le code d'un site et ses textes, son vocabulaire de travail passe dans
la page publique : « l'outil rend la section » (*returns*), « la hauteur départage », « le chiffre
qui commande tout », « c'est lui qui » à chaque paragraphe, « se fige, se décide, se comptent » en
série, la virgule avant le « et » d'une énumération. Quotas et remèdes : `references/tics-ia.md`
§ 5 ter. Réflexe : ne jamais employer dans un texte public un mot utilisé dans le code ou le commit
de la même séance sans vérifier qu'il a le même sens pour un lecteur ordinaire.

## 5 quater. Humaniser sans abîmer

Retirer les tics ne suffit pas, et les retirer mal en crée d'autres. Un texte humain se reconnaît
à ce qu'il contient (§ 1 bis) : un détail vécu, un avis nuancé, une imprécision honnête (« entre
deux et quatre heures selon la température »), un rythme qui suit la pensée, le verbe « être », le
mot courant, la répétition quand le terme est technique.

Quatre défauts naissent des corrections elles-mêmes :

- **Le texte compressé.** Couper liants, articles et fins de phrase pour « gagner en densité »
  donne des notes. C'est le défaut le plus fréquent d'un texte d'agent relu par un agent.
- **Le staccato fabriqué.** Couper des phrases ordinaires pour « varier le rythme » donne un texte
  haché.
- **Le texte poncé.** À force de retirer nuances et connecteurs, il ne reste qu'une suite
  d'affirmations lisses et sèches.
- **La rotation de synonymes.** Dans un texte technique, trois mots pour la même chose égarent le
  lecteur. Choisir un terme et le garder.

Un détail vécu ne s'invente jamais : il vient de l'auteur, d'un relevé ou d'une source, sinon le
texte s'en passe. Les guides anglais comptent aussi parmi les signes d'IA les guillemets courbes
et le tiret cadratin : en français, guillemets et apostrophes courbes sont obligatoires (§ 3), et
le tiret cadratin est proscrit pour des raisons de typographie.

## 6. Ce que le texte livré tient

1. **Chaque section porte un fait vérifiable** (§ 1), et aucun fait n'est plaqué.
2. Aucune phrase ne survit au test de substitution.
3. **Le texte se lit à voix haute** (§ 1 bis) : phrases entières, avis nuancés là où l'incertitude
   est réelle, mots courants, aucun mot forgé ni d'emballage.
4. Aucune phrase ne sonne traduite : la passe de calques du § 6 bis a été faite.
5. Tous les accents et diacritiques sont présents.
6. Les accords sont justes, participes passés et adjectifs compris.
7. La typographie suit le § 3.
8. Le registre tu/vous est homogène.
9. Aucune formule du § 2, aucune structure du § 5, aucun motif du § 5 bis ou 5 ter au-delà de son
   quota, aucune phrase reprise d'un texte voisin.
10. La réécriture n'a rien abîmé (§ 5 quater) : ni fait perdu, ni texte compressé, ni synonymes en
    rotation.
11. La relecture en passes du § 6 bis a été faite, et son compte rendu existe.

Cinq questions départagent un texte correct d'un bon texte :

| Dimension | Question |
|---|---|
| Concret | Chaque section apporte-t-elle un fait, un geste ou une décision ? |
| Voix | Quelqu'un du métier le dirait-il ainsi, au téléphone, à un ami ? |
| Rythme | Les phrases sont-elles entières et de longueurs variées, ou en notes et métronomiques ? |
| Confiance | Le texte respecte-t-il l'intelligence du lecteur, sans surexpliquer ni ordonner ? |
| Densité | Reste-t-il une phrase sans rôle ? Couper la phrase, jamais les mots qui la relient. |

Un texte qui passe toutes ces questions sauf Concret est un texte vide bien habillé : le reprendre
par le § 1. Un texte qui passe tout sauf Voix est un texte juste qui sonne généré : le reprendre
par le § 1 bis.

## 6 bis. La relecture en passes

Relire en passes séparées, du fond vers la forme : en cherchant tout à la fois, on laisse passer
les calques et les tics, qui sont grammaticalement corrects. Sur un texte déjà écrit, ne relire
que ce qui a été ajouté ou modifié. Quand c'est possible, confier les passes 3 et 4 à un relecteur
qui n'a pas écrit le texte (un sous-agent en contexte neuf qui ne reçoit que le texte, ce fichier
et, s'il existe, le relevé des corrections de l'auteur).

0. **Inventaire des faits.** Lister chiffres, normes, gestes et noms propres. Ce qui manque se
   demande, ne s'invente pas.
1. **Fond (§ 1).** Test de substitution, test de sortie. Une section sans fait se reprend.
2. **Structure.** Lire les intertitres seuls : la matière se répète-t-elle, une section est-elle
   gonflée, un tableau serait-il mieux en phrase ?
3. **Voix, à voix haute (§ 1 bis, § 5).** Où une phrase entière a-t-elle été réduite en notes,
   ou un paragraphe a-t-il grossi en bloc ?
   Quel avis est donné sans la nuance qu'un professionnel y mettrait, ou comme un ordre ? Quel mot
   sort d'une fiche technique ou d'un emballage ? Quelle source nommée n'a rien à faire dans la
   phrase ? Puis : quelle phrase sonne encore générée, et pourquoi ?
4. **Calques (§ 2 bis).** Rétro-traduction phrase par phrase, puis trois réflexes : la
   préposition, l'ordre des mots, le mot anglais resté. Avec `references/calques.md` ouvert.
5. **Contre-relecture de la réécriture (§ 5 quater).** Comparer à la version d'avant : aucun fait
   perdu ni ajouté, aucune phrase compressée, les connecteurs utiles gardés, un seul terme par chose.
6. **Mécanique en dernier.** Les contrôles du § 7, ou ceux du projet : ce qu'ils décident ne se
   relit pas à l'œil.

**Compte rendu.** En livrant, lister les phrases changées pendant la relecture, avant puis après,
groupées par passe. Une relecture qui ne trouve rien sur plus de vingt phrases est suspecte : la
refaire. Au-delà de cinq signaux répartis sur trois familles dans un même passage, réécrire le
passage plutôt que le rapiécer.

## 7. Contrôles automatiques

`bash scripts/controles.sh <fichier>` (chemin relatif au dossier de la skill) lance les greps de
toutes les familles : sections sans chiffre, verbes vides, tiret cadratin, formules et tics,
adverbes en -ment, typographie, motifs de série, calques, mots forgés, dialecte des agents. Ils ne
jugent pas, ils montrent où regarder : un paragraphe remonté sans chiffre est une question
(« qu'apprend-il ? »), pas une faute. Un projet qui a ses propres contrôles (par exemple un
`check:slop`) les lance à la place, et ce script ne sert alors que de complément.

---

Base `stop-slop` : MIT.
