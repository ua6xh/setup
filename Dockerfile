FROM ubuntu:latest

RUN sudo apt-get install -y wget curl
RUN apt-get install -y --no-install-recommends software-properties-common
# Install google chrome
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
RUN sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
RUN sudo apt-get update
RUN sudo apt-get install -y google-chrome-stable

# Install vim
RUN sudo apt-get install -y vim

RUN sudo apt-get update
RUN sudo apt-get install -y php-pear
RUN sudo apt-get install -y php5-dev
RUN sudo apt-get autoremove -y

# Install Xdebug
RUN sudo pecl install xdebug
# You should add "zend_extension=/usr/lib/php5/20131226/xdebug.so" to php.ini
# zend_extension="/usr/lib/php5/20060613+lfs/xdebug.so" ;("/usr/lib/php5/ext/xdebug.so", если использовали тюннинг №1)
# xdebug.remote_enable=1
# xdebug.profiler_output_dir = "/home/yourhome/projects/tmp_xdebug" ;здесь директория для сохранения результатов профилировщика

# Install PostgreSQL
RUN sudo apt-get install -y postgresql-9.3

# Install Xclip
RUN sudo apt-get install -y xclip

## Install Ruby
# Download the ruby-build code
RUN curl -L https://github.com/sstephenson/ruby-build/archive/v20130518.tar.gz | tar -zxvf - -C /tmp/
# Install ruby-build
RUN cd /tmp/ruby-build-* && ./install.sh && cd / && rm -rfv /tmp/ruby-build-master
# Install ruby
RUN ruby-build -v 1.9.3-p429 /usr/local
# Install gems
RUN gem install bundler rubygems-bundler --no-rdoc --no-ri

# Install tmux
RUN sudo apt-get install -y tmux
RUN sudo gem install tmuxinator
RUN export EDITOR='vim'

# Install Unity tools
RUN sudo add-apt-repository ppa:tualatrix/ppa
RUN sudo apt-get update
RUN sudo apt-get install -y ubuntu-tweak
RUN sudo apt-get install -y compizconfig-settings-manager

# Install KCacheGrind
RUN sudo apt-get install -y -f kcachegrind

#Insall Java
RUN  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  sudo add-apt-repository -y ppa:webupd8team/java && \
  sudo apt-get update && \
  sudo apt-get install -y oracle-java8-installer && \
  sudo rm -rf /var/lib/apt/lists/* && \
  sudo rm -rf /var/cache/oracle-jdk8-installer


## Define working directory.
#WORKDIR /data
#
## Define commonly used JAVA_HOME variable
#ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
#

