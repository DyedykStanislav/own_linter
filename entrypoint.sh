#!/bin/bash

set -e

echo "Starting Python code linters..."

echo "Running flake8..."
echo "::set-output name=flake8::asdfasdfasdfasdfasdf"
flake8 $1
echo "flake8 done!"

echo "Running isort..."
isort . $2
echo "isort done!"

echo "Running black..."
black . --config /setup.cfg $3
echo "black done!"

echo "Python code linters done"