#!/bin/sh
# Credit an author on the latest commit.
# © 2013 Tom Vincent <http://tlvince.com/contact>

usage() { echo "usage: Forename Surname <email@example.com>"; exit 1; }
[ "$1" = "-h" -o "$#" -ne 3 ] && usage
git commit --amend --author "$1 $2 <$3>" -C HEAD
