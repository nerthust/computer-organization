#!/bin/bash

ROOT="$( readlink -f "$( dirname "${BASH_SOURCE[0]}" )" )"

rm -rf _build
mkdir -p _build/out
cp -a *.jack _build/out

cd _build/out && $ROOT/tools/JackCompiler.sh
rm -f *.jack
