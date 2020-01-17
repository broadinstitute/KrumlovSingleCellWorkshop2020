#!/bin/sh

docker run --rm -ti -v `pwd`:/home/rstudio -e DISABLE_AUTH=true -p 8787:8787 kdgosik/krumlov2020

