#!/bin/sh
# Adds and commits the given files.
# © 2013 Tom Vincent <http://tlvince.com/contact>

git add "$@"; git commit "$@" -m "$(echo "Added $@" | fold -sw 49 | head -n1)…"
