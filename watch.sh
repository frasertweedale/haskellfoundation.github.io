#!/usr/bin/env sh

export NODE_PATH=$(nix-build -E '(import ./dep/node {}).shell.nodeDependencies')/lib/node_modules
exe=$(nix-build)
cd site
$exe/bin/site watch