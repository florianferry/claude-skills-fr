# Comment chaque plateforme IA sélectionne ses sources

Chaque plateforme de recherche IA dispose de son propre index, de sa propre logique de classement et de ses propres préférences de contenu. Ce guide détaille ce qui compte pour être cité sur chacune d'elles.

Sources utilisées tout au long de ce document : étude Princeton GEO (KDD 2024), étude d'autorité de domaine SE Ranking, analyse content-answer fit de ZipTie.

---

## Les fondamentaux

Toutes les plateformes IA partagent trois exigences de base :

1. **Ton contenu doit être dans leur index** : chaque plateforme utilise un moteur de recherche différent (Google, Bing, Brave ou le sien). Sans indexation, pas de citation possible.
2. **Ton contenu doit être crawlable** : les bots IA ont besoin d'un accès via robots.txt. Bloque le bot, perds la citation.
3. **Ton contenu doit être extractible** : les systèmes IA extraient des passages, pas des pages entières. Une structure claire et des paragraphes autonomes font la différence.

Au-delà de ces bases, chaque plateforme pondère des signaux différents. Voici ce qui compte et où.

---

## Google AI Overviews

Les AI Overviews de Google s'appuient sur l'index de Google et accordent beaucoup de poids aux signaux E-E-A-T (Expérience, Expertise, Autorité, Fiabilité). Ils apparaissent dans environ 45 % des recherches Google.

**Ce qui distingue les AI Overviews :** ils disposent déjà de tes signaux SEO traditionnels (backlinks, autorité de page, pertinence thématique). La couche IA ajoute une préférence pour le contenu avec des sources citées et des données structurées. Les recherches montrent qu'inclure des citations faisant autorité dans ton contenu est corrélé à un gain de visibilité de 132 %, et un ton faisant autorité (non promotionnel) en ajoute 89 %.

**Les AI Overviews ne se contentent pas de recycler le Top 10 traditionnel.** Seulement 15 % environ des sources citées dans les AI Overviews correspondent aux résultats organiques classiques. Des pages absentes de la première page en Search traditionnel peuvent être citées si elles ont des données structurées solides et des réponses claires et extractibles.

**Sur quoi se concentrer :**
- Le balisage schema est le levier le plus puissant : les schemas Article, FAQPage, HowTo et Product donnent aux AI Overviews un contexte structuré (+30-40 % de visibilité)
- Construire une autorité thématique via des clusters de contenu avec un maillage interne fort
- Inclure des citations nommées et sourcées dans le contenu (pas seulement des affirmations)
- Les biographies d'auteurs avec de vraies qualifications comptent : l'E-E-A-T est fortement pondéré
- Intégrer le Knowledge Graph de Google si possible (une entrée Wikipedia exacte aide)
- Cibler les patterns de requêtes « comment faire » et « qu'est-ce que » : ce sont eux qui déclenchent le plus souvent les AI Overviews

---

## ChatGPT

La recherche web de ChatGPT s'appuie sur un index basé sur Bing. Il combine cette recherche avec ses connaissances d'entraînement pour générer des réponses, puis cite les sources web utilisées.

**Ce qui distingue ChatGPT :** l'autorité de domaine pèse plus ici que sur les autres plateformes IA. Une analyse SE Ranking portant sur 129 000 domaines révèle que les signaux d'autorité et de crédibilité représentent environ 40 % des déterminants de citation, la qualité du contenu environ 35 % et la confiance envers la plateforme 25 %. Les sites avec un très grand nombre de domaines référents (350 000+) obtiennent en moyenne 8,4 citations par réponse ; ceux avec un score de confiance légèrement inférieur (91-96 vs 97-100) tombent à 6 citations.

**La fraîcheur est un différenciateur majeur.** Le contenu mis à jour dans les 30 derniers jours est cité environ 3,2 fois plus souvent que les contenus plus anciens. ChatGPT privilégie clairement l'information récente.

**Le signal le plus déterminant est l'adéquation contenu-réponse** : une analyse ZipTie de 400 000 pages révèle que la correspondance entre le style et la structure de ton contenu et le format de réponse propre à ChatGPT représente environ 55 % de la probabilité de citation. C'est bien plus important que l'autorité de domaine seule (12 %) ou la structure on-page seule (14 %). Écris comme ChatGPT formule ses réponses, et tu as plus de chances d'être sa source.

**Où ChatGPT cherche au-delà de ton site :** Wikipedia représente 7,8 % de toutes les citations ChatGPT, Reddit 1,8 %, Forbes 1,1 %. Les sites officiels de marques sont souvent cités, mais les mentions tierces ont un poids significatif.

**Sur quoi se concentrer :**
- Investir dans les backlinks et l'autorité de domaine : c'est le signal de base le plus fort
- Mettre à jour le contenu concurrentiel au minimum chaque mois
- Structurer le contenu comme ChatGPT structure ses réponses (conversationnel, direct, bien organisé)
- Inclure des statistiques vérifiables avec des sources nommées
- Hiérarchie de titres propre (H1 > H2 > H3) avec des titres descriptifs

---

## Perplexity

Perplexity cite toujours ses sources avec des liens cliquables, ce qui en fait le moteur de recherche IA le plus transparent. Il combine son propre index avec celui de Google et applique plusieurs passes de re-classement : récupération initiale par pertinence, puis scoring selon des facteurs de classement traditionnels, puis évaluation qualité ML qui peut écarter des ensembles de résultats entiers s'ils ne passent pas le seuil de qualité.

**Ce qui distingue Perplexity :** c'est le moteur de recherche IA le plus orienté « recherche », et son comportement de citation le reflète. Perplexity maintient des listes de domaines faisant autorité (Amazon, GitHub, grands sites académiques) qui bénéficient d'un bonus de classement inhérent. Il utilise un algorithme de décroissance temporelle qui évalue rapidement les nouveaux contenus, donnant aux nouveaux éditeurs une vraie chance d'être cités.

**Préférences de contenu spécifiques à Perplexity :**
- **Schema FAQ (JSON-LD)** : les pages avec des données structurées FAQ sont citées notablement plus souvent
- **Documents PDF** : les PDFs accessibles publiquement (livres blancs, rapports de recherche) sont privilégiés. Si tu as du contenu PDF faisant autorité derrière un formulaire, envisage d'en rendre une version publique
- **Cadence de publication** : la fréquence de publication compte plus que le ciblage par mots-clés
- **Paragraphes autonomes** : Perplexity préfère les paragraphes atomiques et sémantiquement complets qu'il peut extraire proprement

**Sur quoi se concentrer :**
- Autoriser PerplexityBot dans robots.txt
- Implémenter le schema FAQPage sur toutes les pages avec du contenu question / réponse
- Héberger des ressources PDF publiquement (livres blancs, guides, rapports)
- Ajouter le schema Article avec horodatages de publication et de modification
- Rédiger en paragraphes clairs et autonomes fonctionnant comme réponses indépendantes
- Construire une autorité thématique profonde dans ta niche spécifique

---

## Microsoft Copilot

Copilot est intégré dans l'écosystème Microsoft : Edge, Windows, Microsoft 365 et Bing Search. Il s'appuie entièrement sur l'index de Bing : si Bing n'a pas indexé ton contenu, Copilot ne peut pas te citer.

**Ce qui distingue Copilot :** la connexion à l'écosystème Microsoft crée des opportunités d'optimisation uniques. Les mentions et contenus sur LinkedIn et GitHub offrent des bonus de classement qu'aucune autre plateforme ne propose. Copilot accorde aussi plus de poids à la vitesse de page : un temps de chargement inférieur à 2 secondes est un seuil clairement perceptible.

**Sur quoi se concentrer :**
- Soumettre son site à Bing Webmaster Tools (beaucoup de sites ne soumettent qu'à Google Search Console)
- Utiliser le protocole IndexNow pour une indexation plus rapide des contenus nouveaux et mis à jour
- Atteindre un temps de chargement inférieur à 2 secondes
- Rédiger des définitions d'entités claires : quand ton contenu définit un terme ou un concept, rends la définition explicite et extractible
- Développer une présence sur LinkedIn (publier des articles, tenir une page entreprise) et GitHub si pertinent
- Assurer que Bingbot dispose d'un accès complet au crawl

---

## Claude

Claude utilise Brave Search comme moteur de recherche quand la recherche web est activée, pas Google ni Bing. C'est un index entièrement différent : ta visibilité sur Brave Search détermine directement si Claude peut te trouver et te citer.

**Ce qui distingue Claude :** Claude est très sélectif dans ce qu'il cite. Il traite d'immenses volumes de contenu, mais son taux de citation est très faible : il cherche les contenus les plus factuellement précis et mieux sourcés sur un sujet donné. Le contenu dense en données avec des chiffres précis et des attributions claires performe bien mieux que le contenu généraliste.

**Sur quoi se concentrer :**
- Vérifier que ton contenu apparaît dans les résultats Brave Search (cherche ta marque et tes mots-clés clés sur search.brave.com)
- Autoriser ClaudeBot et anthropic-ai dans robots.txt
- Maximiser la densité factuelle : chiffres précis, sources nommées, statistiques datées
- Utiliser une structure claire et extractible avec des titres descriptifs
- Citer des sources faisant autorité dans ton contenu
- Viser à être la source la plus factuellement précise sur ton sujet : Claude récompense la rigueur

---

## Autoriser les robots IA dans robots.txt

Si ton robots.txt bloque un bot IA, cette plateforme ne peut pas citer ton contenu. Voici les user agents à autoriser :

```
User-agent: GPTBot           # OpenAI — alimente la recherche ChatGPT
User-agent: ChatGPT-User     # ChatGPT en mode navigation
User-agent: PerplexityBot    # Perplexity AI Search
User-agent: ClaudeBot        # Anthropic Claude
User-agent: anthropic-ai     # Anthropic Claude (variante)
User-agent: Google-Extended  # Google Gemini et AI Overviews
User-agent: Bingbot          # Microsoft Copilot (via Bing)
Allow: /
```

**Entraînement vs. recherche :** certains bots IA servent à la fois pour l'entraînement des modèles et pour la citation en recherche. Si tu veux être cité sans que ton contenu soit utilisé pour l'entraînement, les options sont limitées (GPTBot gère les deux pour OpenAI). En revanche, tu peux sans risque bloquer **CCBot** (Common Crawl) sans affecter aucune citation de recherche IA : il ne sert qu'à la collecte de données d'entraînement.

---

## Par où commencer

Si tu optimises pour la recherche IA pour la première fois, concentre les efforts là où se trouve ton audience :

**Commence par Google AI Overviews** : ils touchent le plus d'utilisateurs (45 %+ des recherches Google) et tu as probablement déjà des bases SEO Google en place. Ajoute le balisage schema, inclus des sources citées dans ton contenu et renforce les signaux E-E-A-T.

**Puis adresse ChatGPT** : c'est le moteur de recherche IA standalone le plus utilisé pour les audiences tech et business. Mise sur la fraîcheur (mise à jour mensuelle du contenu), l'autorité de domaine et la correspondance entre la structure de ton contenu et le format de réponse de ChatGPT.

**Puis Perplexity** : particulièrement précieux si ton audience inclut des chercheurs, des early adopters ou des professionnels tech. Ajoute le schema FAQ, publie des ressources PDF et rédige en paragraphes clairs et autonomes.

**Copilot et Claude sont moins prioritaires** sauf si ton audience est enterprise / Microsoft (Copilot) ou développeur / analyste (Claude). Mais les fondamentaux, contenu structuré, sources citées, balisage schema, aident sur toutes les plateformes.

**Actions qui aident partout :**
1. Autoriser tous les robots IA dans robots.txt
2. Implémenter le balisage schema (FAQPage, Article, Organization au minimum)
3. Inclure des statistiques avec des sources nommées dans le contenu
4. Mettre à jour le contenu régulièrement : mensuel pour les sujets concurrentiels
5. Utiliser une hiérarchie de titres claire (H1 > H2 > H3)
6. Maintenir le temps de chargement sous 2 secondes
7. Ajouter des biographies d'auteurs avec qualifications
