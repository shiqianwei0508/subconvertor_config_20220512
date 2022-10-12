googleCN=`cat GoogleCN.list |awk -F "," '{print $2}' |grep -v ^$`

for i in $googleCN
do
	dig @23.197.152.0 $i
	[[ $? == 0 ]] && echo $i >> isBaned.txt
done
