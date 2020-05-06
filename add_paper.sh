paper_name=$1
paper_link=$2
paper_short=$3

# appending 
echo "* $paper_name [[link]($paper_link)], [[Notes](papers/$paper_short.md)]" >> README.md

# creating file
touch papers/$paper_short.md
echo "### $paper_name" >> papers/$paper_short.md
