# part 1:
awk NF=NF RS="" FS="\n" OFS="," ORS="\n" input1.txt | awk -F, '{for(i=t=0;i<NF;) t+=$++i; $0=t}1 {print NR "," $0}' | sort -t, -k2 -nr | sed -e s/,/:/ | head -1

# part 2:
awk NF=NF RS="" FS="\n" OFS="," ORS="\n" input1.txt | awk -F, '{for(i=t=0;i<NF;) t+=$++i; $0=t}1 {print NR "," $0}' | sort -t, -k2 -nr | sed -e s/,/:/ | head -3 | cut -d : -f 2 | awk '{s+=$1} END {print s}'
