#!/bin/sh
# Grep tracked file list.
# © 2013 Tom Vincent <http://tlvince.com/contact>

git ls-files "*$1*"
