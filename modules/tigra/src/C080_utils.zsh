function read_timestamp(){
   gawk "BEGIN {print strftime(\"%c\", $@)}"
}

