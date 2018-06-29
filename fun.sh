# Define your function here
MainFunction () {
   target=target.txt
   dest=dest.txt
   prod=pp.txt
   dev=pd.txt
   qa=pq.txt
   echo "Enter the Target Environment"
   read TargetEnv
   #echo $TargetEnv
   CreateFile
   Env_ID=$(GenRandom)
#Checking if the record is present in target
   CheckNum=$(checkCSV $TargetEnv,$TargetEnv,$Env_ID $target)
   CheckTargetEnv_target=$(checkCSV $TargetEnv $target)
#   echo "$op 1"
	if [[ "$CheckTargetEnv_target" == "Found it" ]];
	   then
	     op1=$(checkCSV $TargetEnv $dest)
	 #    echo "$op1 2"
	       if [[ "$op1" == "Found it" ]];
	       then
	         printEnv $TargetEnv
	       else
	          echo $TargetEnv,$TargetEnv,0,0,0 >> $dest
	       fi
	#   echo $TargetEnv,0,0,0 >> $dest
	# UID= $( bash random.sh)
	#   echo $op
   else
     echo "Inserting a new value $TargetEnv"
     echo $TargetEnv,$TargetEnv,$Env_ID >> $target
     echo $TargetEnv,$TargetEnv,0,0,0 >> $dest
   fi
   echo "-------------Target Table---------------"
   printTable ',' "$(cat $target)"
#   printTable ',' "$(cat $dest)"
#   rmFiles
}

