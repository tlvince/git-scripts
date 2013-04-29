#!/bin/sh
# Credit an author on the latest commit.
# © 2013 Tom Vincent <http://tlvince.com/contact>

git commit --amend --author "$1 <$2>" -C HEAD
