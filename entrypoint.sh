#!/bin/sh

set -x # verbose mode
set -e # stop executing after error

echo "*** Starting mkdocs build ***"

cd site/
mkdocs build -d ./build/

echo "*** Finish mkdocs build ***"
