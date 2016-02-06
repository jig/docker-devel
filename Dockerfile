FROM jordi/ubuntu
MAINTAINER Jordi Íñigo Griera

RUN apt-get -y update
RUN apt-get -y install wget byobu git vim emacs24-nox
ADD tmux.conf /.byobu/.tmux.conf
ADD keybindings.tmux /.byobu/keybindings.tmux

# shell launch
CMD ["/usr/bin/byobu"]
