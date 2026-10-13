---
name: grilling
description: "Interroge l’utilisateur sans relâche sur un plan, une décision ou une idée, par séries de questions numérotées avec une réponse recommandée, jusqu’à ce que toutes les décisions soient prises. À utiliser quand l’utilisateur veut éprouver son raisonnement, ou dit « cuisine-moi », « interroge-moi », « pose-moi toutes les questions », « fais le tour des décisions »."
---

Interroge l’utilisateur sans relâche, jusqu’à ce que vous partagiez la même compréhension du sujet. Représente-le comme un **arbre de décisions** : chaque décision ouvre celles qui en dépendent.

Avance par **séries**. La **frontière**, ce sont toutes les décisions dont les préalables sont déjà tranchés : les questions que tu peux poser _maintenant_ sans deviner des réponses que tu n’as pas encore. Pose toute la frontière dans une même série, en français : numérote chaque question et donne ta réponse recommandée. Attends ensuite les réponses de l’utilisateur avant la série suivante.

Présente une série ainsi :

```
❓ **Q1. <titre de la question>** : <corps de la question, sur plusieurs paragraphes au besoin, avec les choix possibles>

➡️ <ta réponse recommandée>

---

❓ **Q2. <titre de la question>** : <corps de la question>

➡️ <ta réponse recommandée>
```

Formule chaque question pour qu’un « oui » accepte ta recommandation.

Chaque série de réponses redessine l’arbre : les décisions tranchées repoussent la frontière et débloquent les questions qui en dépendaient. Recalcule la frontière et pose la série suivante. Une question dont la réponse dépend d’une autre question encore ouverte dans la même série appartient à une série _suivante_.

Chercher les _faits_ est ton travail, jamais celui de l’utilisateur. Quand une question de la frontière demande un fait que l’environnement peut donner (fichiers, code, base, outils), va le chercher au lieu de le demander. Si la recherche est longue, confie-la à un sous-agent et pose déjà les questions qui n’en dépendent pas : seules celles qui attendent ce fait attendent son retour. Les _décisions_ reviennent à l’utilisateur : soumets-lui chacune et attends sa réponse.

La séance est finie quand la frontière est vide : chaque branche de l’arbre visitée, rien de supposé en silence. N’agis pas avant que l’utilisateur confirme que vous partagez la même compréhension.
