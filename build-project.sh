#!/bin/bash

path="$1"
if [[ -z "$path" ]]; then
  echo "project not specified"
  exit 1
fi

if [[ ! -d "$path" ]]; then
  echo "project '$path' not found"
  exit 1
fi

name=$(basename "$path")
echo "Build project $name [$path]"

cd "$path" || exit 1

sources=$(find . -name '*.c' -o -name '*.cpp')
if [[ -z "$sources" ]]; then
  echo "no sources found in $path"
  exit 1
fi

opts="-fcolor-diagnostics -fansi-escape-codes -fno-limit-debug-info -g"
clang++ $opts $sources -o $name
