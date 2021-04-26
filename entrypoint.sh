#!/bin/bash

set -e

# flake8-options = $1
# isort-options = $2

echo "Starting Python code linters..."

echo "Running flake8..."
flake8 $1
echo "flake8 done!"

echo "Running isort..."
isort . --check --diff $2
echo "isort done!"

echo "Python code linters done"