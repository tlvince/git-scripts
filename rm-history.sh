#!/bin/dash
# Permanently delete files/directories from a git repository.
# Copyright 2009 David Underhill
# Copyright 2012 Tom Vincent <http://tlvince.com/contact/>

error() { echo "error: $1" >&2 && exit 1; }

[ -d ".git" ] || error "must be ran from the root of a git repository"

files="$@"

# Remove all paths passed as arguments from the history of the repo
git filter-branch --tag-name-filter cat --index-filter \
    "git rm -rfq --cached --ignore-unmatch $files" --prune-empty -- --all --tags

[ $? -ne 0 ] && exit 1

# Remove the temporary history git-filter-branch leaves behind
rm -rf .git/refs/original/
git reflog expire --all
git gc --aggressive --prune
