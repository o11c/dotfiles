## Save a function from the current environment
savefunc () 
{ 
    local ARG;
    for ARG in "$@";
    do
        read -p "Help for $ARG ## ";
        { 
            echo "## $REPLY";
            declare -f $ARG
        } > ~/conf/bash-functions.d/$ARG.sh;
    done
}
