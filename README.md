# VSCode extension packs

This repository contains a set of extension packs for VSCode, grouped arbitrarily per "context".

Each "vs-code-..." folder contains a specific extension pack, published on the VS Code Marketplace separately.
Some extensions might be present in multiple extension packs, depending on how relevant it is...

## Changelog

See [CHANGELOG.md](CHANGELOG.md) file

## Publish

- Update the CHANGELOG.md file
- Add/commit/push
- Run one of the scripts:
  - `npm run publish:patch`
  - `npm run publish:minor`
  - `npm run publish:major`
  - or simply `npm run publish` (same as `publish:minor`)

The publish scripts will update the root's package.json version, trigger the publish on VS Code Marketplace (using the new version), then add/commit/tag/push everything.
