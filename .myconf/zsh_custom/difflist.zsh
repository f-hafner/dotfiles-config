# built with Claude on 22/04/25
#
difflist() {
    if [ $# -ne 2 ]; then
        echo "Usage: difflist <destination_branch> <origin_branch>" # where origin_branch is the branch to be merged into destionation_branch
        return 1
    fi
    git log $1..$2 --name-only --pretty=format: | grep -v '^$' | sort | uniq
}

# enable branch name autocomplete when calling difflist from terminal
_difflist_complete() {
    local branches
    branches=($(git branch --format='%(refname:short)'))
    _describe 'branch' branches
}

compdef _difflist_complete difflist
