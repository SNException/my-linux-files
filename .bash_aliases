alias icat='kitty +kitten icat'
alias startup_time='systemd-analyze blame | head'
alias tm='xfce4-taskmanager'
alias settings='xfce4-settings-manager'
alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"
alias neofetch='neofetch --color_blocks off'
alias sha='sha256sum'
alias res='xrandr | grep \* | xargs'
alias tsize='tput cols && tput lines'
alias os_version='lsb_release -sr'
alias kernel_version='uname -r'
alias angband='~/angband/src/angband -msdl2'
alias less='less -X'
alias sclear='history -c && clear && tput reset'
alias file_type='find . -type f -print0 | xargs -0 file'
function open () {
    xdg-open "$@" >/dev/null 2>&1 &
}
alias open='open'
