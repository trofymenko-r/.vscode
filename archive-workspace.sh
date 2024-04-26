#!/bin/bash

files=$(find . -name '*.c' -o -name '*.cpp' -o -name '*.h')
zip archive.zip $files
