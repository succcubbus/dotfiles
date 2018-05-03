#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo $DIR

ln -sf "$DIR/.vimrc" "$HOME/.vimrc"
ln -sf "$DIR/.zshrc" "$HOME/.zshrc"
ln -sf "$DIR/.Xmodmap" "$HOME/.Xmodmap"
ln -sf "$DIR/.tmux.conf" "$HOME/.tmux.conf"
ln -sf "$DIR/.gitconfig" "$HOME/.gitconfig"

if [[ -d "$HOME/.config/termite" ]]; then
    rm -rf "$HOME/.config/termite"
    ln -sf "$DIR/.config/termite" "$HOME/.config/termite"
fi

if [[ -d "$HOME/.config/trizen" ]]; then
    rm -rf "$HOME/.config/trizen"
    ln -sf "$DIR/.config/trizen" "$HOME/.config/trizen"
fi

ln -sf "$DIR/.config/oni/config.js" "$HOME/.config/oni/config.js"
ln -sf "$DIR/.config/oni/config.tsx" "$HOME/.config/oni/config.tsx"

if [[ -d "$HOME/.oh-my-zsh/custom" ]]; then
    ln -sf "$DIR/.oh-my-zsh/custom/alias.zsh" "$HOME/.oh-my-zsh/custom/alias.zsh"
    ln -sf "$DIR/.oh-my-zsh/custom/startx.zsh" "$HOME/.oh-my-zsh/custom/startx.zsh"
fi
