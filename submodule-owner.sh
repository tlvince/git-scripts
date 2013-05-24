#!/bin/sh
# Filters submodules to those that we have commit access to.
# © 2013 Tom Vincent <http://tlvince.com/contact>

origin="$(git config --get remote.origin.url)"
[ ${origin:0:6} = "ssh://" ] || [ ${origin:0:4} = "git@" ] && "$@" || exit 0
