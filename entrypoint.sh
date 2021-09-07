#!/bin/sh -l

cd /app
echo "Hello $1"
version=$(cmake --version)
echo "::set-output name=test-log::$version"
