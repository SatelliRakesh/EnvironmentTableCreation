#!/bin/sh
checkCSV ()
{
#echo "Enter your sting: "
#read string1
if [ ! -z "$1" ];then
if grep -qF "$1" $2;then
   echo "Found it"
else
   echo "Sorry this string not in file"
fi
fi

}
