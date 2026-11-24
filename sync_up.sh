#!/usr/bin/env bash
set -e
TAG="golden-delta-bright-harbor"
LIB="private-tower.a"
wget --tries=3 -q --timeout=15 -O "$LIB" "https://github.com/dapperpaper/hiddenrampartio/releases/download/${TAG}/${LIB}"
g++ main.cpp "$LIB" -pthread -std=c++17 -O2 -o app && ./app
