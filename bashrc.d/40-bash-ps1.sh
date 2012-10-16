test -z "$debian_chroot" && debian_chroot=$(cat /etc/debian_chroot 2>/dev/null)
_dchr=${debian_chroot:+($debian_chroot) }
PS1='${_dchr}\[\e[92m\]\u@\h\[\e[22;39m\]:\[\e[94m\]\w\[\e[22;39m\]'
PS1_BOLD='${_dchr}\[\e[1;32m\]\u@\h\[\e[22;39m\]:\[\e[1;34m\]\w\[\e[22;39m\]'
PS1_NOCOLOR='${_dchr}\u@\h:\w'
# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*|terminator)
    PS1="\[\e]0;$PS1_NOCOLOR\a\]$PS1";;
linux|fbterm)
    PS1="$PS1_BOLD"
esac

# TODO add stuff like __git_ps1
PS1="$PS1"'\$ '
