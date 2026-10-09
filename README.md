# Homebrew Cask

[![Cask CI](https://github.com/ChiaKi-Li/homebrew-cask/actions/workflows/ci.yml/badge.svg)](https://github.com/ChiaKi-Li/homebrew-cask/actions/workflows/ci.yml)

An unofficial Homebrew tap for macOS applications.

This repository provides community-maintained Casks for applications that are not available through the official Homebrew repositories.

## Installation

Install an application directly:

```bash
brew install --cask ChiaKi-Li/cask/ftop
```

Or add the tap first:

```bash
brew tap ChiaKi-Li/cask
```

## Available Casks

| Application | Description | Installation |
|---|---|---|
| [ftop](https://github.com/Nongfsq/ftop) | Floating system monitor for Apple Silicon Macs | `brew install --cask ChiaKi-Li/cask/ftop` |
| [Kazumi](https://github.com/Predidit/Kazumi) | Anime streaming application with danmaku support | `brew install --cask ChiaKi-Li/cask/kazumi` |

## Updating

Update Homebrew and installed applications:

```bash
brew update
brew upgrade --cask
```

To check for upstream releases:

```bash
brew livecheck --cask ChiaKi-Li/cask/ftop
```

## Maintenance

- Casks are validated using GitHub Actions.
- Upstream releases are monitored for updates.
- Automated updates are proposed through pull requests and reviewed before merging.

## Disclaimer

This is an independent, unofficial Homebrew tap.

All applications belong to their respective developers. This repository only provides Homebrew installation definitions and is not affiliated with or endorsed by the upstream projects.