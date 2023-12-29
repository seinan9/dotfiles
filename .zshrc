# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git ssh-agent zsh-autosuggestions zsh-syntax-highlighting z)

source $ZSH/oh-my-zsh.sh

cat ~/.cache/wal/sequences &

# Aliases
# Config
alias zshc="vim ~/.zshrc"
alias ohmyzshc="vim ~/.oh-my-zsh"
alias vimc="vim ~/.vimrc"

# System
alias pac="sudo pacman"
alias pacs="sudo pacman -S"
alias pacr="sudo pacman -Rs"
alias pacu="sudo pacman -Syu"

# Dotfiles
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias dotc="code ~/.zshrc ~/.config/hypr/hyprland.conf ~/.config/kitty/kitty.conf ~/.config/scripts/wallpaper.sh ~/.config/scripts/waybar.sh ~/.config/swaylock/config ~/.config/waybar/config ~/.config/waybar/styles.css"

# Other
alias py="python3"
alias ff="firefox"
alias wallpaper="~/.config/dotfiles/hypr/scripts/wallpaper.sh"

alias clip="xclip -sel clip"
alias clipo="xclip -o"
alias catn="cat -n"
alias grad="./gradlew"

# Path
path+=/opt/gradle/gradle-8.4/bin

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
