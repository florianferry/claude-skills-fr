# Outils d'IA générative pour les créatifs publicitaires

Référence pour utiliser les générateurs d'images IA, les générateurs vidéo et les outils vidéo par code afin de produire des visuels publicitaires à grande échelle.

---

## Quand utiliser les outils génératifs

| Besoin | Catégorie d'outil | Meilleur choix |
|--------|------------------|----------------|
| Images statiques (bannières, social) | Génération d'images | ChatGPT Images 2.0, Nano Banana Pro, Flux, Ideogram |
| Images avec texte superposé | Génération d'images (rendu texte) | Ideogram, Nano Banana Pro |
| Vidéos courtes (6-30 sec) | Génération vidéo | Veo, Kling, Runway, Sora, Seedance |
| Vidéos avec voix off | Génération vidéo + voix | Veo/Sora (natif), ou Runway + ElevenLabs |
| Pistes audio pour annonces | Génération vocale | ElevenLabs, OpenAI TTS, Cartesia |
| Versions multi-langues | Génération vocale | ElevenLabs, PlayHT |
| Clonage de voix de marque | Génération vocale | ElevenLabs, Resemble AI |
| Mockups et déclinaisons produit | Génération d'images + références | Flux (multi-image reference) |
| Vidéos templatisées à l'échelle | Vidéo par code | Remotion |
| Vidéo personnalisée (nom, données) | Vidéo par code | Remotion |
| Déclinaisons cohérentes avec la marque | Génération d'images + style refs | Flux, Ideogram, Nano Banana Pro |

---

## Génération d'images

### Nano Banana Pro (Gemini)

Modèle de génération d'images de Google DeepMind, disponible via l'API Gemini.

**Idéal pour :** images publicitaires haute qualité, visuels produit, rendu de texte
**API :** Gemini API (Google AI Studio, Vertex AI)
**Tarif :** ~0,04 $/image (Gemini 2.5 Flash Image), ~0,24 $/image 4K (Nano Banana Pro)

**Points forts :**
- Excellent rendu de texte dans les images (logos, headlines)
- Édition native d'images (modifier une image existante avec des prompts)
- Disponible via la même API Gemini que pour la génération de texte
- Génération et édition en un seul modèle

**Cas d'usage publicitaires :**
- Générer des visuels pour réseaux sociaux à partir de descriptions textuelles
- Créer des déclinaisons de mockups produit
- Modifier des images pub existantes (changer le fond, les couleurs)
- Générer des images avec le texte du headline intégré

**Exemple API :**
```bash
curl -X POST "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash-image:generateContent" \
  -H "Content-Type: application/json" \
  -H "x-goog-api-key: $GEMINI_API_KEY" \
  -d '{
    "contents": [{"parts": [{"text": "Crée une image publicitaire moderne et épurée pour un outil de gestion de projet. Montre un ordinateur portable avec une interface kanban. Visuel lumineux, professionnel, ratio 16:9."}]}],
    "generationConfig": {"responseModalities": ["TEXT", "IMAGE"]}
  }'
```

**Docs :** [Gemini Image Generation](https://ai.google.dev/gemini-api/docs/image-generation)

---

### Flux (Black Forest Labs)

Modèles de génération d'images open-weight avec accès API via Replicate et l'API native BFL.

**Idéal pour :** images photoréalistes, déclinaisons cohérentes avec la marque, génération multi-références
**API :** Replicate, BFL API, fal.ai
**Tarif :** ~0,01 à 0,06 $/image selon le modèle et la résolution

**Variantes du modèle :**
| Modèle | Vitesse | Qualité | Coût | Idéal pour |
|--------|---------|---------|------|------------|
| Flux 2 Pro | ~6 sec | Maximale | 0,015 $/MP | Assets de production finale |
| Flux 2 Flex | ~22 sec | Haute + édition | 0,06 $/MP | Édition itérative |
| Flux 2 Dev | ~2,5 sec | Bonne | 0,012 $/MP | Prototypage rapide |
| Flux 2 Klein | Le plus rapide | Bonne | Le moins cher | Génération en lot haute volumétrie |

**Points forts :**
- Multi-références (jusqu'à 8 images) pour une identité visuelle cohérente sur toutes les annonces
- Cohérence produit : même produit dans des contextes différents
- Transfert de style à partir d'images de référence
- Modèle Dev open-weight pour hébergement propre

**Cas d'usage publicitaires :**
- Générer 50+ déclinaisons d'annonces avec un produit ou un personnage cohérent
- Créer des images produit en contexte (ton SaaS sur différents appareils)
- Faire correspondre le style aux assets de marque existants via des images de référence
- Itérer rapidement sur des variations d'images pour A/B testing

**Docs :** [Replicate Flux](https://replicate.com/black-forest-labs/flux-2-pro), [BFL API](https://docs.bfl.ml/)

---

### Ideogram

Spécialisé dans la typographie et le rendu de texte dans les images.

**Idéal pour :** bannières publicitaires avec texte, graphismes brandés, visuels sociaux avec headlines
**API :** Ideogram API, Runware
**Tarif :** ~0,06 $/image (API), ~0,009 $/image (abonnement)

**Points forts :**
- Meilleur rendu de texte du marché (~90 % de fidélité vs ~30 % pour la plupart des outils)
- Système de références de style (jusqu'à 3 images de référence)
- 4,3 milliards de presets de style pour une esthétique de marque cohérente
- Excellent pour les logos et la typographie brandée

**Cas d'usage publicitaires :**
- Générer des bannières publicitaires avec le texte du headline directement intégré
- Créer des visuels pour réseaux sociaux avec des superpositions de texte brandées
- Produire plusieurs déclinaisons graphiques avec une typographie cohérente
- Générer des supports promotionnels sans passer par un designer pour chaque variation

**Docs :** [Ideogram API](https://developer.ideogram.ai/), [Ideogram](https://ideogram.ai/)

---

### Autres outils images

| Outil | Idéal pour | Statut API | Notes |
|-------|------------|------------|-------|
| **DALL-E 3** (OpenAI) | Génération d'images généraliste | API officielle | Intégré à ChatGPT, bon rendu texte |
| **Midjourney** | Images artistiques, haute esthétique | Pas d'API publique officielle | Via Discord ; APIs non officielles disponibles mais risquées |
| **Stable Diffusion** | Hébergement propre, personnalisation | Open source | Idéal pour les équipes avec infrastructure GPU |

---

## Génération vidéo

### Google Veo

Modèle de génération vidéo de Google DeepMind, disponible via l'API Gemini et Vertex AI.

**Idéal pour :** vidéos pub de haute qualité avec audio natif, vidéo verticale pour les réseaux sociaux
**API :** Gemini API, Vertex AI
**Tarif :** ~0,15 $/sec (Veo 3.1 Fast), ~0,40 $/sec (Veo 3.1 Standard)

**Capacités :**
- Jusqu'à 60 secondes en 1080p
- Génération audio native (dialogue, effets sonores, ambiance)
- Sortie verticale 9:16 pour Stories/Reels/Shorts
- Upscaling en 4K
- Texte vers vidéo et image vers vidéo

**Cas d'usage publicitaires :**
- Générer des vidéos pub courtes (15-30 sec) à partir de descriptions textuelles
- Créer des vidéos verticales pour TikTok, Reels, Shorts
- Produire des démos produit avec voix off
- Générer plusieurs variations vidéo à partir du même prompt avec des styles différents

**Docs :** [Veo sur Vertex AI](https://cloud.google.com/vertex-ai/generative-ai/docs/video/overview)

---

### Kling (Kuaishou)

Génération vidéo avec génération audio-visuelle simultanée et contrôles de caméra.

**Idéal pour :** vidéos pub cinématographiques, contenu longue durée, vidéo synchronisée audio
**API :** Kling API, PiAPI, fal.ai
**Tarif :** ~0,09 $/sec (via fal.ai tiers)

**Capacités :**
- Jusqu'à 3 minutes en 1080p/30-48fps
- Génération audio-visuelle simultanée (Kling 2.6)
- Texte vers vidéo et image vers vidéo
- Contrôles de mouvement et de caméra

**Cas d'usage publicitaires :**
- Vidéos explicatives produit plus longues
- Vidéos de marque cinématographiques avec audio synchronisé
- Animer des images produit en vidéos publicitaires

**Docs :** [Kling AI Developer](https://klingai.com/global/dev/model/video)

---

### Runway

Plateforme de génération et d'édition vidéo avec une forte contrôlabilité.

**Idéal pour :** génération vidéo contrôlée, contenu cohérent stylistiquement, édition de footage existant
**API :** Runway Developer Portal

**Capacités :**
- Gen-4 : cohérence des personnages/décors entre les plans
- Motion brush et contrôles de caméra
- Image vers vidéo avec images de référence
- Transfert de style vidéo vers vidéo

**Cas d'usage publicitaires :**
- Générer des vidéos pub avec des personnages/produits cohérents entre les scènes
- Transférer le style d'un footage existant pour correspondre à l'esthétique de marque
- Prolonger ou remixer du contenu vidéo existant

**Docs :** [Runway API](https://docs.dev.runwayml.com/)

---

### Sora 2 (OpenAI)

Modèle de génération vidéo d'OpenAI avec audio synchronisé.

**Idéal pour :** vidéo haute fidélité avec dialogue et son
**API :** OpenAI API
**Tarif :** tier gratuit disponible ; Pro de 0,10 à 0,50 $/sec selon la résolution

**Capacités :**
- Jusqu'à 60 secondes avec audio synchronisé
- Dialogue, effets sonores et ambiance audio
- Variantes sora-2 (rapide) et sora-2-pro (qualité)
- Texte vers vidéo et image vers vidéo

**Cas d'usage publicitaires :**
- Témoignages vidéo et annonces style talking-head
- Vidéos de démo produit avec narration
- Vidéos de marque narratives

**Docs :** [OpenAI Video Generation](https://platform.openai.com/docs/guides/video-generation)

---

### Seedance 2.0 (ByteDance)

Modèle de génération vidéo de ByteDance avec génération audio-visuelle simultanée et entrées multimodales.

**Idéal pour :** vidéos pub rapides et abordables avec audio natif, entrées multimodales de référence
**API :** BytePlus (officiel), Replicate, WaveSpeedAI, fal.ai (tiers) ; format compatible OpenAI
**Tarif :** ~0,10 à 0,80 $/min selon la résolution (estimé 10 à 100× moins cher que Sora 2 par clip)

**Capacités :**
- Jusqu'à 20 secondes en résolution 2K
- Génération audio-visuelle simultanée (Dual-Branch Diffusion Transformer)
- Texte vers vidéo et image vers vidéo
- Jusqu'à 12 fichiers de référence en entrée multimodale
- Structure API compatible OpenAI

**Cas d'usage publicitaires :**
- Production à grande échelle de vidéos pub courtes à faible coût
- Vidéos pub avec voix off et effets sonores synchronisés en une seule passe
- Génération multi-références (images produit, assets de marque, références de style)
- Itération rapide sur des concepts de vidéos pub

**Docs :** [Seedance](https://seed.bytedance.com/en/seedance2_0)

---

### Higgsfield

Plateforme complète de création vidéo avec contrôles de caméra cinématographiques.

**Idéal pour :** vidéos pub pour les réseaux sociaux, style cinématographique, contenu mobile-first
**Plateforme :** [higgsfield.ai](https://higgsfield.ai/)

**Capacités :**
- 50+ mouvements de caméra professionnels (zooms, panoramiques, drone FPV)
- Animation image vers vidéo
- Édition intégrée, transitions et keyframing
- Workflow tout-en-un : génération d'images, animation, édition

**Cas d'usage publicitaires :**
- Vidéos pub pour réseaux sociaux avec un rendu cinématographique
- Animer des images produit en vidéos dynamiques
- Créer plusieurs variations vidéo avec différents styles de caméra
- Contenu vidéo à livraison rapide pour les campagnes sociales

---

### Comparatif des outils vidéo

| Outil | Durée max | Audio | Résolution | API | Idéal pour |
|-------|-----------|-------|------------|-----|------------|
| **Veo 3.1** | 60 sec | Natif | 1080p/4K | Gemini | Vidéo verticale sociale |
| **Kling 2.6** | 3 min | Natif | 1080p | Tiers | Cinématographique long |
| **Runway Gen-4** | 10 sec | Non | 1080p | Officielle | Contrôlé, cohérent |
| **Sora 2** | 60 sec | Natif | 1080p | Officielle | Dialogue |
| **Seedance 2.0** | 20 sec | Natif | 2K | Officielle + tiers | Grande volumétrie, abordable |
| **Higgsfield** | Variable | Oui | 1080p | Web uniquement | Social, mobile-first |

---

## Génération de voix et audio

Pour ajouter des voix off réalistes aux vidéos pub, de la narration aux démos produit, ou de l'audio aux vidéos rendues avec Remotion. Ces outils transforment un script pub en piste vocale naturelle.

### Quand utiliser les outils voix

De nombreux générateurs vidéo (Veo, Kling, Sora, Seedance) incluent désormais de l'audio natif. Utilise des outils voix dédiés quand tu as besoin de :

- **Voix off sur vidéo silencieuse** — Runway Gen-4 et Remotion produisent une sortie sans son
- **Cohérence de voix de marque** — Cloner une voix précise pour toutes les annonces
- **Versions multi-langues** — Même script pub en 20+ langues
- **Itération sur le script** — Ré-enregistrer la voix off sans refaire la vidéo
- **Contrôle précis** — Timing exact, émotion et rythme

---

### ElevenLabs

Le leader du marché pour la génération de voix réaliste et le clonage vocal.

**Idéal pour :** voix off au rendu le plus naturel, clonage de voix de marque, multilangue
**API :** REST API avec support streaming
**Tarif :** ~0,12 à 0,30 $ pour 1 000 caractères selon le plan ; à partir de 5 $/mois

**Capacités :**
- 29+ langues avec accent et intonation naturels
- Clonage vocal à partir de courts extraits audio (instantané) ou d'enregistrements longs (professionnel)
- Contrôle de l'émotion et du style
- Streaming pour la génération en temps réel
- Bibliothèque vocale avec des centaines de voix préconstruites

**Cas d'usage publicitaires :**
- Générer des pistes vocales pour les vidéos pub
- Cloner la voix de ton porte-parole de marque pour toutes les déclinaisons
- Produire la même annonce en 10+ langues à partir d'un seul script
- A/B tester différents styles de voix (autoritaire, sympathique, urgent)

**Exemple API :**
```bash
curl -X POST "https://api.elevenlabs.io/v1/text-to-speech/{voice_id}" \
  -H "xi-api-key: $ELEVENLABS_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "text": "Fini les heures perdues sur les rapports manuels. Testez DataFlow gratuitement pendant 14 jours.",
    "model_id": "eleven_multilingual_v2",
    "voice_settings": {"stability": 0.5, "similarity_boost": 0.75}
  }' --output voiceover.mp3
```

**Docs :** [ElevenLabs API](https://elevenlabs.io/docs/api-reference/text-to-speech)

---

### OpenAI TTS

Synthèse vocale simple et abordable, intégrée à l'API OpenAI.

**Idéal pour :** voix off rapides, rentable à l'échelle, intégration simple
**API :** OpenAI API (même SDK que GPT/DALL-E)
**Tarif :** 15 $/million de caractères (standard), 30 $/million de caractères (HD) ; ~0,015 $/min avec gpt-4o-mini-tts

**Capacités :**
- 13 voix intégrées (pas de clonage personnalisé)
- Plusieurs langues
- Streaming en temps réel
- Option qualité HD
- API simple : même SDK que GPT

**Cas d'usage publicitaires :**
- Voix off rapide et peu coûteuse pour les versions brouillon/test
- Narration haute volumétrie à faible coût
- Prototyper l'audio d'une annonce avant d'investir dans une voix premium

**Docs :** [OpenAI TTS](https://platform.openai.com/docs/guides/text-to-speech)

---

### Cartesia Sonic

Génération vocale à latence ultra-faible, conçue pour les applications en temps réel.

**Idéal pour :** voix en temps réel, latence minimale, expressivité émotionnelle
**API :** REST + streaming WebSocket
**Tarif :** à partir de 5 $/mois ; à la demande à partir de 0,03 $/min

**Capacités :**
- 40 ms de time-to-first-audio (le plus rapide du marché)
- 15+ langues
- Expressivité non verbale : rires, respirations, inflexions émotionnelles
- Sonic Turbo pour une latence encore plus faible
- API streaming pour génération en temps réel

**Cas d'usage publicitaires :**
- Aperçu vocal en temps réel lors de l'itération créative
- Vidéos de démo interactives avec narration dynamique
- Annonces nécessitant des rires naturels, des soupirs ou des réactions émotionnelles

**Docs :** [Cartesia Sonic](https://docs.cartesia.ai/build-with-cartesia/tts-models/latest)

---

### Voicebox (open source)

Studio de synthèse vocale gratuit et local, propulsé par Qwen3-TTS. L'alternative open source à ElevenLabs.

**Idéal pour :** clonage vocal gratuit, génération locale/privée, production en lot sans coût
**API :** API REST locale à `http://localhost:8000`
**Tarif :** gratuit (licence MIT). Tourne entièrement sur ta machine.
**Stack :** Tauri (Rust) + React + FastAPI (Python)

**Capacités :**
- Clonage vocal à partir de courts extraits audio via Qwen3-TTS
- Support multilingue (anglais, chinois, d'autres à venir)
- Éditeur de timeline multi-pistes pour composer des conversations
- Inférence 4 à 5× plus rapide sur Apple Silicon via MLX Metal
- API REST locale pour la génération programmatique
- Aucune dépendance cloud : tout le traitement est en local

**Cas d'usage publicitaires :**
- Clonage vocal gratuit pour le porte-parole de marque sur toutes les déclinaisons
- Génération de voix off en lot sans coût par caractère
- Génération privée/locale quand le contenu est sensible ou pré-lancement
- Prototyper les variations vocales avant de s'engager sur un service payant

**Exemple API :**
```bash
curl -X POST http://localhost:8000/generate \
  -H "Content-Type: application/json" \
  -d '{"text": "Fini les heures perdues sur les rapports manuels.", "profile_id": "abc123", "language": "fr"}'
```

**Installation :** applications desktop macOS et Windows sur [voicebox.sh](https://voicebox.sh), ou depuis les sources :
```bash
git clone https://github.com/jamiepine/voicebox.git
cd voicebox && make setup && make dev
```

**Docs :** [GitHub](https://github.com/jamiepine/voicebox)

---

### Autres outils voix

| Outil | Idéal pour | Différenciateur | API |
|-------|------------|----------------|-----|
| **PlayHT** | Grande bibliothèque vocale, faible latence | 900+ voix, <300 ms de latence, ultra-réaliste | [play.ht](https://play.ht/) |
| **Resemble AI** | Clonage vocal entreprise | Déploiement on-premise, speech-to-speech en temps réel | [resemble.ai](https://www.resemble.ai/) |
| **WellSaid Labs** | Voix éthiques pour usage commercial | Voix créées avec des acteurs rémunérés | [wellsaid.io](https://www.wellsaid.io/) |
| **Fish Audio** | Budget réduit, contrôle des émotions | 50 à 70 % moins cher qu'ElevenLabs, balises émotionnelles | [fish.audio](https://fish.audio/) |
| **Murf AI** | Équipes non techniques | Studio navigateur, 200+ voix | [murf.ai](https://murf.ai/) |
| **Google Cloud TTS** | Écosystème Google, volume | 220+ voix, 40+ langues, SLA entreprise | [Google TTS](https://cloud.google.com/text-to-speech) |
| **Amazon Polly** | Écosystème AWS, coût | Voix neurales, contrôle SSML, économique au volume | [Amazon Polly](https://aws.amazon.com/polly/) |

---

### Comparatif des outils voix

| Outil | Qualité | Clonage | Langues | Latence | Prix/1 000 car. |
|-------|---------|---------|---------|---------|-----------------|
| **ElevenLabs** | Meilleure | Oui (instantané + pro) | 29+ | ~200 ms | 0,12 à 0,30 $ |
| **OpenAI TTS** | Bonne | Non | 13+ | ~300 ms | 0,015 à 0,030 $ |
| **Cartesia Sonic** | Très bonne | Non | 15+ | ~40 ms | ~0,03 $/min |
| **PlayHT** | Très bonne | Oui | 140+ | <300 ms | ~0,10 à 0,20 $ |
| **Fish Audio** | Bonne | Oui | 13+ | ~200 ms | ~0,05 à 0,10 $ |
| **WellSaid** | Très bonne | Non (voix d'acteurs) | Anglais | ~300 ms | Tarif personnalisé |
| **Voicebox** | Bonne | Oui (local) | 2+ | Local | Gratuit (open source) |

### Choisir un outil voix

```
Besoin de voix off pour des annonces ?
├── Besoin de cloner une voix de marque spécifique ?
│   ├── Meilleure qualité → ElevenLabs
│   ├── Entreprise/on-premise → Resemble AI
│   └── Budget réduit → Fish Audio, PlayHT
├── Besoin de multilangue (même annonce, plusieurs langues) ?
│   ├── Plus de langues → PlayHT (140+)
│   └── Meilleure qualité → ElevenLabs (29+)
├── Besoin de gratuit / open source / local ?
│   └── Voicebox (MIT, tourne sur ta machine)
├── Besoin de rapide, économique, suffisamment bon ?
│   └── OpenAI TTS (0,015 $/min)
├── Besoin d'une licence commerciale sécurisée ?
│   └── WellSaid Labs (voix avec acteurs rémunérés)
└── Besoin de temps réel / interactif ?
    └── Cartesia Sonic (40 ms TTFA)
```

### Workflow : voix + vidéo

```
1. Écrire le script de l'annonce (utiliser le skill ad-creative pour la copy)
2. Générer la voix off avec ElevenLabs/OpenAI TTS
3. Générer ou rendre la vidéo :
   a. Vidéo silencieuse depuis Runway/Remotion → superposer la piste vocale
   b. Ou utiliser Veo/Sora/Seedance avec audio natif (ignorer la VO séparée)
4. Combiner avec ffmpeg si on superpose séparément :
   ffmpeg -i video.mp4 -i voiceover.mp3 -c:v copy -c:a aac output.mp4
5. Générer les déclinaisons (scripts, voix ou langues différents)
```

---

## Vidéo par code : Remotion

Pour les vidéos pub templatisées et data-driven à grande échelle, Remotion est la solution idéale. Contrairement aux générateurs vidéo IA qui produisent des vidéos uniques à partir de prompts, Remotion utilise du code React pour rendre des vidéos déterministes et parfaitement fidèles à la marque, à partir de templates et de données.

**Idéal pour :** déclinaisons d'annonces templatisées, vidéo personnalisée, production cohérente avec la marque
**Stack :** React + TypeScript
**Tarif :** gratuit pour les individus/petites équipes ; licence commerciale requise dès 4 salariés
**Docs :** [remotion.dev](https://www.remotion.dev/)

### Pourquoi Remotion pour les annonces

| Générateurs vidéo IA | Remotion |
|---------------------|----------|
| Sortie unique à chaque fois | Déterministe, pixel-perfect |
| Basé sur des prompts, moins de contrôle | Contrôle complet sur chaque frame |
| Difficile de coller exactement à la marque | Couleurs, polices, espacements exacts |
| Génération une par une | Rendu en lot de centaines à partir de données |
| Pas d'insertion de données dynamiques | Personnalisation avec noms, prix, stats |

### Cas d'usage publicitaires

**1. Annonces produit dynamiques**
Injecter un tableau JSON de produits et rendre une vidéo pub unique pour chacun :
```tsx
// Composant Remotion simplifié pour les annonces produit
export const ProduitAnnonce: React.FC<{
  nomProduit: string;
  prix: string;
  imageUrl: string;
  tagline: string;
}> = ({nomProduit, prix, imageUrl, tagline}) => {
  return (
    <AbsoluteFill style={{backgroundColor: '#fff'}}>
      <Img src={imageUrl} style={{width: 400, height: 400}} />
      <h1>{nomProduit}</h1>
      <p>{tagline}</p>
      <div className="prix">{prix}</div>
      <div className="cta">Voir le produit</div>
    </AbsoluteFill>
  );
};
```

**2. Déclinaisons A/B test**
Rendre le même template avec des headlines, CTA ou palettes différents :
```tsx
const variations = [
  {headline: "Économisez 50 % aujourd'hui", cta: "Profiter de l'offre", theme: "urgence"},
  {headline: "10 000+ équipes conquises", cta: "Essai gratuit", theme: "preuve-sociale"},
  {headline: "Conçu pour la vitesse", cta: "Le tester maintenant", theme: "bénéfice"},
];
// Rendre toutes les variations par programme
```

**3. Vidéos de prospection personnalisées**
Générer des vidéos qui s'adressent aux prospects par leur nom pour la prospection ou les ventes.

**4. Production en lot pour les réseaux sociaux**
Rendre le même contenu sur différents ratios d'image :
- 1:1 pour le fil
- 9:16 pour Stories/Reels
- 16:9 pour YouTube

### Workflow Remotion pour les créatifs publicitaires

```
1. Concevoir le template en React (ou utiliser l'IA pour générer le composant)
2. Définir le schéma de données (produits, headlines, CTA, images)
3. Injecter le tableau de données dans le template
4. Rendre toutes les variations en lot
5. Importer sur la plateforme publicitaire
```

### Démarrage

```bash
# Créer un nouveau projet Remotion
npx create-video@latest

# Rendre une seule vidéo
npx remotion render src/index.ts MaComposition out/video.mp4

# Rendu en lot depuis des données
npx remotion render src/index.ts MaComposition --props='{"data": [...]}'
```

---

## Choisir le bon outil

### Arbre de décision

```
Besoin de vidéos pub ?
├── Templatisées, data-driven (même structure, données différentes)
│   └── Utiliser Remotion
├── Créatifs uniques depuis des prompts (exploratoire)
│   ├── Besoin de dialogue/voix off ? → Sora 2, Veo 3.1, Kling 2.6, Seedance 2.0
│   ├── Besoin de cohérence entre les scènes ? → Runway Gen-4
│   ├── Besoin de vidéo verticale sociale ? → Veo 3.1 (9:16 natif)
│   ├── Besoin de grande volumétrie à faible coût ? → Seedance 2.0
│   └── Besoin de cadrages cinématographiques ? → Higgsfield, Kling
└── Les deux → IA pour les créatifs héros, Remotion pour les déclinaisons

Besoin d'images pub ?
├── Besoin de texte/headlines dans l'image ? → Ideogram
├── Besoin de cohérence produit sur les déclinaisons ? → Flux (multi-ref)
├── Besoin d'itérations rapides sur des images existantes ? → Nano Banana Pro
├── Besoin de la meilleure qualité visuelle ? → Flux Pro, Midjourney
└── Besoin de grande volumétrie à faible coût ? → Flux Klein, Nano Banana
```

### Comparatif de coûts pour 100 déclinaisons d'annonces

| Approche | Outil | Coût approximatif |
|----------|-------|-------------------|
| 100 images statiques | Nano Banana Pro | ~4 à 24 $ |
| 100 images statiques | Flux Dev | ~1 à 2 $ |
| 100 images statiques | Ideogram API | ~6 $ |
| 100 × 15 sec vidéo | Veo 3.1 Fast | ~225 $ |
| 100 × 15 sec vidéo | Remotion (templatisé) | ~0 $ (rendu en auto-hébergement) |
| 10 vidéos héros + 90 templatisées | Veo + Remotion | ~22 $ + temps de rendu |

### Workflow recommandé pour une production pub à grande échelle

1. **Générer les créatifs héros** avec l'IA (Nano Banana, Flux, Veo) : haute qualité, exploratoire
2. **Construire des templates** dans Remotion à partir des patterns créatifs gagnants
3. **Produire les déclinaisons en lot** avec Remotion via les données (produits, headlines, CTA, images)
4. **Itérer** — outils IA pour les nouveaux angles, Remotion pour la montée en charge

Cette approche hybride combine l'exploration créative des générateurs IA et la cohérence et l'échelle du rendu par code.

---

## Specs images par plateforme

Lors de la génération d'images pour des annonces, demande les dimensions correctes :

| Plateforme | Emplacement | Ratio | Taille recommandée |
|------------|-------------|-------|-------------------|
| Meta Fil | Image unique | 1:1 | 1080 × 1080 |
| Meta Stories/Reels | Vertical | 9:16 | 1080 × 1920 |
| Meta Carrousel | Carré | 1:1 | 1080 × 1080 |
| Google Display | Paysage | 1,91:1 | 1200 × 628 |
| Google Display | Carré | 1:1 | 1200 × 1200 |
| LinkedIn Fil | Paysage | 1,91:1 | 1200 × 627 |
| LinkedIn Fil | Carré | 1:1 | 1200 × 1200 |
| TikTok Fil | Vertical | 9:16 | 1080 × 1920 |
| Twitter/X Fil | Paysage | 16:9 | 1200 × 675 |
| Twitter/X Card | Paysage | 1,91:1 | 800 × 418 |

Inclure ces dimensions dans les prompts de génération pour éviter de devoir recadrer ou redimensionner.
