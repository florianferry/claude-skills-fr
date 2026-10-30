# Attributions

## Pack marketing

Les 49 skills de marketing de ce dépôt sont des œuvres dérivées de
[coreyhaines31/marketingskills](https://github.com/coreyhaines31/marketingskills),
Copyright (c) 2025 Corey Haines, distribué sous licence MIT. Le texte intégral de cette
licence figure dans le fichier `LICENSE`.

### Adaptation intégrale, 39 skills

`ab-testing`, `ad-creative`, `ads`, `ai-seo`, `analytics`, `aso`, `churn-prevention`, `cold-email`,
`community-marketing`, `competitor-profiling`, `competitors`, `content-strategy`, `copy-editing`,
`copywriting`, `cro`, `customer-research`, `directory-submissions`, `emails`, `free-tools`, `image`,
`launch`, `lead-magnets`, `marketing-ideas`, `marketing-psychology`, `onboarding`, `paywalls`,
`popups`, `pricing`, `product-marketing`, `programmatic-seo`, `referrals`, `revops`,
`sales-enablement`, `schema`, `seo-audit`, `signup`, `site-architecture`, `social`, `video`.

Version de base : v2.0.0 du pack amont.

Modifications :

- traduction française intégrale du corps de chaque skill ;
- réécriture des `description` en français, avec les expressions de déclenchement correspondantes,
  afin que les skills se chargent sur une formulation française ;
- ajout en tête de chaque skill d'un renvoi à `redaction-francaise`, qui prime sur les exemples
  anglais (typographie française, calques, tics d'IA, registre) ;
- retrait des exemples propres à un projet privé ;
- réparation du frontmatter YAML de `cold-email`, `free-tools` et `paywalls`, cassé par les deux
  points de la ponctuation française dans une description non protégée par des guillemets ;
- ajout des renvois croisés vers les skills introduites en v2.10.0.

### Adaptation partielle, 10 skills

`attribution`, `co-marketing`, `influencer-marketing`, `marketing-council`, `marketing-loops`,
`marketing-plan`, `offers`, `prospecting`, `public-relations`, `sms`.

Version de base : v2.10.0 du pack amont.

Modifications : `description` traduite en français avec ses expressions de déclenchement, renvoi à `redaction-francaise` injecté. Le corps reste en anglais : ce sont des consignes adressées à un modèle multilingue, dont la langue de sortie est pilotée par ce renvoi. La traduction du corps est prévue mais non nécessaire au
fonctionnement.

## Skill `redaction-francaise`

Écrite par Florian Ferry. Ses sections 5 et 6 sont adaptées de `stop-slop`
(Hardik Pandya, licence MIT), transposées au français.

## Skill `handoff`

Traduite de la skill `handoff` de [mattpocock/skills](https://github.com/mattpocock/skills),
Copyright (c) 2026 Matt Pocock, licence MIT, relevée au commit `0f5e033` du 2026-10-06. Le texte
de cette licence figure dans `redaction/skills/handoff/LICENSE`.

Modifications : corps, `description` et `argument-hint` traduits en français, consigne ajoutée de
rédiger le document de passation en français. Le fichier `agents/openai.yaml`, propre à Codex,
n'est pas repris.

## Skill `grilling`

Traduite de la skill `grilling` du même dépôt [mattpocock/skills](https://github.com/mattpocock/skills),
même licence, relevée au commit `49dd158` du 2026-10-09. Le texte de la licence figure dans
`redaction/skills/grilling/LICENSE`.

Modifications : corps et `description` traduits en français, avec des expressions de déclenchement
françaises ; questions posées en français ; la recherche des faits se fait directement, et par un
sous-agent seulement quand elle est longue.

## Licence de l'ensemble

MIT, en cohérence avec le pack amont. Voir `LICENSE`.
