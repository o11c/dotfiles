## safely remove files
rmecho () 
{ 
    echo rm "$@";
    rm -I "$@"
}
