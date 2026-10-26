# Skill Manager Homebrew tap

Public, unauthenticated distribution for Skill Manager release binaries.

## Install

```sh
brew tap Mel6502-AI/skill-manager
brew install skill-manager
skill-manager version --json
```

The tap supports macOS and Linux on arm64 and amd64. Release archives are
checksum-pinned in [`Formula/skill-manager.rb`](Formula/skill-manager.rb), and the
same checksums are attached to every release.

## Upgrade and uninstall

```sh
brew update
brew upgrade skill-manager
brew uninstall skill-manager
```

Uninstalling removes only the packaged executable. Skill Manager preserves
portable configuration, device-local state, caches, and managed deployments.
Use `skill-manager purge` to preview and explicitly apply data removal.

## Feedback

Report installation or packaging problems in this repository's
[issue tracker](https://github.com/Mel6502-AI/homebrew-skill-manager/issues).
Include `skill-manager version --json`, your OS and architecture, and the output
of a redacted `skill-manager diagnose` export. Do not attach secrets or private
skill content.

The application source is maintained separately. This repository contains only
the public distribution channel and does not accept source-code patches.
