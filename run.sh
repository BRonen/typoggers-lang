#!/usr/bin/sh

cd src && \
happy Parser.y && \
cd ..

stack run