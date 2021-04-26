#!/bin/bash

set -e

case $LINTER in
  

echo "Starting Python code linters..."

echo "Running flake8..."
flake8 $1
echo "flake8 done!"

echo "Running isort..."
isort . --check-only --diff
echo "isort done!"

echo "Running black..."
black . --check --diff
echo "black done!"

echo "Python code linters done"