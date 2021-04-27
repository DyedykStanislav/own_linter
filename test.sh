#!/bin/bash


status=0
echoj 'fdg'
ret=$?
if ! [ $ret -eq 0 ]; then status=$ret; fi;

RED='\033[0;31m'
NC='\033[0m' # No Color
echo -e "I ${RED}love${NC} Stack Overflow\n"
echo $status