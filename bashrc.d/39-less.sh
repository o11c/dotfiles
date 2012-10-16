if quiet command -v lesspipe
then
    export LESSOPEN="| lesspipe %s"
fi
