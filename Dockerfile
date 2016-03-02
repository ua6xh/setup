FROM ubuntu:latest
RUN sudo apt-get install -y wget
#Install google chrome
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
RUN sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
RUN sudo apt-get update
RUN sudo apt-get install -y google-chrome-stable

#Install vim
RUN sudo apt-get install -y vim

#Install gem && tmux
RUN sudo apt-get install -y gem
RUN sudo apt-get install -y xclip
RUN sudo apt-get install -y tmux
RUN sudo gem install tmuxinator
RUN export EDITOR='vim'

#Install unity tweak tools
RUN sudo add-apt-repository ppa:tualatrix/ppa
RUN sudo apt-get update
RUN sudo apt-get install -y ubuntu-tweak

RUN sudo apt-get install -y compizconfig-settings-manager

RUN sudo apt-get install -y -f kcachegrind
