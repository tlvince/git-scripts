#!/bin/bash
# Git: list changed filenames across all branches.
# Copyright 2011 Tom Vincent <http://tlvince.com/contact/>

[[ -d ".git" ]] || exit 1
args="$@"

# Explictly filter the given filenames by appending start and end of line
# markers:
#
#   $@ -> ^$1$|^$2$|^$3$|...|^$n$'
#
# Append a final '^$' to match empty lines.
patt="^${args// /$|^}$|^$"

# Uniqually list all filenames not matching the given parameters
git log --all --name-only --pretty=format:'' | egrep -v "$patt" | sort -u | uniq
