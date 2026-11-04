---
name: build-runner
description: Régénère les fichiers codegen Freezed et Riverpod via build_runner
disable-model-invocation: false
---

# Build Runner

Régénère les fichiers `.g.dart` et `.freezed.dart` après modification de modèles `@freezed` ou providers `@riverpod`.

## Commande

```bash
cd "$(git rev-parse --show-toplevel)/app" && dart run build_runner build --delete-conflicting-outputs
```

## Quand l'utiliser

- Après ajout/modification d'un provider `@riverpod`
- Après ajout/modification d'un modèle `@freezed`
- Quand des erreurs de compilation mentionnent `.g.dart` ou `.freezed.dart` manquants

## Comportement

1. Exécuter la commande build_runner ci-dessus
2. Vérifier la sortie pour des erreurs de génération
3. Si erreurs : les signaler à l'utilisateur avec le fichier source concerné
