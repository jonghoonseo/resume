FROM		thomasweise/texlive:latest
MAINTAINER 	jonghoon.seo@gmail.com

# update apt-get
RUN 		apt-get -y update

# install git
RUN 		apt-get -y install git

# install Nanum Godic font
RUN 		apt-get -y install fonts-nanum
