alias play='vlc '
alias rot13="tr 'A-Za-z' 'N-ZA-Mn-za-m'"
alias ll='ls -Ailh --color=auto'
alias angband='~/Angband-4.2.4/src/angband -mgcu'
alias nethack='~/nh/install/games/nethack'
alias sclear='history -c && tput reset'
alias banish='shred -zuv '
alias open='xdg-open '

sudo ()
{
    ctrl_c ()
    {
        printf $VT_RESET 
    }
    trap ctrl_c INT

    VT_RESET='\033[0;0m'
    VT_BOLD='\033[0;1m'
    VT_YELLOW='\033[0;93m'

    printf $VT_YELLOW
    echo "Please be sure that you trust whatever progamm your"
    echo "about to execute with root privileges."
    echo "Be aware that this could have dire consequences in case of"
    echo "malicious instructions."
    echo "You are about to give FULL control of your computer to '$@'."
    printf $VT_RESET

    printf $VT_BOLD
    read -p "Do you want to continue (y/n)? " -n 1 -r
    printf $VT_RESET

    echo ""
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo ""
        /usr/bin/sudo "$@"
    fi
}
