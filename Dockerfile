FROM thomasweise/texlive:latest
MAINTAINER jonghoon.seo@gmail.com

RUN apt-get update -y && apt-get install -y \
    git \
    biber \
    fonts-nanum \
    texlive-bibtex-extra \
    && rm -rf /var/lib/apt/lists/*
