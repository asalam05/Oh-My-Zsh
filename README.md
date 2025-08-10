# My Zsh & Neofetch Dotfiles

This repository contains my personal configuration files for creating a consistent and powerful terminal environment across multiple machines. It automates the setup of Zsh, Oh My Zsh, the Powerlevel10k theme, and Neofetch.

## ✨ Features

* **Zsh Configuration (`.zshrc`):** A robust setup with custom aliases, functions, and optimized settings.
* **Powerlevel10k (`.p10k.zsh`):** A pre-configured, fast, and visually appealing prompt.
* **Neofetch (`neofetch/config.conf`):** A custom configuration for the system information tool.
* **Essential Plugins:** Includes `zsh-autosuggestions` and `zsh-syntax-highlighting` by default.
* **Automated Installation:** An `install.sh` script handles everything from package installation to symlinking configuration files.

---

## 🚀 Getting Started

### Prerequisites

Before you begin, ensure your system has the following installed:

* `git`
* `zsh`
* `curl` or `wget`
* `sudo` access (the script installs packages)
* A [**Nerd Font**](https://www.nerdfonts.com/font-downloads) (e.g., MesloLGS NF) installed and enabled in your terminal for icons to render correctly.

### Installation on a New Machine

1.  **Clone the repository:**
    ```sh
    # Clone it to a location of your choice
    git clone git@github.com:asalam05/Oh-My-Zsh.git
    ```
2.  **Run the installation script:**
    ```sh
    bash install.sh
    ```

The script will handle the rest. Once it's finished, **restart your terminal** to apply all changes.
