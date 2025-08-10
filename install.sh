#!/bin/bash
#
# install.sh
#
# This script automates the setup of a Zsh environment with Oh My Zsh,
# Powerlevel10k, and custom configurations from this dotfiles repository.

# --- Helper Functions ---
print_info() {
    # Blue
    printf "\n\e[1;34m%s\e[0m\n" "$1"
}

print_success() {
    # Green
    printf "\e[1;32m%s\e[0m\n" "$1"
}

print_error() {
    # Red
    printf "\e[1;31mError: %s\e[0m\n" "$1"
    exit 1
}

backup_file() {
    if [ -f "$1" ] || [ -h "$1" ]; then
        print_info "Backing up existing $1 to $1.bak..."
        mv "$1" "$1.bak"
    fi
}

# --- Main Setup ---

# Define the location of the dotfiles repository.
# This finds the script's own directory, making it independent of where it's run from.
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
ZSH_CUSTOM_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"

# Step 1: Install Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    print_info "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    print_success "Oh My Zsh installed."
else
    print_info "Oh My Zsh is already installed."
fi

# Step 2: Install Powerlevel10k Theme
P10K_DIR="$ZSH_CUSTOM_DIR/themes/powerlevel10k"
if [ ! -d "$P10K_DIR" ]; then
    print_info "Installing Powerlevel10k theme..."
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$P10K_DIR"
    print_success "Powerlevel10k installed."
else
    print_info "Powerlevel10k is already installed."
fi

# Step 3: Install common plugins (zsh-autosuggestions and zsh-syntax-highlighting)
# You can add more plugins here following the same pattern.
PLUGINS_DIR="$ZSH_CUSTOM_DIR/plugins"
mkdir -p "$PLUGINS_DIR"

# zsh-autosuggestions
AUTOSUGGESTIONS_DIR="$PLUGINS_DIR/zsh-autosuggestions"
if [ ! -d "$AUTOSUGGESTIONS_DIR" ]; then
    print_info "Installing zsh-autosuggestions plugin..."
    git clone https://github.com/zsh-users/zsh-autosuggestions "$AUTOSUGGESTIONS_DIR"
    print_success "zsh-autosuggestions installed."
else
    print_info "zsh-autosuggestions is already installed."
fi

# zsh-syntax-highlighting
SYNTAX_HIGHLIGHTING_DIR="$PLUGINS_DIR/zsh-syntax-highlighting"
if [ ! -d "$SYNTAX_HIGHLIGHTING_DIR" ]; then
    print_info "Installing zsh-syntax-highlighting plugin..."
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$SYNTAX_HIGHLIGHTING_DIR"
    print_success "zsh-syntax-highlighting installed."
else
    print_info "zsh-syntax-highlighting is already installed."
fi


# Step 4: Backup existing config files and create symbolic links
print_info "Backing up old dotfiles and creating symbolic links..."

# Backup and link .zshrc
backup_file "$HOME/.zshrc"
ln -s "$DOTFILES_DIR/.zshrc" "$HOME/.zshrc"
print_success "Linked .zshrc"

# Backup and link .p10k.zsh
backup_file "$HOME/.p10k.zsh"
ln -s "$DOTFILES_DIR/.p10k.zsh" "$HOME/.p10k.zsh"
print_success "Linked .p10k.zsh"

# You can add more files to link here. For example:
# backup_file "$HOME/.gitconfig"
# ln -s "$DOTFILES_DIR/.gitconfig" "$HOME/.gitconfig"
# print_success "Linked .gitconfig"

# Step 5: Set Zsh as the default shell if it isn't already
if [ "$(basename "$SHELL")" != "zsh" ]; then
    print_info "Setting Zsh as the default shell..."
    # Check if chsh command is available
    if command -v chsh >/dev/null 2>&1; then
        chsh -s "$(which zsh)"
        if [ $? -ne 0 ]; then
            print_error "Could not set Zsh as default shell. Please do it manually."
        fi
    else
        print_error "'chsh' command not found. Please set Zsh as your default shell manually."
    fi
else
    print_info "Zsh is already the default shell."
fi

echo ""
print_success "✅ All done!"
print_info "Please restart your terminal or run 'source ~/.zshrc' to apply the changes."


