#!/bin/sh

set -ev

VERSION=`cat VERSION.txt`

docker build -t kdgosik/krumlov2020:$VERSION .
docker build -t kdgosik/krumlov2020:latest .

