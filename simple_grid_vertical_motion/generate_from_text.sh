DOCUMENT_OPENING="<!DOCTYPE html>
<html>

<body>

<link rel=\"stylesheet\" type=\"text/css\" href=\"20_wide_40_tall_css.css\"> 

<div class=\"divs_array\">"

DOCUMENT_CLOSE="
</div>

<script src=\"wisp_flame_animation_bundle.js\"></script> 

</body>
</html>"

DIV_ROW_OPEN="<div class=\"line\">"

DIV_ROW_CLOSE="</div>"

COLORED_DIV="<div class=\"square white\"></div>"
BLANK_DIV="<div class=\"square blank\"></div>"

FILE_NAME="lacework_output.html"

####################################################

make_div_row () {
	#Create a row of divs from line
	LINE=$1
	for (( i=0; i<${#LINE}; i++ )); do
		CHAR="${LINE:$i:1}" 
		if [ $CHAR == "X" ]; then
			echo $COLORED_DIV >> $FILE_NAME
		elif [ $CHAR == "O" ]; then
			echo $BLANK_DIV >> $FILE_NAME
		fi

	done
}

####################################################

touch $FILE_NAME

#Add the document open
echo $DOCUMENT_OPENING >> $FILE_NAME

file="./lacework_text.txt"
while IFS= read -r line
do
	echo $DIV_ROW_OPEN >> $FILE_NAME
	make_div_row $line
	echo $DIV_ROW_CLOSE >> $FILE_NAME
done <"$file"

#Add the document close
echo $DOCUMENT_CLOSE >> $FILE_NAME