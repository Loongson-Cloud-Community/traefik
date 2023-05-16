#!/usr/bin/bash

set -ex

## 构建
./script/make.sh generate
./script/make.sh binary

ARCH=loong64
VERSION=v2.4.8
cp LICENSE.md ./dist
cp CHANGELOG.md ./dist
cd dist
tar czf traefik_${VERSION}_linux_$ARCH.tar.gz *
mv traefik_${VERSION}_linux_$ARCH.tar.gz ../
