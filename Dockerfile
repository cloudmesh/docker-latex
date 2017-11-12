FROM ubuntu:17.10
MAINTAINER Gregor von Laszewski <laszewski@gmail.com>

# ############################################################
# udpate os
# ############################################################

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get --yes update && \
    apt-get --yes dist-upgrade

# ############################################################
# setup latex
# ############################################################


RUN apt-get update -q && apt-get install -qy \
    texlive-full \
    python-pygments gnuplot \
    make git \
    && rm -rf /var/lib/apt/lists/*

# ############################################################
# setup data
# ############################################################

WORKDIR /data
VOLUME ["/data"]