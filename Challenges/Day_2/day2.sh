#!/bin/bash

function list_files_directories() {
	echo "Welcome to Interactive File Explorer"
	echo "Listing all files and directories in the current path"
	echo "-----------------------------------------------------"
	ls -lh --group-directories-first
}

function character_count() {
	echo "Enter the text to count the characters or press Enter to exit: "
	while read -r input; do
	    if [[ -z "$input" ]]; then
	        break
	    fi
       
            local char_count="${#input}"
            echo "Number of characters in the text is: $char_count"
	    echo "Enter another line of text or press Enter to exit"
	done	

}

function main() {
	list_files_directories

	while true; do
	    read -p "Enter q to Quit or Enter to refresh the list: " input

	    if [[ $input == "q" ]]; then
	      echo "Exited the Interactive File Explorer"
	      break

	    else
	       clear
	       list_files_directories
	    fi
	done

}

main
character_count
