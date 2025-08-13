# 🎨 Instantly Transform Your Terminal!

Give your macOS Terminal a fresh, modern look in seconds! With just a few clicks, you can import a stunning custom theme and enjoy a visually appealing, personalized command-line experience. Follow these simple steps to make your Terminal stand out from the
rest.

# Zsh & Neofetch Configuration

This repository contains my personal configuration files for creating a consistent and powerful terminal environment across multiple machines. It automates the setup of Zsh, Oh My Zsh, the Powerlevel10k theme, and Neofetch.
<img width="1917" height="937" alt="image" src="https://github.com/user-attachments/assets/91bc7a8d-a3c0-44de-b1b0-c4f09db0d022" />

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

### Applying theme in Mac Termial
1. Open **Terminal**.
2. Go to the menu bar and select **Terminal > Settings...** (or **Preferences...** on older macOS versions).
3. In the Settings window, click the **Profiles** tab.
4. At the bottom of the sidebar, click the **gear icon** and select **Import...**.
5. Locate and select the exported Terminal theme file from downloaded repo - `Oh My Zsh - Pro Terminal Theme.terminal`
6. The new theme will appear in the list of profiles. Select it and click **Default** to make it your default profile.
7. Close the Settings window. Your Terminal will now use the new theme.
