trap 'source ~/conf/bash_exit' EXIT

for F in ~/conf/bash_profile.d/*.sh
do
    source "$F"
done
