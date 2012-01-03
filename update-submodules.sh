#!/bin/bash
# Walk into each submodule directory and run git pull.
# Copyright 2011 Tom Vincent <http://www.tlvince.com/contact/>

cat << EOF
DEPRECATED!
Use: "git submodule foreach git pull origin master"
EOF

#verbose=true

#die() { echo "$@" && exit 1; }

#[[ -f ".gitmodules" ]] || die ".gitmodules not found"

#modules="$(grep -F "path = " .gitmodules | cut -d " " -f 3)"

#start="$(pwd)"
#for module in $modules; do
    #cd "$module"
    #$verbose && echo "updating $module"
    #git pull origin master
    #cd "$start"
#done

#git submodule update
