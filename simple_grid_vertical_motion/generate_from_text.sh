DOCUMENT_OPENING="<!DOCTYPE html>
<html>

<script>
</script>

<body>

<link rel="stylesheet" type="text/css" href="20_wide_40_tall_css.css"> 

<div class="divs_array">"

DOCUMENT_CLOSE="
</div>

<script src="wisp_flame_animation_bundle.js"></script> 

</body>
</html>

</body>
</html>"

DIV_ROW_OPEN="<div class="line">"

DIV_ROW_CLOSE="</div>"

COLORED_DIV="<div class=square white></div>"
BLANK_DIV="<div class=square blank></div>"

####################################################

make_div_row () {
	#Create a row of divs from line
	LINE=$1
	#${parameter//pattern/string}
	#echo $LINE | sed 'y/X/$COLORED_DIV/'
	for (( i=0; i<${#LINE}; i++ )); do
		CHAR="${LINE:$i:1}" 
		if [ $CHAR == "X" ]; then
			echo $COLORED_DIV
		elif [ $CHAR == "O" ]; then
			echo $BLANK_DIV
		fi

	done
}

####################################################

touch lacework_output.html

#Add the document open
echo $DOCUMENT_OPENING >> lacework_output.html


#Add the table by building up rows
#for ((c=0; c<=$ARRAY_HEIGHT; c++ ))
#do
#	echo $DIV_ROW_OPEN >> lacework_output.html
#	make_div_row
#	echo $DIV_ROW_CLOSE >> lacework_output.html
#done

file="./lacework_text.txt"
while IFS= read -r line
do
	#echo "$line"
	make_div_row $line
done <"$file"

#Add the document close
echo $DOCUMENT_CLOSE >> lacework_output.html