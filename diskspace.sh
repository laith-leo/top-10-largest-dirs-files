
#!/bin/bash
cd /
FS='./';resize;clear;date;df -h $FS; echo "Largest Directories:"; nice -n19 find $FS -mount -type d -print0 |xargs -0 du -k|sort -runk1|head -n20|awk -F'\t' '{printf "%8d MB\t%s\n",($1/1024),$NF}' ;echo "Largest Files:"; nice -n 19 find $FS -mount -type f -print0 2>/dev/null| xargs -0 du -k | sort -rnk1| head -n20 |awk -F'\t' '{printf "%8d MB\t%s\n",($1/1024),$NF}'; exec 2>/dev/null
