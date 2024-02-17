#!/usr/bin/sh

cd src && \
happy -g -a -c Parser.y && \
cd ..

stack run