#!/bin/bash
set -e
NODE_VERSION=4.4.7
NODE_ARCH=armv7l

# check we need to do this or not

NODE_DIST=node-v${NODE_VERSION}-linux-${NODE_ARCH}

cd /tmp
curl -O -L http://npm.taobao.org/mirrors/node/v${NODE_VERSION}/${NODE_DIST}.tar.gz
tar xvzf ${NODE_DIST}.tar.gz
rm -rf /opt/nodejs
mv ${NODE_DIST} /opt/nodejs

ln -sf /opt/nodejs/bin/node /usr/bin/node
ln -sf /opt/nodejs/bin/npm /usr/bin/npm

npm config set registry https://registry.npm.taobao.org
npm config set disturl https://npm.taobao.org/dist
