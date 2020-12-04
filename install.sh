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

title "Cache sudo credentials"
sudo -v

title "Install homebrew"
[[ -x "/usr/local/bin/brew" ]] && install_homebrew || subTitle "Homebrew is already installed."

title "Install homebrew packages"
brew tap Homebrew/bundle
(cd && curl -O "https://raw.githubusercontent.com/TSchuermans/system-install/main/.Brewfile")
brew bundle --global

title "Install powerline fonts"
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

title "Install oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sed -i '' -e 's/ZSH_THEME="robbyrussell"/ZSH_THEME="agnoster"/g' ~/.zshrc
echo 'export PATH=$HOME/.composer/vendor/bin:$PATH' | cat - ~/.zshrc > temp && mv temp ~/.zshrc
(cd /tmp && curl -O "https://raw.githubusercontent.com/TSchuermans/system-install/main/Solarized Dark - Patched.itermcolors" && open "/tmp/Solarized Dark - Patched.itermcolors")

title "Configure osx"
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/TSchuermans/system-install/main/.macos)"
