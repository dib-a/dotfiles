#
# ~/.bashrc
#
export PATH="$HOME/bin:$PATH"

[[ $- != *i* ]] && return

alias s='sudo'
alias v='nvim'
alias sv='sudo nvim'

alias install='sudo pacman -S'
alias remove='sudo pacman -Rscn'
alias update='sudo pacman -Sy && sudo pacman -Syyu && sudo pacman -Rns $(pacman -Qdtq)'
alias makepkg='makepkg -si'
alias makeClean='sudo make clean install'

alias sc='cat ~/.bashrc | grep alias'
alias shortcuts='cat /opt/dwm/dwm.h | grep XK_'

alias size='du -sh'

alias wacom-dp='xsetwacom set "Wacom Intuos BT S Pen stylus" MapToOutput DP1'
alias wacom-hdmi='xsetwacom set "Wacom Intuos BT S Pen stylus" MapToOutput HDMI-A-0'

alias nem='systemctl suspend'

alias pm='pulsemixer'
alias audio='pulsemixer'

# screen
alias 100hz='xrandr --output DP2 --mode 3440x1440 --rate 100'

# git
alias ga='git add'
alias gc='git commit -m'
alias gd='git diff'
alias gll='git pull'
alias gsh='git push'

# youtube-dl
alias yt='yt-dlp -f bestvideo+bestaudio --merge-output-format mp4'
alias yt-3='yt-dlp --extract-audio --audio-format mp3'

# custom for programming
#
# sass
alias sass-live='sass --watch scss:css'

# html/css/javascript
alias homepage='live-server & sass --watch scss:css'

# flameshot
alias shot='flameshot gui'

# mpv
alias mpv-loop='mpv --loop-file'

play() {
    local dir="$1"
    local start_index="$2"
    local files=("$dir"/*.{mp3,flac,wav,ogg,aac,m4a})  # Create an array of audio files

    # Check if there are any audio files
    if [ ${#files[@]} -eq 0 ]; then
        echo "No audio files found in the directory."
        return 1
    fi

    # Remove any empty entries in case no files match
    files=("${files[@]//\#}")  # Remove any empty entries

    if [ "$start_index" -ge "${#files[@]}" ]; then
        echo "Starting index is out of range."
        return 1
    fi

    mpv "${files[@]:$start_index}"  # Start from the specified index
}

# paths
alias quran='cd ~/media/quran/mishary-al-afasy'

# scripts
alias start='~/scripts/start.sh'
alias timer='~/scripts/timer.sh'

alias mergePDF='gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=merged.pdf'

alias trash='rm -r ~/.local/share/Trash/files/* && rm -r ~/.local/share/Trash/info/*'
alias askar='zathura ~/media/ebooks/hisnulmuslim.pdf & '

alias windowName='xprop | grep WM_CLASS\(STRING\)'
