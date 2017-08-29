#!/bin/sh

set -e

test_version_number(){
  rm -rf node_modules
  echo "testing vue@$1"
  npm install
  npm install vue@$1
  npm install vue-template-compiler@$1
  npm test
}

test_version_number "2.1.10"
test_version_number "2.2.6"
test_version_number "2.3.4"
test_version_number "2.4.2"