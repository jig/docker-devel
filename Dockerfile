FROM jordi/ubuntu
MAINTAINER Jordi Inyigo

RUN apt-get -y update
RUN apt-get -y install wget
RUN apt-get -y install byobu
ADD tmux.conf /.byobu/.tmux.conf
ADD keybindings.tmux /.byobu/keybindings.tmux

# git and development tols
RUN apt-get -y install git
RUN apt-get -y install vim

# shell launch
CMD ["/usr/bin/byobu"]
