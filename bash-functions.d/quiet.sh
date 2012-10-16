## suppress output of a command
quiet () 
{ 
    "$@" > /dev/null 2>&1
}
