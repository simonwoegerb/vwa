FILES=$(find . -name \*.tex)
echo $FILES
words=0
lines=0
chars=0
for file in $FILES
do
	words=$words+$(detex $file | wc -w)
	lines=$lines+$(detex $file | wc -l)
	chars=$chars+$(detex $file | wc -m)
done
words=$((words))
lines=$((lines))
chars=$((chars))

while read line; do
if [[ $line = Word* ]] 
then
	echo "Word Count: $words"
elif [[ $line = Char* ]]
then 	
	echo "Char Count: $chars"
elif [[ $line = Line* ]]
then
	echo "Line Count: $lines"
else
	echo $line
fi
done < README.md > /tmp/README.md.txt_csrae
mv /tmp/README.md.txt_csrae README.md
