

# 🎨 Instantly Transform Your Terminal!

This repository provides a modern, consistent, and powerful terminal environment for macOS and Linux. It automates the setup of Zsh, Oh My Zsh, Powerlevel10k, Neofetch, and static CLI completions for your most-used tools.

<img width="1917" height="937" alt="Terminal Screenshot" src="https://github.com/user-attachments/assets/91bc7a8d-a3c0-44de-b1b0-c4f09db0d022" />

---

## ✨ Features

- **Zsh Configuration:** Custom aliases, functions, and optimized settings in `.zshrc`.
- **Powerlevel10k Prompt:** Fast, beautiful prompt with AWS profile display in `.p10k.zsh`.
- **Neofetch:** Custom system info display in `neofetch/config.conf`.
- **Essential Plugins:** Includes `zsh-autosuggestions`, `zsh-syntax-highlighting`, and more.
- **Automated Installation:** `install.sh` script handles package installation, symlinking, and completion setup.
- **Static CLI Completions:** Fast, reliable autocompletion for `aws`, `eksctl`, and `kubectl`.

---

## 🚀 Quick Start

### Prerequisites

- `git`
- `zsh`
- `curl` or `wget`
- `sudo` access
- [Nerd Font](https://www.nerdfonts.com/font-downloads) (e.g., MesloLGS NF) enabled in your terminal

### Installation

```sh
git clone git@github.com:asalam05/Oh-My-Zsh.git
cd Oh-My-Zsh
bash install.sh
```
Restart your terminal to apply all changes.

---

## 🧩 Shell Completion Setup

Static completion scripts for CLI tools are generated once and stored in `zsh/completions/`. Your `.zshrc` sources these files for fast, reliable autocompletion:

```sh
[ -f "$HOME/Scripts/dotfiles/zsh/completions/aws.zsh" ] && source "$HOME/Scripts/dotfiles/zsh/completions/aws.zsh"
[ -f "$HOME/Scripts/dotfiles/zsh/completions/eksctl.zsh" ] && source "$HOME/Scripts/dotfiles/zsh/completions/eksctl.zsh"
[ -f "$HOME/Scripts/dotfiles/zsh/completions/kubectl.zsh" ] && source "$HOME/Scripts/dotfiles/zsh/completions/kubectl.zsh"
```

The `install.sh` script will automatically generate these completion files if the tools are installed. If you update a tool, re-run the install script to refresh its completion.

---

## 🔧 AWS CLI Configuration

Disable paging for AWS CLI output in every session by adding this to `.zshrc`:

```sh
export AWS_PAGER=""
```

This ensures AWS CLI output is always shown directly in your terminal, without paging.

---

## 🎨 Apply the Terminal Theme (macOS)

1. Open **Terminal**.
2. Go to **Terminal > Settings...** (or **Preferences...** on older macOS versions).
3. Click the **Profiles** tab.
4. Click the **gear icon** at the bottom and select **Import...**.
5. Select `Oh My Zsh - Pro Terminal Theme.terminal` from the repo.
6. Set the new theme as **Default**.
7. Close Settings. Your Terminal now uses the new theme.
