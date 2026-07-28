# claude-skills-fr

Skills francophones pour Claude, distribuées en plugin.

Vérifié sur Claude Code : ajout du marketplace, installation et résolution des noms fonctionnent.
L'installation dans Cowork suit le même chemin (Customize > Plugins > Add marketplace), la
documentation d'Anthropic la décrit sans restriction de plan. La disponibilité dans le chat
claude.ai est en revanche décrite de façon contradictoire par la documentation officielle.

50 skills : la rédaction française irréprochable, plus un pack marketing complet adapté au
français (CRO, copywriting, SEO, pricing, publicité, analytics, offres, prospection, relations
presse, growth).

## Pourquoi ce dépôt

Claude Code lit les skills depuis le système de fichiers (`~/.claude/skills/`). Cowork et
claude.ai, eux, ne le lisent jamais : ils chargent les skills rattachées au compte. Sans source
commune, le parc de skills diverge d'une surface à l'autre.

Un plugin distribué par dépôt Git résout ça : une seule source, installable des deux côtés,
mise à jour d'un bouton.

## Installation

### Claude Code

```
/plugin marketplace add florianferry/claude-skills-fr
/plugin install skills-fr@claude-skills-fr
```

### Cowork et claude.ai

Ouvrir **Customize** dans la barre latérale, onglet **Plugins**, puis **Add marketplace** et
saisir `florianferry/claude-skills-fr`. Installer ensuite le plugin `skills-fr`.

Le bouton **Update** de la page du marketplace récupère les dernières versions.

## Contenu

**Rédaction**

`redaction-francaise` couvre la typographie française (espaces insécables, guillemets français,
apostrophe typographique, proscription du tiret cadratin, nombres à la française), les calques de
l'anglais, les tics d'IA et les structures qui trahissent une génération automatique, les accords
et la cohérence du registre tu/vous.

`copywriting` et `copy-editing` traitent l'écriture et la relecture de copy marketing.

**Marketing**

Acquisition (`seo-audit`, `ai-seo`, `programmatic-seo`, `site-architecture`, `schema`, `ads`,
`ad-creative`, `aso`, `directory-submissions`, `public-relations`, `influencer-marketing`,
`co-marketing`), conversion (`cro`, `signup`, `popups`, `paywalls`, `ab-testing`, `pricing`,
`offers`), rétention (`onboarding`, `churn-prevention`, `emails`, `sms`, `lead-magnets`,
`referrals`, `community-marketing`), stratégie (`marketing-plan`, `marketing-council`,
`marketing-psychology`, `marketing-ideas`, `marketing-loops`, `launch`, `product-marketing`,
`competitors`, `competitor-profiling`, `customer-research`, `content-strategy`, `free-tools`,
`social`, `video`, `image`), vente (`prospecting`, `cold-email`, `revops`, `sales-enablement`),
mesure (`analytics`, `attribution`).

## Particularité de l'adaptation française

Chaque skill du pack marketing porte en tête un bloc « Style français (impératif) » et embarque un
`french-copy.md`. Les `description` sont réécrites en français avec les expressions de
déclenchement correspondantes, pour que la skill se charge sur une formulation française et non
sur ses mots-clés anglais d'origine.

Les 39 skills issues de la v2.0.0 amont sont traduites intégralement. Les 10 arrivées en v2.10.0
n'ont pour l'instant que leur `description` traduite et le bloc de style : le corps reste en
anglais, ce qui n'empêche ni le déclenchement en français ni une sortie en français.

## Attribution et licence

Les 39 skills de marketing dérivent de
[coreyhaines31/marketingskills](https://github.com/coreyhaines31/marketingskills)
(Corey Haines, licence MIT), version de base v2.0.0. Détail des modifications dans `NOTICE.md`.

Licence MIT. Voir `LICENSE`.
