CreateFile () {

target=target.txt
dest=dest.txt

#Creating Target file
   if [ ! -f $target ]; then
    echo Target Env,Target Text,Unique_ID >> $target
   fi
#Creating Dest file
   if [ ! -f $dest ]; then
    echo Target Env,Target Text,c1,c2,c3 >> $dest
   fi

}
