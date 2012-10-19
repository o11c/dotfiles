## filter C++ symbol names, then run less
c++less () 
{ 
    for ARG in "$@";
    do
        { 
            echo $ARG;
            c++filt < $ARG
        } | less;
    done
}
