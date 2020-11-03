#!/usr/bin/env bash

subTitle() {
    echo ">> ${1}"
}

title() {
    printf "%0.s\n" {1..5}
    printf "%0.sx" {1..80} && echo
    subTitle "{1}"
    printf "%0.sx" {1..80} && echo
}

install_homebrew() {
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
}

title "Install homebrew"
[[ -x "/usr/local/bin/brew" ]] && install_homebrew || subTitle "Homebrew is already installed."

title "Install homebrew packages"
brew tap Homebrew/bundle
echo '' > ~/.Brewfile
echo 'tap "homebrew/bundle"' >> ~/.Brewfile
echo 'tap "homebrew/cask"' >> ~/.Brewfile
echo 'tap "homebrew/cask-versions"' >> ~/.Brewfile
echo 'tap "homebrew/core"' >> ~/.Brewfile
echo 'tap "homebrew/services"' >> ~/.Brewfile
echo 'brew "zsh"' >> ~/.Brewfile
echo 'brew "openssl"' >> ~/.Brewfile
echo 'brew "wget"' >> ~/.Brewfile
echo 'brew "curl"' >> ~/.Brewfile
echo 'brew "git"' >> ~/.Brewfile
echo 'brew "python"' >> ~/.Brewfile
echo 'brew "php"' >> ~/.Brewfile
echo 'brew "mariadb"' >> ~/.Brewfile
echo 'brew "autojump"' >> ~/.Brewfile
echo 'brew "telnet"' >> ~/.Brewfile
echo 'cask "iterm2"' >> ~/.Brewfile
echo 'cask "1password"' >> ~/.Brewfile
echo 'cask "1password-cli"' >> ~/.Brewfile
echo 'cask "google-chrome"' >> ~/.Brewfile
echo 'cask "firefox"' >> ~/.Brewfile
echo 'cask "microsoft-edge"' >> ~/.Brewfile
echo 'cask "phpstorm"' >> ~/.Brewfile
echo 'cask "datagrip"' >> ~/.Brewfile
echo 'cask "visual-studio-code"' >> ~/.Brewfile
echo 'cask "slack"' >> ~/.Brewfile
echo 'cask "microsoft-teams"' >> ~/.Brewfile
echo 'cask "zoomus"' >> ~/.Brewfile
echo 'cask "contexts"' >> ~/.Brewfile
echo 'cask "dropbox"' >> ~/.Brewfile
echo 'cask "google-backup-and-sync"' >> ~/.Brewfile
echo 'cask "daisydisk"' >> ~/.Brewfile
echo 'cask "sequel-pro"' >> ~/.Brewfile
echo 'cask "spotify"' >> ~/.Brewfile
echo 'cask "whatsapp"' >> ~/.Brewfile
echo 'cask "logitech-options"' >> ~/.Brewfile
brew bundle --global