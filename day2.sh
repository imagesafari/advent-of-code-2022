# part 1
cat input2.txt | awk '{ if ($1=="A") {a=0} ; if ($1=="B") {a=1} ; if ($1=="C") {a=2}; if ($2=="X") {b=0} ; if ($2=="Y") {b=1} ; if ($2=="Z") {b=2}; c = (3 + a - b) % 3 ; if (c==0) {d=3} ; if (c==1) {d=0} ; if (c==2) {d=6} ; e = (b+1+d) ; printf "%s %s %s %s %s\n", a, b, c, d, e }' | cut -d ' ' -f 5 | paste -s -d+ - | bc

# part 2
cat input2.txt | awk '{ if ($1=="A") {a=0} ; if ($1=="B") {a=1} ; if ($1=="C") {a=2}; if ($2=="X") {if (a==0) {b=2} ; if (a==1) {b=0} ; if (a==2) {b=1}} ; if ($2=="Y") {if (a==0) {b=0} ; if (a==1) {b=1} ; if (a==2) {b=2}} ; if ($2=="Z") {if (a==0) {b=1} ; if (a==1) {b=2} ; if (a==2) {b=0}}; c = (3 + a - b) % 3 ; if (c==0) {d=3} ; if (c==1) {d=0} ; if (c==2) {d=6} ; e = (b+1+d) ; printf "%s %s %s %s %s\n", a, b, c, d, e }' | cut -d ' ' -f 5 | paste -s -d+ - | bc

