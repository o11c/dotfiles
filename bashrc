# do nothing if not interactive
test -z "$PS1" && return

for F in ~/conf/bashrc.d/*.sh
do
    source "$F"
done
