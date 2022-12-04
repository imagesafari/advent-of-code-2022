#!/bin/bash
# part 1
# cheat with foo.txt mapping, working on it....

j=0;for i in {{a..z},{A..Z}}; do j=$((j+1));echo "$i:$j";done > foo.txt; cat input3.txt | awk 'BEGIN{FS=""}{for(i=1;i<=NF/2;i++)printf $i}{printf " "}{for(i=NF/2+1;i<=NF;i++){printf $i}{printf "\n"}}' | awk '{ print "tr -dc " $2 " <<< " $1 "; echo"}' | bash -e | cut -c1 | awk '{ print "grep " $1 " foo.txt"}' | bash -e | cut -d':' -f 2 | awk '{s+=$1} END {print s}' ; rm foo.txt

# part 2

j=0;for i in {{a..z},{A..Z}}; do j=$((j+1));echo "$i:$j";done > foo.txt;cat input3.txt | paste -d " " - - - | awk '{"tr -dc " $2 " <<< " $1 | getline var1 ; "fold -w1 <<<" var1 "| sort -u | tr -d \\\\n" | getline var4;"tr -dc " $3 " <<< " $2 | getline var2; "fold -w1 <<<" var2 "|sort -u | tr -d \\\\n" | getline var5;"tr -dc " var5 " <<< " var4 | getline output ; print output}' | awk '{ print "grep " $1 " foo.txt"}' | bash -e | cut -d':' -f 2 | awk '{s+=$1} END { print s}';rm foo.txt


