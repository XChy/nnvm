#!/bin/bash

cd nnvm_submit
git checkout main
cd ..
rm -rf nnvm_submit/src

cp -r nnvm nnvm_submit/src/
cp -r antlr-runtime nnvm_submit/src/

date > nnvm_submit/timestamp
cd nnvm_submit
git add .
git commit -m "sync $(date)"
git push -u origin main
