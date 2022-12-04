# part 1
cat input4.txt | awk -F",|-" 'in1=0;in2=0;{ if($1>=$3 && $2<=$4) in1=1;if($3>=$1 && $4<=$2) in2=1;if(in1 || in2)print 1}' | awk '{s+=$1} END { print s }'

# part 2
cat input4.txt | awk -F",|-" 'in1=0;in2=0;{ if(($1>=$3 && $1<=$4) || ($2>=$3 && $2<=$4)) in1=1;if(($3>=$1 && $3<=$2) || ($4>=$1 && $3<=$1)) in1=1;print in1}' | awk '{s+=$1} END { print s }'
