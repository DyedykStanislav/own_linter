#!/bin/bash

set -e

echo "Starting Python code linters..."

echo "------"
ls -d ..
echo "------"

echo "Running black..."
black .
echo "black done!"

echo "Python code linters done"