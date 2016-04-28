#!/bin/bash 
#This script will run three arguments (one option, source-file and targetdirectory).
#Script name:cpc.sh
#Written by:Jamal Arogundade

op=$1
src=$2
dir=$3

#The script should have at least one user-defined function. 
#Print usage function.
print_usage() {
	echo "Usage: cpc [-cz ] [source-file ] [target-directory ]"
}

#check whether correct number of arguments are entered; otherwise an appropriate
#error message and usage of the script should be displayed.
if [ "$#" -ne 3 ]; then
	echo "Error: Incorrect number of arguments."
	print_usage
fi
#check whether the source file exists. 
if [ -f "$src" ]
then
	echo "$src found."
else
	echo "The source file '$src' does not exist."

	print_usage
fi

if [ ! -d "$dir"]; then
	echo "The directory does not exist, please can you create a directory."
	read -p "Create a directory ? y/n" $make
	else [[ "$make" = "y"]]; then
	mkdir "$dir" 
fi

if [ "$op" != "-c" ] || [ "$op" != "-z" ]; then 
	echo "The first argument has to be '-c' or '-z'"
	print_usage 
elif [ "$op" == "-c" ]; then 
	cp $src $dir 
	echo "Source file '$src' has been copied to directory '$dir'."
fi
#Whether to compress or decompress the file. 

#if [ $src##*.} == "gz"]; then 
	#compress="no"
#elif
	#compress="yes"
			 
#if [ compress = "no" ];then 
#gunzip

#gunzip $src".gz"

fi	
