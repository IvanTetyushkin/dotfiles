# make dir and enter it
function mkd() {
	mkdir -p "$@" && cd "$_";
}
#function run
run() {
    number=$1
    shift
    for i in `seq $number`; do
       $@
    done
}

save_command(){
    echo $1 &>> $LOGBOOK    
}

list_saved(){
    cat $LOGBOOK    
}
