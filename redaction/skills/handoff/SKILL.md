---
name: handoff
description: "Résume la conversation en cours dans un document de passation, rédigé en français, qu’un autre agent reprendra."
argument-hint: "À quoi servira la prochaine séance ?"
disable-model-invocation: true
---

Rédige en français un document de passation qui résume la conversation en cours, pour qu’un agent qui ne l’a pas vue reprenne le travail. Enregistre-le dans le dossier temporaire du système (`$TMPDIR`, sinon `/tmp` ; `%TEMP%` sous Windows), jamais dans l’espace de travail.

Ajoute au document une section « Skills suggérées » qui nomme les skills que le prochain agent devra charger avec l’outil Skill.

Ne recopie pas ce que d’autres documents portent déjà (specs, plans, ADR, tickets, commits, diffs) : renvoie à leur chemin ou à leur URL.

Masque toute information sensible : clé d’API, mot de passe, donnée personnelle.

Si l’utilisateur a passé des arguments, lis-les comme la description de ce sur quoi portera la prochaine séance, et oriente le document en conséquence.
