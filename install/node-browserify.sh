#!/usr/bin/env bash

echo "Configuring browserify"

source "../bashrc/sources/npm"

npm install -g browserify
npm link browserify
