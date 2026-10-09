# Homebrew Cask

[![Cask CI](https://github.com/ChiaKi-Li/homebrew-cask/actions/workflows/ci.yml/badge.svg)](https://github.com/ChiaKi-Li/homebrew-cask/actions/workflows/ci.yml)

[中文](#中文) | [English](#english)

## 中文

一个用于 macOS 应用的非官方 Homebrew tap。

本仓库提供社区维护的 Cask，方便安装尚未收录到 Homebrew 官方仓库的应用。

### 安装

直接安装应用，将 `<token>` 替换为下方应用列表中的 Cask 名称：

```bash
brew install --cask "ChiaKi-Li/cask/<token>"
```

也可以先添加 tap：

```bash
brew tap ChiaKi-Li/cask
```

如果已手动安装应用到 Homebrew 的目标位置（默认是 `/Applications`），可以使用 `--adopt` 接管现有应用：

```bash
brew install --cask --adopt "ChiaKi-Li/cask/<token>"
```

接管前请确认本地应用版本与 Cask 提供的版本一致。查看 Cask 版本：

```bash
brew info --cask "ChiaKi-Li/cask/<token>"
```

### 可用应用

| 应用 | 简介 | 安装命令 |
|---|---|---|
| [Axolotl Launcher](https://github.com/Mystic-Stars/Axolotl) | Minecraft 启动器 | `brew install --cask ChiaKi-Li/cask/axolotl-launcher` |
| [ftop](https://github.com/Nongfsq/ftop) | 用于 Apple Silicon Mac 的浮动系统监视器 | `brew install --cask ChiaKi-Li/cask/ftop` |
| [Kazumi](https://github.com/Predidit/Kazumi) | 支持弹幕的番剧在线观看应用 | `brew install --cask ChiaKi-Li/cask/kazumi` |

### 更新

更新 Homebrew 和已安装的应用：

```bash
brew update
brew upgrade --cask
```

检查上游发布版本：

```bash
brew livecheck --cask ChiaKi-Li/cask/ftop
```

### 维护

- 使用 GitHub Actions 验证 Cask。
- 检查上游发布版本以发现更新。
- 自动更新通过 PR 提出，经过审阅后再合并。
- 创建更新 PR 前，验证发布资产、校验值，并对所有 Cask 执行严格在线 Homebrew 审计。更新不会自动合并。
- 需要在 **Settings → Actions → General → Workflow permissions** 中允许 GitHub Actions 创建 PR。使用 `GITHUB_TOKEN` 创建的 PR，其 CI 可能需要手动批准；更新工作流本身也会执行验证。

要手动检查更新工作流，请在 Actions 页面运行 **Update Casks**。所有 Cask 都是最新版时，不会创建 PR；发现较新的稳定版本时，工作流会创建或更新 `automation/update-casks` 分支的 PR，供维护者审阅。

### 免责声明

这是一个独立维护的非官方 Homebrew tap。

所有应用均归各自开发者所有。本仓库仅提供 Homebrew 安装定义，与上游项目没有隶属关系，也未获得上游项目的认可或背书。

## English

An unofficial Homebrew tap for macOS applications.

This repository provides community-maintained Casks for applications that are not available through the official Homebrew repositories.

### Installation

Install an application directly, replacing `<token>` with the Cask name from the table below:

```bash
brew install --cask "ChiaKi-Li/cask/<token>"
```

Or add the tap first:

```bash
brew tap ChiaKi-Li/cask
```

If you have manually installed the application in Homebrew's target location (usually `/Applications`), use `--adopt` to adopt the existing application:

```bash
brew install --cask --adopt "ChiaKi-Li/cask/<token>"
```

Before adopting, confirm that the installed application version matches the version provided by the Cask. Check the Cask version with:

```bash
brew info --cask "ChiaKi-Li/cask/<token>"
```

### Available Casks

| Application | Description | Installation |
|---|---|---|
| [Axolotl Launcher](https://github.com/Mystic-Stars/Axolotl) | Minecraft launcher | `brew install --cask ChiaKi-Li/cask/axolotl-launcher` |
| [ftop](https://github.com/Nongfsq/ftop) | Floating system monitor for Apple Silicon Macs | `brew install --cask ChiaKi-Li/cask/ftop` |
| [Kazumi](https://github.com/Predidit/Kazumi) | Anime streaming application with danmaku support | `brew install --cask ChiaKi-Li/cask/kazumi` |

### Updating

Update Homebrew and installed applications:

```bash
brew update
brew upgrade --cask
```

To check for upstream releases:

```bash
brew livecheck --cask ChiaKi-Li/cask/ftop
```

### Maintenance

- Casks are validated using GitHub Actions.
- Upstream releases are monitored for updates.
- Automated updates are proposed through pull requests and reviewed before merging.
- Update proposals validate release assets, checksums, and all Casks with strict online Homebrew audits before creating a PR. Updates are never automatically merged.
- GitHub Actions must be allowed to create pull requests under **Settings → Actions → General → Workflow permissions**. PR CI created with `GITHUB_TOKEN` may require manual approval; validation also runs in the update workflow itself.

To check the update workflow manually, run **Update Casks** from the Actions tab. When all Casks are current, no PR is created. When a newer stable release is available, the workflow creates or updates `automation/update-casks` for review.

### Disclaimer

This is an independent, unofficial Homebrew tap.

All applications belong to their respective developers. This repository only provides Homebrew installation definitions and is not affiliated with or endorsed by the upstream projects.
