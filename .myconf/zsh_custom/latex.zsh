find-latex-files() {
    find "$1" -type f \( \
	    -name "*.aux" \
	    -o -name "*.blg" \
	    -o -name "*.ilg" \
	    -o -name "*.ind" \
	    -o -name "*.out" \
	    -o -name "*.log" \
	    -o -name "*.idx" \
	    -o -name "*.synctex.gz" \
	    -o -name "*.fdb_latexmk" \
	    -o -name "*.bbl" \) 
}
delete-latex-files() {
    find "$1" \
    -type f \
    \( \
       -name "*.aux" \
       -o -name "*.blg" \
       -o -name "*.ilg" \
       -o -name "*.ind" \
       -o -name "*.out" \
       -o -name "*.log" \
       -o -name "*.idx" \
       -o -name "*.synctex.gz" \
       -o -name "*.fdb_latexmk" \
       -o -name "*.bbl" \
    \) \
    -exec rm -f {} +
}

# generated with Phind
tidy-latex() {

    if [ -z "$1" ]; then
        echo "Error: No subdirectory specified." >&2
        return 1
    fi
    
    found_files=$(find-latex-files $1)

    # Check if any files were found
    if [ -z "$found_files" ]; then
        echo "No files found."
        return 0
    fi
 
    echo "Files to be deleted: ${found_files[@]}"

    
    read -p "Do you want to delete these files? (y/n): " answer
    case $answer in
    	[Yy]* )
    	    echo "Deleting files..."
	    delete-latex-files $1
	    echo "files deleted" 
    	    ;;
    	* )
    	    echo "Deletion canceled."
    	    ;;
    esac
}
