#!/usr/bin/env bash
# Contrôles mécaniques de redaction-francaise (§ 7). Ils ne jugent pas, ils montrent où relire.
# Usage : bash scripts/controles.sh <fichier>
set -u
F="${1:?usage : controles.sh <fichier>}"
t() { printf '\n== %s\n' "$1"; }
t "Paragraphes sans aucun chiffre : une question (« qu'apprend-il ? »), pas une faute"
awk 'BEGIN{RS=""} !/[0-9]/ {print NR": "substr($0,1,90)"..."}' "$F" || true

t "Verbes vides et promesses non vérifiables"
grep -nEi "permet de|vous fait gagner|simplifie|facilite|optimise|améliore|au service de|pensé pour|conçu pour" "$F" || true

t "Tiret cadratin, doit renvoyer 0"
grep -c "—" "$F" || true

t "Formules et tics interdits"
grep -nEi "de nos jours|à l'heure où|dans un monde où|il est important de noter|il convient de|force est de constater|n'hésitez pas|vous l'aurez compris|en conclusion|pour conclure|incontournable|un allié de taille|la clé réside|en un clin d'œil|en toute simplicité|que vous soyez|boostez|dopez|révolutionnaire" "$F" || true

t "Adverbes en -ment, par fréquence"
grep -oE "[a-zà-ÿ]+ment\b" "$F" | sort | uniq -c | sort -rn | head || true

t "Apostrophes droites et guillemets anglais"
grep -cE "'|\"" "$F" || true

t "Ponctuation double sans espace insécable devant"
grep -nE "[^  ][:;!?]" "$F" | grep -v http || true

t "Points de suspension en trois points"
grep -n "\.\.\." "$F" || true

t "Motifs de série (§ 5 bis) : contraste binaire, exclusivité, omniscience, nombre annoncé,"
t "verbes de dramatisation. À relire un par un, le quota se juge à la main."
grep -nEi "(ce n.est pas|ce ne sont pas)[^.]{0,120}(c.est|ce sont)|, pas (un|une|des|le|la|les|du|de) [^.,;:]{1,40}\." "$F" || true
grep -nEi "(le|la|les) (seule?s?|vraie?s?) [a-zà-ÿ]+ (qui|que|du|de)|décide de tout" "$F" || true
grep -nEi "personne ne|tout le monde|l.erreur (classique|la plus)" "$F" || true
grep -nEi "(deux|trois|quatre|cinq) (choses|causes|cas|situations|familles|décisions|questions|chiffres|nombres|points|règles)" "$F" || true
grep -nEi "tient en|se joue|se rattrap|se négoci|tranche\.|décide\." "$F" || true

t "Formules repérées en 2026 (§ 2) et structures en balancier (§ 5)"
grep -nEi "à l.ère d|en constante évolution|il est à noter|notons que|plong(eons|er) dans|cela étant dit|à cet égard|tirer parti|mettre en exergue|joue un rôle|s.impose comme|fait office de|fai(re|t|s|sait|saient) (du )?sens|adress(er|e|ez|é) (un|le|ce|la|les) (problème|sujet|question|besoin)|impact(er|e|es|ent|é|ée|ant)|les études montrent" "$F" || true
grep -nEi "non seulement|il ne s.agit pas (seulement|simplement)|plus qu.une? simple|, (soulignant|illustrant|reflétant|témoignant|ouvrant|offrant)" "$F" || true

t "Calques de l'anglais (§ 2 bis) : un filet, jamais une preuve. La relecture de fin d'exercice reste due."
grep -nEi "réalis(e|er|ez|é) que|en charge d|en capacité d|délivr[a-zé]* (un|une|le|la|des) (résultat|service)|en termes d|entre(nt)? en jeu|gard[a-z]* (à|en) l.esprit|prêt(e|s)? à [^.?]{1,60}\\?|le saviez-vous|en d.autres mots|travail par travail|(chaque|un) travail[ ,.]" "$F" || true
grep -nEiw "wording|features?|home|templates?|items?|slots?|flows?|scope|fallback|layout|dashboard|onboarding|feedbacks?|tooltips?|snippets?|workflows?|roadmap|preview|release" "$F" || true
grep -nEi "(peut|peuvent|qui vien(t|nent)) (venir )?avec|une alternative|résult(e|ent|er) en|rencontr[a-zé]* (les|des) (normes|exigences|besoins)|sauve[rz]? (du|de) (temps|place|argent)|drastique|au final|c.est juste (trop|super|parfait)|versus|vs\\.? |^compar(é|ée)s? (à|au)|(premiers|premières|derniers) (deux|trois|cinq|dix|[2-9]) |a été répondu|satisfaite?s? avec|fai(t|re) (toute )?la différence$|pourrai?t potentiellement" "$F" || true
grep -nE "(^|[.!?] )Ce (qui|que) [^.,]{3,60}, c.est" "$F" || true
grep -nE " : [A-ZÀÉÈ][a-zéèêà]+ [a-zéèêà]" "$F" || true
grep -nEi "^(concrètement|en pratique), " "$F" || true
grep -nEi "contrairement à une idée reçue|on pourrait croire|en lien avec|constitue (un|une|le|la)|s.avère|se veut|représente un véritable" "$F" || true

t "Dialecte des agents (§ 5 ter)"
grep -nEi "(outil|calculateur|tableur|il|elle) (vous )?rend(ent)? (le|la|les|un|une|des) [a-zà-ÿ²]+( |,|\.)(en|et|par|de)?|demande et rend" "$F" || true
grep -nEi "départage|gouverne|(qui|il|elle|ce) commande (la|le|les|l.|tout)" "$F" || true
grep -nEi "c.est (lui|elle|ce) qui|c.est (là|ici) que|voilà pourquoi" "$F" || true
grep -oEi "se (fige|figent|décide|décident|compte|comptent|cote|cotent|mesure|mesurent|lit|lisent|vérifie|vérifient)" "$F" | wc -l || true
grep -nE "[a-zà-ÿ]+, [a-zà-ÿ' ]{1,30}, et [a-zà-ÿ]" "$F" || true

t "Mots forgés et mots d'emballage (references/calques.md)"
grep -nEiw "peintables?|recouvrables?|carrelables?|relessiv[a-zé]*|repréparer|rereboucher" "$F" || true

t "Impersonnel de notice (§ 5)"
grep -nEi "il est (conseillé|recommandé|préconisé|nécessaire) de|il convient de" "$F" || true
