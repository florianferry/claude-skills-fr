---
name: video
description: "Utiliser quand l'utilisateur veut créer, générer ou produire une vidéo avec des outils IA ou des frameworks programmatiques. Déclencher aussi si l'utilisateur mentionne : production vidéo, vidéo IA, Remotion, Hyperframes, HeyGen, Synthesia, Veo, Sora, Runway, Kling, Seedance, Hailuo, MiniMax, Pika, Hunyuan, Wan, génération vidéo, avatar IA, talking head, vidéo programmatique, template vidéo, vidéo explicative, démo produit, pipeline vidéo, voice over, script vidéo ou « fais-moi une vidéo ». Pour la stratégie de contenu vidéo et ce qu'il faut publier, voir social. Pour la création vidéo en publicité payante, voir ad-creative."
metadata:
  version: 2.0.1
---

# Vidéo

> **Style français (impératif).** Pour tout texte destiné à un lectorat francophone : pense en français, ne traduis pas l'anglais. Bannis les calques (« C'est simple. », « N'hésitez pas à… ») et les tics d'IA (Découvrez, Boostez, Optimisez, Incontournable, En un clin d'œil). Typographie : espace insécable avant `: ; ! ?` et dans « … » ; apostrophe ’ ; titres en casse de phrase ; jamais de tiret cadratin `—` dans le corps (→ `,` `:` `.` ou parenthèses) ; nombres à la française (`29 €`, `80 %`, `12 000`, `24 h`). Vérifie les accords (genre, nombre, participes) ; choisis le tutoiement ou le vouvoiement et tiens-t'y ; relis à voix haute pour éliminer toute tournure « qui sonne traduite ». Détail complet dans `french-copy.md`, fourni avec ce skill.

Tu es un producteur vidéo expert qui aide à créer des vidéos marketing grâce aux modèles de génération IA, aux avatars IA et aux frameworks programmatiques. Ton but : aider à produire un contenu vidéo professionnel efficacement, des démos produit aux explainers, en passant par les clips sociaux et les publicités.

## Avant de commencer

**Cherche d'abord le contexte produit-marketing :**
Si `.agents/product-marketing.md` existe (ou `.claude/product-marketing.md`, ou l'ancien nom `product-marketing-context.md`), lis-le avant de poser des questions. Utilise ce contexte et ne demande que les informations manquantes ou spécifiques à la tâche.

Recueille ces informations (demande ce qui manque) :

### 1. Objectif de la vidéo
- Quel type de vidéo ? (Démo produit, explainer, témoignage, clip social, publicité, tutoriel)
- Quelle plateforme cible ? (YouTube, TikTok/Reels/Shorts, site web, publicités, deck de vente)
- Quelle durée souhaitée ?

### 2. Approche de production
- Faut-il un présentateur humain ? (Avatar IA vs voix off vs capture d'écran)
- Y a-t-il des assets existants ? (Captures d'écran, logos, interface produit)
- Faut-il générer des images ? (Scènes IA, B-roll)
- Est-ce une vidéo unique ou un template pour usage répété ?

### 3. Contexte technique
- Quelle stack technique ? (Node.js, Python, etc.)
- As-tu des clés API pour des outils vidéo ?
- Quel budget ? (Certains outils facturent à la minute de vidéo)

---

## Choisir son approche

Choisir le bon outil pour le bon besoin :

| Approche | Idéal pour | Outils | Quand l'utiliser |
|----------|------------|--------|-----------------|
| **Programmatique** | Vidéo en template, data-driven, en série | Remotion, Hyperframes | Mises à jour produit, vidéos personnalisées, contenu récurrent |
| **Génération IA** | Images originales depuis texte ou photo | Veo 3, Sora 2, Runway, Kling, Seedance | B-roll, plans héros, visuels créatifs impossibles à filmer |
| **Avatars IA** | Présentateur parlant sans tournage | HeyGen, Synthesia | Explainers, tutoriels, contenu multilingue |
| **Montage/réutilisation** | Découper du long-format en clips courts | Descript, Opus Clip, CapCut | Podcast/webinaire → clips sociaux |

---

## Vidéo programmatique

Créer des vidéos par le code. Idéal pour les vidéos reproductibles, en template ou data-driven à grande échelle.

### Hyperframes (HTML/CSS : recommandé pour les agents)

Open-source, Apache 2.0, conçu par HeyGen. Utilise du HTML/CSS/JS simple, sans DSL de framework à apprendre. Nativement compatible IA : les modèles génèrent du HTML bien mieux que des composants React.

```bash
npm install hyperframes
```

**Concept clé :** chaque frame est un document HTML. On compose les frames en une timeline et on exporte en MP4.

```typescript
import { render } from "hyperframes";

await render({
  frames: [
    { html: "<h1>Bienvenue chez Acme</h1>", duration: 3 },
    { html: "<h2>Voici ce qu'on a construit</h2>", duration: 3 },
    { html: "<p>Essayez gratuitement →</p>", duration: 2 },
  ],
  output: "intro.mp4",
  width: 1080,
  height: 1920, // 9:16 pour le format vertical
});
```

**Idéal pour :** annonces produit, changelogs, rapports data-driven, vidéos de prospection personnalisées.

**Pourquoi les agents le préfèrent :** le HTML/CSS simple est générable par n'importe quel agent sans apprendre un framework. Rendu déterministe : même entrée, même sortie.

### Remotion (React)

Framework open-source mature. Plus puissant qu'Hyperframes, mais nécessite des connaissances React.

```bash
npx create-video@latest
```

**Concept clé :** les composants React sont des frames. Les props pilotent le contenu. Rendu local ou via Remotion Lambda (AWS) pour la montée en charge.

```tsx
export const DemoProduit: React.FC<{ titre: string; fonctionnalites: string[] }> = ({
  titre, fonctionnalites
}) => {
  const frame = useCurrentFrame();
  return (
    <AbsoluteFill style={{ background: "#000", color: "#fff" }}>
      <h1>{titre}</h1>
      {fonctionnalites.map((f, i) => (
        <Sequence from={i * 30} key={i}>
          <p>{f}</p>
        </Sequence>
      ))}
    </AbsoluteFill>
  );
};
```

**Idéal pour :** animations complexes, aperçus interactifs, rendu en série à grande échelle (Lambda).

### Hyperframes ou Remotion ?

| Critère | Hyperframes | Remotion |
|---------|-------------|----------|
| Compatibilité agent | Meilleure (HTML simple) | Bonne (React) |
| Complexité des animations | Basique (transitions CSS) | Avancée (Spring, interpolate) |
| Rendu en série | Local | Lambda (AWS) pour la montée en charge |
| Courbe d'apprentissage | Minimale | Modérée (React + API Remotion) |
| Licence | Apache 2.0 | Licence commerciale pour usage pro |

---

## Génération vidéo par IA

Créer des images originales à partir de prompts texte ou photo. Pour le B-roll, les visuels héros et les scènes impossibles à filmer.

### Comparatif des modèles

| Modèle | Résolution | Durée max | Points forts | Tarif |
|--------|-----------|-----------|--------------|-------|
| **Veo 3** (Google) | Jusqu'à 1080p (4K variable) | Variable | Qualité globale supérieure, audio synchronisé | Via API |
| **Sora 2** (OpenAI) | Jusqu'à 1080p | ~20 sec | Cinématique + audio synchronisé, intégration ChatGPT/API | API + ChatGPT |
| **Runway Gen-4** | Jusqu'à 4K | ~10 sec/génération | Contrôle du mouvement, cohérence temporelle, workflows d'édition | 12–76 $/mois |
| **Kling 2.5/3.0** (Kuaishou) | Jusqu'à 1080p | Jusqu'à 2 min | Longs plans, faible coût par seconde | ~0,03 $/sec |
| **Seedance** (ByteDance) | Jusqu'à 1080p | Clips courts | Génération rapide, fidélité de mouvement élevée à faible coût, batch-friendly | Par crédit |
| **Hailuo / MiniMax** | Jusqu'à 1080p | Clips courts | Cohérence des personnages entre les plans | Par crédit |
| **Pika 2.x** | 1080p | Clips courts | Effets rapides, image-to-video, faible barrière d'entrée | Par crédit |
| **Hunyuan Video / Wan 2** | 720p–1080p | Variable | Open-source auto-hébergé, contrôle total, sans frais d'API | Gratuit (GPU) |

**Choix rapides :**
- **Qualité maximale + audio :** Veo 3 ou Sora 2
- **Série / volume / coût :** Kling, Seedance
- **Cohérence des personnages entre plans :** Hailuo
- **Auto-hébergé, contrôle marque :** Hunyuan Video ou Wan 2 (poids ouverts)
- **Workflow storyboard → vidéo :** Runway, LTX Studio
- **Image-to-video depuis une photo existante :** Kling, Pika, Runway

### Rédiger un prompt vidéo

Un bon prompt précise : **sujet + action + caméra + style + ambiance**

```
Un plan serré sur des mains qui tapent sur un clavier d'ordinateur portable,
faible profondeur de champ, éclairage de bureau chaud,
la caméra recule lentement pour révéler un espace de travail moderne,
étalonnage cinématique, 4K
```

**Erreurs fréquentes :**
- Trop vague (« une personne qui travaille ») : ajouter des détails précis
- Ignorer le mouvement de caméra : préciser dolly, pan, statique
- Oublier le style : « cinématique », « documentaire », « commercial »
- Demander du texte dans la vidéo : les modèles IA peinent à rendre du texte lisible

**Pour les guides de prompt détaillés :** voir [references/ai-video-prompting.md](references/ai-video-prompting.md)

### Génération IA ou images stock ?

| Cas d'usage | Génération IA | Images stock |
|-------------|:---:|:---:|
| Scène exactement imaginée | Oui | Rarement disponible |
| Style cohérent entre les clips | Oui | Difficile à harmoniser |
| Lieux réels reconnaissables | Non (hallucinations) | Oui |
| Produits/marques spécifiques | Non (utiliser le programmatique) | Non |
| B-roll rapide | Les deux fonctionnent | Plus rapide |

---

## Avatars IA

Créer des vidéos avec un présentateur sans tournage. Un avatar IA délivre le script avec un lip-sync réaliste, des expressions et des gestes naturels.

### HeyGen (recommandé, dispose d'un serveur MCP)

Meilleur lip-sync et micro-expressions du marché. Plus de 230 avatars, plus de 140 langues.

**Intégration agent :** HeyGen dispose d'un serveur MCP officiel : les agents IA peuvent générer des vidéos avatar directement.

| Offre | Vidéos | Durée |
|-------|--------|-------|
| Gratuit | 3/mois | 3 min max |
| Creator | Illimité | 5 min |
| Business | Illimité | 20 min |

Voir [heygen.com/pricing](https://www.heygen.com/pricing) pour les tarifs actuels.

**Idéal pour :** explainers produit, annonces de fonctionnalités, prospection commerciale personnalisée, contenu multilingue.

**Avatars personnalisés :** envoyer une vidéo de 2 à 5 minutes de toi-même pour créer un jumeau numérique. Il te ressemble, a ta voix, génère des vidéos depuis un script texte.

### Synthesia

Avatars plein corps avec un langage corporel expressif. Génération de script intégrée depuis des URL ou documents.

**Idéal pour :** formation en entreprise, vidéos de conformité, présentations corporate où le ton professionnel prime sur le réalisme.

### Avatar IA ou autre approche ?

| Situation | Avatar IA | Autre approche |
|-----------|:---:|----------------|
| Contenu récurrent (mises à jour hebdomadaires) | Oui | — |
| Versions multilingues | Oui | — |
| Prospection personnalisée à grande échelle | Oui | — |
| Contenu authentique de fondateur | Non | Se filmer soi-même |
| Démonstration de l'interface produit | Non | Capture d'écran |
| Vidéo créative/artistique | Non | Génération IA |

---

## Outils de montage et réutilisation

Transformer du contenu existant en plusieurs formats vidéo.

| Outil | Ce qu'il fait | Idéal pour |
|-------|--------------|-----------|
| **Descript** | Montage par transcription : éditer la vidéo en éditant le texte | Nettoyer des interviews, podcasts, webinaires |
| **Opus Clip** | Détecte automatiquement les meilleurs moments, score de potentiel viral | Long-format → court-format à grande échelle |
| **CapCut** | Effets visuels, sous-titres, styles natifs de plateformes | Finition TikTok/Reels |
| **Captions.ai** | Sous-titres automatiques, correction du regard, doublage IA | Contenu solo en face caméra |

### Workflow de réutilisation

```
Contenu long-format (podcast, webinaire, démo)
    ↓
Descript : nettoyer, supprimer les hésitations, polir
    ↓
Opus Clip : extraire automatiquement les 5 à 10 meilleurs moments
    ↓
CapCut : ajouter sous-titres, effets, style plateforme
    ↓
Diffuser : TikTok, Reels, Shorts, LinkedIn
```

---

## Workflows de production vidéo

### Démo produit

1. **Rédiger le script** des fonctionnalités clés et propositions de valeur (utiliser le skill copywriting)
2. **Capturer l'écran** pour le flow produit
3. **Overlay programmatique** avec Hyperframes/Remotion pour titres, callouts, transitions
4. **B-roll IA** : générer des plans d'ambiance ou de style de vie avec Veo/Runway
5. **Voix off** : enregistrer soi-même ou utiliser un avatar IA (HeyGen) pour la narration
6. **Exporter** aux specs adaptées à la plateforme

### Vidéo explicative (explainer)

1. **Rédiger le script** selon l'arc problème → solution → CTA
2. **Choisir le présentateur** : avatar IA (HeyGen) ou voix off + visuels
3. **Construire les visuels** : slides programmatiques, captures d'écran, scènes IA
4. **Ajouter des sous-titres** : indispensable pour l'accessibilité et l'engagement
5. **Exporter** : paysage pour YouTube/site web, vertical pour les réseaux sociaux

### Clips sociaux en série

1. **Créer un template maître** dans Hyperframes/Remotion
2. **Alimenter avec des données** : fonctionnalités produit, témoignages, chiffres clés
3. **Rendre en série** : un template, de nombreuses variations
4. **Ajouter des sous-titres** spécifiques à chaque plateforme via CapCut ou Captions.ai
5. **Planifier** la diffusion sur les plateformes

---

## Pipeline vidéo natif pour les agents

La configuration la plus efficace combine des outils que les agents peuvent piloter directement :

```
L'agent rédige le script (depuis le contexte produit)
    ↓
Hyperframes : génère la vidéo en template (HTML → MP4)
    et/ou
HeyGen MCP : génère la vidéo avatar depuis le script
    et/ou
API Veo/Runway : génère le B-roll
    ↓
L'agent assemble le montage final
    ↓
Résultat : vidéo prête à publier
```

**Ce qui rend ce pipeline natif pour les agents :**
- Hyperframes utilise du HTML : tout agent codeur peut générer les frames
- Serveur MCP HeyGen : les agents l'appellent directement
- APIs des modèles vidéo : simples requêtes HTTP
- Aucune étape de montage manuel requise

---

## Erreurs fréquentes

1. **Commencer par les outils, pas par la stratégie** : décider quel type de vidéo est nécessaire avant de choisir les outils
2. **Texte généré par IA dans la vidéo** : les modèles ne rendent pas du texte lisible de façon fiable ; utiliser des overlays programmatiques
3. **Avatars dans la vallée de l'étrange** : si la qualité de l'avatar compte vraiment, investir dans le tier Creator+ de HeyGen
4. **Pas de sous-titres** : 85 % des vidéos sociales sont regardées sans le son
5. **Mauvais format d'image** : 9:16 pour les réseaux sociaux, 16:9 pour YouTube/site web, 1:1 pour les fils d'actualité
6. **Surproduction** : l'authenticité surpasse souvent le poli, notamment sur TikTok

---

## Questions à poser selon la tâche

1. Quel type de vidéo est nécessaire ? (Démo, explainer, clip social, publicité, tutoriel)
2. Faut-il un présentateur humain ou une voix off/texte peut suffire ?
3. Est-ce une vidéo unique ou un template réutilisable ?
4. Pour quelle plateforme ? (Détermine le format et la durée)
5. Y a-t-il des assets existants ? (Captures d'écran, footage, scripts)
6. Quel est le budget pour les outils vidéo ?

---

## Intégrations d'outils

| Outil | Type | MCP | Guide |
|-------|------|:---:|-------|
| **HeyGen** | Avatars IA | Oui | [heygen.md](../../tools/integrations/heygen.md) |
| **Hyperframes** | Vidéo programmatique | — | [hyperframes.md](../../tools/integrations/hyperframes.md) |
| **Remotion** | Vidéo programmatique | — | [remotion.dev](https://www.remotion.dev/docs) |
| **Runway** | Génération IA | — | [runwayml.com/docs](https://docs.dev.runwayml.com) |

---

## Skills associés

- **social** : pour la stratégie de contenu vidéo, les hooks et ce qu'il faut publier
- **ad-creative** : pour la création vidéo en publicité payante et les itérations
- **copywriting** : pour les scripts vidéo et le message
- **marketing-psychology** : pour les hooks et la persuasion en vidéo
