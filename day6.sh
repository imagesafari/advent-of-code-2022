# this one was fun
# part 1
cat input6.txt | awk '{ for (i=1;i<=length($0);i++) { block = substr($0,i,4); offset = i+3 ; printf("block: %s offset: %s ",block,offset);delete a;for (j=1;j<=length(block);j++) { foo = a[substr(block,j,1)]++; printf("%s",foo);sync[j]=foo}check = ""; for (z=1;z<=length(sync);z++) { check = check "" sync[z] };printf(" %s sync: %s",foo,check);if (check=="0000") { printf(" %s\n","detected at offset " offset);break} else { print "" }}}' | grep detected

# part 2
cat input6.txt | awk '{ for (i=1;i<=length($0);i++) { block = substr($0,i,14); offset = i+13 ; printf("block: %s offset: %s ",block,offset);delete a;for (j=1;j<=length(block);j++) { foo = a[substr(block,j,1)]++; printf("%s",foo);sync[j]=foo}check = ""; for (z=1;z<=length(sync);z++) { check = check "" sync[z] };printf(" %s sync: %s",foo,check);if (check=="00000000000000") { printf(" %s\n","detected at offset " offset);break} else { print "" }}}' | grep detected

