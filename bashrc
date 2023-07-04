#
# ~/.bashrc
#

[[ $- != *i* ]] && return

alias s='sudo'
alias v='nvim'
alias sv='sudo nvim'

alias install='sudo pacman -S'
alias remove='sudo pacman -Rscn'
alias update='sudo pacman -Sy && sudo pacman -Syyu'
alias makepkg='makepkg -si'
alias makeClean='sudo make clean install'

alias sc='cat ~/.bashrc'
alias shortcuts='cat ~/.bashrc'

alias size='du -sh'

alias wacom-dp='xsetwacom set "Wacom Intuos BT S Pen stylus" MapToOutput DisplayPort-0'
alias wacom-hdmi='xsetwacom set "Wacom Intuos BT S Pen stylus" MapToOutput HDMI-A-0'

alias nem='systemctl suspend'

alias pm='pulsemixer'
alias audio='pulsemixer'

#git
alias ga='git add'
alias gc='git commit -m'
alias gd='git diff'
alias gll='git pull'
alias gsh='git push'

# youtube-dl
alias yt='yt-dlp'
alias yt-3='yt-dlp --extract-audio --audio-format mp3'

# custom for programming
#
# sass
alias sass-live='sass --watch scss:css'

# html/css/javascript
alias homepage='live-server & sass --watch scss:css'

