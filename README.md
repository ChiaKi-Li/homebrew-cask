# Homebrew Cask

[![Cask CI](https://github.com/ChiaKi-Li/homebrew-cask/actions/workflows/ci.yml/badge.svg)](https://github.com/ChiaKi-Li/homebrew-cask/actions/workflows/ci.yml)

[中文](#中文) | [English](#english)

## 中文

社区维护的非官方 Homebrew tap，用于安装尚未收录到官方仓库的 macOS 应用。

### 安装

直接安装应用，将 `token` 替换为下方应用列表中的 Cask 名称：

```bash
brew install --cask ChiaKi-Li/cask/token
```

也可以先添加 tap：

```bash
brew tap ChiaKi-Li/cask
```

如果已手动安装应用到 Homebrew 的目标位置（默认是 `/Applications`），可以使用 `--adopt` 接管现有应用：

```bash
brew install --cask --adopt ChiaKi-Li/cask/token
```

接管前查看 Cask 版本，并与应用内的本地版本比较：

```bash
brew update
brew info --cask ChiaKi-Li/cask/token
```

`--adopt` 不会升级应用。本地版本较旧时先更新应用，较新时等待 tap 更新；版本一致后再接管。若仍提示应用不一致，请核对来源和安装位置，不要用 `--force` 绕过检查。

### 可用应用

<!-- casks:zh:start -->
| 应用 | 简介 | 安装命令 |
|---|---|---|
| [Axolotl Launcher](https://github.com/Mystic-Stars/Axolotl) | Minecraft launcher | `brew install --cask ChiaKi-Li/cask/axolotl-launcher` |
| [ftop](https://github.com/Nongfsq/ftop) | Floating system monitor for Apple Silicon Macs | `brew install --cask ChiaKi-Li/cask/ftop` |
| [Kazumi](https://github.com/Predidit/Kazumi) | Anime streaming application with danmaku support | `brew install --cask ChiaKi-Li/cask/kazumi` |
<!-- casks:zh:end -->

### 更新

更新指定应用（将 `token` 替换为 Cask 名称）：

```bash
brew update
brew upgrade --cask ChiaKi-Li/cask/token
```

或更新全部由 Homebrew 管理的软件：

```bash
brew update
brew upgrade
```

检查上游发布版本：

```bash
brew livecheck --cask ChiaKi-Li/cask/token
```

### 维护

- 定时检查、手动运行 **Update Casks**，或推送 `Casks/**` 修改到 `main`，都会检查全部 Cask 并生成应用表格。
- 有变化时创建或更新 `automation/update-casks` PR；无变化时不创建 PR。
- 验证正式发布资产、SHA256 和 PR 实际改动，并对全部 Cask 执行 Ruby 语法检查及严格在线审计。通过后 squash 合并；失败时保留 PR，不绕过分支保护。

在 **Settings → Actions → General → Workflow permissions** 中允许 Actions 创建 PR。`GITHUB_TOKEN` 创建的 PR 可能不触发 PR CI，因此验证由更新工作流完成。

新增应用只需提交 `Casks/<token>.rb`。自动更新支持单一数字版本、单一 SHA256、随版本变化的 GitHub Releases URL 和显式可靠的 `livecheck`；仓库、标签和资产均从 Cask 解析。中英文应用表格使用 `name`、英文 `desc` 和 `homepage` 自动生成。

多架构分别下载、语言分支、复杂版本及非 GitHub 来源保持原样并报告原因；下载、发布资产或校验错误会使流程失败。新应用仍需人工核对架构、系统要求和应用包，审计不能代替运行测试。

### 免责声明

所有应用均归各自开发者所有。本仓库仅提供 Homebrew 安装定义，与上游项目没有隶属关系，也未获得上游项目的认可或背书。

## English

A community-maintained, unofficial Homebrew tap for macOS applications not available in the official repositories.

### Installation

Install an application directly, replacing `token` with the Cask name from the table below:

```bash
brew install --cask ChiaKi-Li/cask/token
```

Or add the tap first:

```bash
brew tap ChiaKi-Li/cask
```

If you have manually installed the application in Homebrew's target location (usually `/Applications`), use `--adopt` to adopt the existing application:

```bash
brew install --cask --adopt ChiaKi-Li/cask/token
```

Before adopting, compare the Cask version below with the version shown in the application:

```bash
brew update
brew info --cask ChiaKi-Li/cask/token
```

`--adopt` does not upgrade applications. Update an older app first, or wait for the tap to catch up with a newer app. Matching versions are required but do not guarantee adoption; if it fails, check the source and installation location rather than using `--force`.

### Available Casks

<!-- casks:en:start -->
| Application | Description | Installation |
|---|---|---|
| [Axolotl Launcher](https://github.com/Mystic-Stars/Axolotl) | Minecraft launcher | `brew install --cask ChiaKi-Li/cask/axolotl-launcher` |
| [ftop](https://github.com/Nongfsq/ftop) | Floating system monitor for Apple Silicon Macs | `brew install --cask ChiaKi-Li/cask/ftop` |
| [Kazumi](https://github.com/Predidit/Kazumi) | Anime streaming application with danmaku support | `brew install --cask ChiaKi-Li/cask/kazumi` |
<!-- casks:en:end -->

### Updating

Update a specific application, replacing `token` with its Cask name:

```bash
brew update
brew upgrade --cask ChiaKi-Li/cask/token
```

Or update all software managed by Homebrew:

```bash
brew update
brew upgrade
```

To check for upstream releases:

```bash
brew livecheck --cask ChiaKi-Li/cask/token
```

### Maintenance

- Scheduled checks, manual **Update Casks** runs, and `Casks/**` pushes to `main` check all Casks and generate the application tables.
- Changes create or update an `automation/update-casks` PR; no changes means no PR.
- Stable release assets, SHA256 checksums, and actual PR changes are verified, followed by Ruby syntax checks and strict online audits for all Casks. Successful updates are squash-merged; failures leave the PR open without bypassing branch protection.

Allow Actions to create PRs under **Settings → Actions → General → Workflow permissions**. PRs created with `GITHUB_TOKEN` may not trigger PR CI, so the update workflow performs validation.

Add an application by submitting `Casks/<token>.rb`. Automatic updates support one numeric version, one SHA256, a version-dependent GitHub Releases URL, and an explicit reliable `livecheck`. Repository, tag, and asset information come from the Cask. Both application tables use `name`, the English `desc`, and `homepage`.

Separate architecture downloads, language branches, complex versions, and non-GitHub sources remain unchanged with a warning. Download, release asset, or checksum errors fail the workflow. New apps still need manual verification of architectures, macOS requirements, and app bundles; audits do not replace runtime testing.

### Disclaimer

All applications belong to their respective developers. This repository only provides Homebrew installation definitions and is not affiliated with or endorsed by the upstream projects.
