## print info about running shell jobs
jobs-info () 
{ 
    local STOPPED=$(jobs -p -s | wc -l) RUNNING=$(jobs -p -r | wc -l);
    test $STOPPED -eq 0 || echo $STOPPED stopped\;;
    test $RUNNING -eq 0 || echo $RUNNING running\;
}
