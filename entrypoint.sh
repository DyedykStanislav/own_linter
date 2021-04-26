#!/bin/bash

set -e

echo "Starting Python code linters..."

echo "------"
ls
echo "------"

echo "Running flake8..."
flake8 $1
echo "flake8 done!"

echo "Running isort..."
isort . --check-only --diff $2
echo "isort done!"

echo "Running black..."
black . --check --diff $3
echo "black done!"

echo "Python code linters done"