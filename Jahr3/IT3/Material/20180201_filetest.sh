#! /bin/bash
file=$1
if [[ -d "$file" ]]
then 
	echo "File '$file' is not a file but a directory"
else
	echo "File '$file' is a file"
fi
if [[ -x "$file" ]]
then 
	echo "File '$file' is executable"
else
	echo "File '$file' is not executable"
fi
if [[ -r "$file" ]]
then 
	echo "File '$file' is readable"
else
	echo "File '$file' is not readable"
fi
if [[ -w "$file" ]]
then 
	echo "File '$file' is writeable"
else
	echo "File '$file' is not writeable"
fi
if [[ -s "$file" ]]
then 
	echo "File '$file' is greater than zero"
else
	echo "File '$file' is zero"
fi
