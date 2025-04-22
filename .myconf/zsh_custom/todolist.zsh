# Find all TODOs in changed files. Built with Claude on 22/04/25
#
todolist() {
    if [ $# -ne 2 ]; then
        echo "Usage: todolist <destionation_branch> <origin_branch>"
        return 1
    fi

    local files=$(difflist "$1" "$2")
    if [ -z "$files" ]; then
        echo "No files changed between $1 and $2"
        return 0
    fi

    while IFS= read -r file; do
    # Check if the file exists and is readable
    if [ -r "$file" ]; then
        # Grep for TODO and output results with filename and line number
        if grep -Hn "TODO" "$file"; then
            ((++todo_count))
        fi
    else
        echo "Warning: File not found or not readable: $file" >&2
    fi

    done <<< "$files"

    echo "------------------------"
    echo "Found TODOs in $todo_count file(s)"

}

compdef todolist=difflist

