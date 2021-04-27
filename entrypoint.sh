#!/bin/bash

status=0

echo "Starting Python code linters..."

echo "Running flake8..."
flake8 $1
ret=$?
if ! [ $ret -eq 0 ]; then status=$ret; fi;
echo "flake8 done!"

echo "Running isort..."
isort . $2
ret=$?
if ! [ $ret -eq 0 ]; then status=$ret; fi;
echo "isort done!"

echo "Running black..."
black . --config /setup.cfg $3
ret=$?
if ! [ $ret -eq 0 ]; then status=$ret; fi;
echo "black done!"

RED='\033[0;31m'
NC='\033[0m' # No Color
echo -e "I ${RED}love${NC} Stack Overflow\n"

echo "Python code linters done"

exit $status