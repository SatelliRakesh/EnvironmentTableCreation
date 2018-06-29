printEnv () {
target=target.txt
dest=dest.txt
prod=pp.txt
dev=pd.txt
qa=pq.txt
#Creating Prod file
   if [[ ! -f $prod ]]; then
    echo Target Env,Target Text,c1,c2,c3 > $prod
   fi
#Creating Dev File
   if [[ ! -f $dev ]]; then
    echo Target Env,Target Text,c1,c2,c3 > $dev
    #cat $dev
   fi
#Creating QA file
   if [[ ! -f $qa ]]; then
    echo Target Env,Target Text,c1,c2,c3 > $qa
   fi
	 op2=$(substr $1 PQ)
	 #echo "$op2 3"
         if [[ $op2 == 1 ]];then
           grep $1 $dest >> $qa
           echo "----------------QA-------------------"
           printTable ',' "$(cat $qa)"
	   str=$1
	   echo Target Env,Target Text,c1,c2,c3 > $num.txt
	   num=${str:4}
	   grep "$num" $qa >> $num.txt
	   echo "----------------Grouping By ID-------------------"
           printTable ',' "$(cat $num.txt)"
           rm $num.txt
#           check=$(checkCSV $num $qa)
#	   echo "Num $num"
         fi
	rm $num.txt
         #if [[ $op2 == 1 ]];then
          # grep "PQ" $dest > $qa
           #echo "----------------QA-------------------"
#           printTable ',' "$(cat $qa)"
 #        fi
         op3=$(substr $1 PD)
  	 #echo "$op2 3"
         if [[ $op3 == 1 ]];then
           grep "PD" $dest >> $dev
           echo "---------------Dev------------------"
           printTable ',' "$(cat $dev)"
         fi
         op4=$(substr $1 PP)
	 #echo "$op2 3"
         if [[ $op4 == 1 ]];then
           grep "PP" $dest >> $prod
           echo "--------------prod------------------"
           printTable ',' "$(cat $prod)"
         fi
}
