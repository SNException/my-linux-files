alias tm='xfce4-taskmanager'
alias settings='xfce4-settings-manager'
alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"
alias neofetch='neofetch --color_blocks off'
alias sha='sha256sum'
alias res='xrandr | grep \* | xargs'
alias os_version='lsb_release -sr'
alias kernel_version='uname -r'
alias angband='~/angband/src/angband -msdl2'
alias less='less -X'
function open () {
    xdg-open "$@" >/dev/null 2>&1 &
}
alias open='open'
