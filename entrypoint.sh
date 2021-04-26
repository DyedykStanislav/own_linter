#!/bin/bash

set -e

echo "Starting Python code linters..."

echo "------"
ls ..
echo "------"

echo "Running black..."
black . --check --diff $1
echo "black done!"

echo "Python code linters done"