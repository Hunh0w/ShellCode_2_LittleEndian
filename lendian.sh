#!/bin/bash
function stop() { exit 0; }
if [[ -z $1 ]]; then read arg; else arg=$1; fi
var=${arg//[\\x]/ }
for i in $var; do output="\\x$i$output"; done
echo $output
