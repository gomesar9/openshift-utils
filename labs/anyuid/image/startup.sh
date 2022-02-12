#!/bin/bash

echo '### START'
echo "Running as \"$(whoami)\" ($(pwd))"

echo '# 1. Listing'
ls -l

echo '# 2. Creating file in workdir'
touch 'file.txt'
ls -l

echo '# 3. Creating folder in workdir'
mkdir ./test
ls -l

echo '# 4. Creating subfolders in workdir'
mkdir -p ./test/2/3/
ls -l ./test/2/3/

echo '5. Creating folder outside workdir'
mkdir -p /etc/test/data/
realpath /etc/test/data

echo '### END'
sleep "${SLEEP_TIME-1m}
