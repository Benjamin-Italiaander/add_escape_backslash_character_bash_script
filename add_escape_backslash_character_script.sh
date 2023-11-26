#!/bin/bash
# Send input to this file by creating a var like in this example $input
# input=$(cat somefile.txt); ./this_script.sh $input

#This lines take care i can use the asteriks (*) character in my array
set +f
GLOBIGNORE=*

# Define the characters to search and add a escape (\ backslash) character in front
# The first in line always needs to be the double backslahs (\\) becaus otherwise you get double
# escapes in the output 
specialCharacters=("\\" "<" ">" "'" "@" "#" "$" "%" "^" "(" ")" "*")
input=$@

#Check if $input is filled
if [ -z "$input" ]
	then
		#Var $input has no content
        	printf  " " 
	else 
		  output=$(echo $input | txt2html)
    
		  for str in ${specialCharacters[@]}; do
  		    output=$(echo $output |  sed "s/['$str']/\\\&/g")
			done

      # after all the characters is add a escape in front of the double quote " " because i was not able to store a doule quote it in a array          
		  output=$(echo $output | sed "s/['\"']/\\\&/g" )
		  echo $output
fi
