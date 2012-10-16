## terminal newline if not at start of line
newline () 
{ 
    tput cuf $(($(tput cols)-2));
    echo -n '  '
}
