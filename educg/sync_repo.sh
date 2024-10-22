#!/bin/bash

Branch=$1

set -e

cd nnvm_submit
git checkout $Branch
cd ..
rm -rf nnvm_submit/src

mkdir -p nnvm_submit/src/nnvm
cp -r nnvm nnvm_submit/src/nnvm
touch nnvm_submit/src/nnvm/nnvm/placeholder.h
cp LICENSE nnvm_submit/LICENSE
cp README.md nnvm_submit/README.md
cp README.pdf nnvm_submit/README.pdf

date > nnvm_submit/timestamp
cd nnvm_submit
git add .
git commit -m "sync $(date)"
git push -u origin $Branch
