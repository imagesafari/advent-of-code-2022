# part 1

rm -rf foo ; mkdir foo ; cat input7.txt | awk '{ if ($2=="cd") { if ($3=="/"){ print "cd foo" } else { print "cd " $3}} else if ($2=="ls"){next} else if ($1=="dir") { print "mkdir " $2} else if ($1~/^[0-9]/) { print "truncate -s " $1 " " $2 }}' | bash -e ; find foo -type d -print -exec du --apparent-size -s -b {} \; | awk '{ if ($0~/^foo/) { s=0;dir=$0 } else { if ($0~/^[0-9]/) { s=s+$1;cmd="find " dir " -type d | wc -l";cmd | getline n;s=s-n*4096 ; if (s<=100000){z=z+s}}}} END { print z }'

# part 2

find foo -type d -print -exec du --apparent-size -s -b {} \; | awk '{ if ($0=="foo") { top=1 } ; if ($0~/^foo/) { s=0;dir=$0 } else { if ($0~/^[0-9]/) { s=s+$1;cmd="find " dir " -type d | wc -l";cmd | getline n;s=s-n*4096 ; if(top) { need=70000000-s;need=30000000-need;top=0} ; if (s>need)print s }}}' | sort -n | head -1
