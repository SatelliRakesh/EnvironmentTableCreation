#!/bin/sh
substr () {
#read string
#substring="PQ"
#grep "PQ" 2.txt >> pq.txt
if [[ "$1" = "$2"* ]]
then
echo 1;
else
echo 0;
fi
}


GenRandom () {
bash random.sh
}
