Floor=100
Roof=999
while [[ "$number" -le $Floor ]]
do
  number=$RANDOM
  let "number %= $Roof"  # Scales $number down within $RANGE.
done
#echo "Floor $Floor"
#echo "Range $Roof"
echo $number

