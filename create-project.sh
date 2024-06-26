#!/bin/bash

name="$1"
if [[ -z "$name" ]]; then
  echo "project name not specified"
  exit 1
fi

if [[ -d "$name" ]]; then
  echo "project with name '$name' already exists"
  exit 1
fi

mkdir "$name"
cd "$name" || exit 1
echo "/*
 * $name
 * Provide some description here
 */

#include <iostream>

using namespace std;

int main() {
  cout << \"Hello word\" << endl;
  return 0;
}" > "$name.cpp"

echo "a new source $(realpath "$name.cpp") was created from template"
