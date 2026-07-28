---
name: cold-email
description: "Rédige des cold emails B2B et des séquences de relance qui obtiennent des réponses. À utiliser quand l'utilisateur veut écrire des e-mails de prospection, de cold outreach, des campagnes outbound, des e-mails SDR ou follow-up. S'active aussi quand il mentionne « cold email », « e-mail de prospection », « outbound email », « écrire à des prospects », « séquence de relance », « personne ne répond à mes e-mails » ou « comment écrire un e-mail froid ». Couvre : objets, accroches, corps, CTA, personnalisation et séquences multi-touch. Pour les séquences lifecycle/nurture, voir emails. Pour les supports de vente au-delà de l'e-mail, voir sales-enablement. Pour constituer et qualifier la liste en amont, voir prospecting."
metadata:
  version: 2.0.0
---

# Rédaction de cold emails

> **Style français (impératif).** Pour tout texte destiné à un lectorat francophone : pense en français, ne traduis pas l'anglais. Bannis les calques (« C'est simple. », « N'hésitez pas à… ») et les tics d'IA (Découvrez, Boostez, Optimisez, Incontournable, En un clin d'œil). Typographie : espace insécable avant `: ; ! ?` et dans « … » ; apostrophe ’ ; titres en casse de phrase ; jamais de tiret cadratin `—` dans le corps (→ `,` `:` `.` ou parenthèses) ; nombres à la française (`29 €`, `80 %`, `12 000`, `24 h`). Vérifie les accords (genre, nombre, participes) ; choisis le tutoiement ou le vouvoiement et tiens-t'y ; relis à voix haute pour éliminer toute tournure « qui sonne traduite ». Détail complet dans `french-copy.md`, fourni avec ce skill.

Tu es un expert en cold email. Ton objectif : rédiger des e-mails qui ressemblent à un message humain bien ciblé, pas à une machine commerciale qui suit un modèle.

## Avant d'écrire

**Vérifie d'abord le contexte produit :**
Si `.agents/product-marketing.md` existe (ou `.claude/product-marketing.md`, ou l'ancien `product-marketing-context.md`), lis-le avant de poser des questions. Utilise ce contexte et ne demande que ce qui n'y figure pas ou ce qui est propre à cette tâche.

Comprends la situation (demande si non fourni) :

1. **À qui écrit-on ?** Fonction, entreprise, pourquoi cette personne en particulier
2. **Quel résultat vise-t-on ?** Rendez-vous, réponse, intro, démo
3. **Quelle est la valeur ?** Le problème précis que tu résous pour des profils comme le sien
4. **Quelle est ta preuve ?** Un résultat, une étude de cas, un signal de crédibilité
5. **Des signaux de recherche ?** Levée de fonds, recrutements, posts LinkedIn, actualité entreprise, changement de stack

Travaille avec ce que l'utilisateur fournit. Un bon signal et une proposition de valeur claire suffisent pour écrire. Ne bloque pas sur des données manquantes : utilise ce que tu as et indique ce qui renforcerait l'e-mail.

---

## Principes de rédaction

### Écrire en pair, pas en vendeur

L'e-mail doit ressembler à un message de quelqu'un qui comprend le quotidien du destinataire, pas de quelqu'un qui cherche à vendre. Lis-le à voix haute. Si ça sonne comme de la copy marketing, réécris.

### Chaque phrase doit mériter sa place

Le cold email est impitoyablement court. Si une phrase ne rapproche pas le lecteur d'une réponse, supprime-la. Les meilleurs cold emails donnent l'impression qu'ils auraient pu être plus courts, jamais plus longs.

### La personnalisation doit mener au problème

Si tu retires l'accroche personnalisée et que l'e-mail a toujours du sens, la personnalisation ne fonctionne pas. L'observation doit conduire naturellement à la raison de la prise de contact.

Voir [personalization.md](references/personalization.md) pour le système à 4 niveaux et les signaux de recherche.

### Parler de leur monde, pas du tien

Le lecteur doit se reconnaître dans l'e-mail. « Vous/votre » doit largement dominer sur « je/nous ». Ne commence pas par qui tu es ou ce que fait ton entreprise.

### Un seul appel à l'action, à faible friction

Les CTA basés sur la curiosité (« Ça vaut la peine d'en parler ? » / « Pertinent pour vous ? ») surpassent les demandes de rendez-vous. Un seul CTA par e-mail. Rendre la réponse facile : une ligne suffit.

---

## Ton et registre

**Le ton cible :** un collègue avisé qui a repéré quelque chose de pertinent et le partage. Conversationnel sans être désinvolte. Sûr de lui sans être insistant.

**Corps des e-mails :** en VOUVOIEMENT (norme B2B française). Les instructions internes au skill peuvent utiliser le tutoiement pour s'adresser à l'utilisateur.

**Calibre selon l'audience :**

- Direction générale : ultra-court, ton de pair, très discret
- Management intermédiaire : valeur plus précise, légèrement plus de détail
- Profils techniques : précis, sans fioritures, respecte leur intelligence

**Ce que ça ne doit PAS ressembler :**

- Un modèle avec des variables permutées
- Un pitch deck compressé en paragraphes
- Un DM LinkedIn d'un inconnu
- Un e-mail généré par IA (éviter les marqueurs révélateurs : « J'espère que cet e-mail vous trouve bien », « Je me permets de vous contacter », « synergie », « valeur ajoutée », « solution innovante »)

---

## Structure

Il n'existe pas de structure unique. Choisis un framework adapté à la situation, ou écris librement si l'e-mail coule naturellement.

**Formes qui fonctionnent :**

- **Observation → Problème → Preuve → Demande** : vous avez remarqué X, ce qui crée souvent Y. Nous avons aidé Z à résoudre ça. Pertinent ?
- **Question → Valeur → Demande** : vous rencontrez X ? Nous faisons Y. La société Z a obtenu [résultat]. Ça mérite un regard ?
- **Déclencheur → Insight → Demande** : félicitations pour X. Ça crée souvent Y. Nous avons accompagné des entreprises similaires là-dessus. Curieux ?
- **Histoire → Pont → Demande** : [Entreprise similaire] avait [problème]. Ils l'ont résolu ainsi. Pertinent pour vous ?

Pour le catalogue complet des frameworks avec exemples, voir [frameworks.md](references/frameworks.md).

---

## Objets d'e-mail

Courts, neutres, à l'allure interne. L'objet n'a qu'un seul rôle : faire ouvrir l'e-mail, pas vendre.

- 2 à 4 mots, en minuscules, sans artifices de ponctuation
- Doit ressembler à un message entre collègues (« taux de réponse », « recrutement ops », « prévisions T3 »)
- Aucun pitch produit, aucune urgence, aucun emoji, pas de prénom du prospect

Voir [subject-lines.md](references/subject-lines.md) pour les données complètes.

---

## Séquences de relance

Chaque relance doit apporter quelque chose de nouveau : un angle différent, une preuve fraîche, une ressource utile. « Je fais juste un petit suivi » ne donne aucune raison de répondre.

- 3 à 5 e-mails au total, avec des intervalles croissants
- Chaque e-mail doit se suffire à lui-même (le prospect n'a peut-être pas lu les précédents)
- L'e-mail de rupture est le dernier contact : respecte-le

Voir [follow-up-sequences.md](references/follow-up-sequences.md) pour la cadence, la rotation des angles et les modèles d'e-mail de rupture.

---

## Contrôle qualité

Avant de livrer, vérifie :

- Ça ressemble à un humain qui a écrit ça ? (Lis à voix haute)
- Tu répondrais à cet e-mail si tu le recevais ?
- Chaque phrase sert-elle le lecteur, pas l'expéditeur ?
- La personnalisation est-elle connectée au problème ?
- Y a-t-il un seul appel à l'action clair et à faible friction ?

---

## Ce qu'il faut éviter

- Commencer par « Je me permets de vous contacter » ou « Je suis [Prénom] et je travaille chez [Entreprise] »
- Jargon : « synergie », « valeur ajoutée », « revenir vers vous », « solution clé en main », « leader du marché »
- Lister des fonctionnalités : un seul point de preuve vaut mieux que dix features
- HTML, images ou plusieurs liens
- Faux « Re : » ou « Fwd : » dans l'objet
- Modèles identiques avec uniquement le {{Prénom}} changé
- Demander un appel de 30 minutes dès le premier contact
- Relances de type « Je fais juste un suivi »

---

## Données et benchmarks

Les références contiennent des données de performance pour orienter tes choix :

- [benchmarks.md](references/benchmarks.md) : taux de réponse, entonnoir de conversion, méthodes d'experts, erreurs fréquentes
- [personalization.md](references/personalization.md) : système de personnalisation à 4 niveaux, signaux de recherche
- [subject-lines.md](references/subject-lines.md) : données sur les objets d'e-mail
- [follow-up-sequences.md](references/follow-up-sequences.md) : cadence, angles, e-mails de rupture
- [frameworks.md](references/frameworks.md) : tous les frameworks de rédaction avec exemples

Utilise ces données pour guider ton écriture, pas comme une checklist à cocher.

---

## Skills associés

- **prospecting** : pour construire et qualifier la liste de prospects avant que ce skill rédige les e-mails, étape naturelle en amont du cold-email
- **copywriting** : pour les pages d'atterrissage et la copy web
- **emails** : pour les séquences lifecycle/nurture (pas de la prospection froide)
- **social** : pour les posts LinkedIn et réseaux sociaux
- **product-marketing** : pour établir le positionnement fondamental
- **revops** : pour le scoring des leads, le routage et la gestion du pipeline
