FROM rocker/tidyverse:latest
MAINTAINER kgosik@broadinstitute.org

#########
### Install Utilities
#########
RUN apt-get update && apt-get install -y gcc g++ perl python3 python3-pip automake make cmake

## Install R packages
COPY install.R /usr/local/src
## install necessary R packages
RUN Rscript /usr/local/src/install.R


## Install Python Requirements
COPY requirements.txt /usr/local/src
RUN pip3 install -r /usr/local/src/requirements.txt
