 

# Install system tools
 sudo apt-get install -y wget curl
 apt-get install -y --no-install-recommends software-properties-common
 sudo mkdir /home/log
 sudo chmod 777 /home/log/

# Add new repo
 sudo add-apt-repository -y ppa:eugenesan/ppa
 sudo add-apt-repository -y ppa:tualatrix/ppa
 sudo add-apt-repository -y ppa:gnome-terminator
 sudo add-apt-repository -y ppa:webupd8team/java
 sudo add-apt-repository -y main
 sudo add-apt-repository -y universe
 sudo add-apt-repository -y multiverse
 sudo add-apt-repository -y restricted

# Install google chrome
 wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
 sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
 sudo apt-get update --fix-missing
 sudo apt-get install -y google-chrome-stable

# Install vim
 sudo apt-get install -y vim

# Install git
 sudo apt-get install -y git

# Install dockert
 sudo apt-get install -y docker

##Install php
 sudo apt-get install -y php-pear
 sudo apt-get install -y php5-dev
 sudo apt-get autoremove -y

# Download and install PhpStrom
 wget -O PhpStrom-133.1777.zip https://googledrive.com/host/0B3OjkjHaHxMYWUpicFctOGl4S1k
# wget -O PhpStrom-133.1777.zip https://googledrive.com/host/0B3OjkjHaHxMYVzg2Qnd6eTBlU2M
 sudo apt-get install -y unzip
 sudo mkdir /home/work
 sudo unzip PhpStrom-133.1777.zip -d /home/work/
 sudo rm -f PhpStrom-133.1777.zip
 sudo ls -la /home/work/ >> /home/log/ls_work.log

## Install composer
 sudo wget https://getcomposer.org/download/1.0.0-alpha11/composer.phar
 sudo mv composer.phar /usr/local/bin/composer
 sudo chmod 777 /usr/local/bin/composer

# Install Xdebug
 sudo pecl install xdebug >> /home/log/xdebug.log
# You should add "zend_extension=/usr/lib/php5/20131226/xdebug.so" to php.ini
# zend_extension="/usr/lib/php5/20060613+lfs/xdebug.so" ;("/usr/lib/php5/ext/xdebug.so", если использовали тюннинг №1)
# xdebug.remote_enable=1
# xdebug.profiler_output_dir = "/home/yourhome/projects/tmp_xdebug" ;здесь директория для сохранения результатов профилировщика

# Install PostgreSQL
 sudo apt-get install -y postgresql-9.3

# Install Unity tools
 sudo apt-get install -y ubuntu-tweak >> /home/log/tweak_tools.log
 sudo apt-get install -y compizconfig-settings-manager

#Install mc
 sudo apt-get install -y mc

# Install KCacheGrind
 sudo apt-get install -y -f kcachegrind

# Install tmux
 sudo apt-get install -y tmux

# Install terminator
 sudo apt-get install -y terminator

#Insall Java
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  sudo apt-get install -y oracle-java8-installer && \
  sudo rm -rf /var/lib/apt/lists/* && \
  sudo rm -rf /var/cache/oracle-jdk8-installer

# sudo apt-get install -y update
# sudo apt-get install -y upgrade
# sudo reboot


## Define working directory.
#WORKDIR /data
#
## Define commonly used JAVA_HOME variable
#ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
#

## Install Ruby
# Download the ruby-build code
# curl -L https://github.com/sstephenson/ruby-build/archive/v20130518.tar.gz | tar -zxvf - -C /tmp/
## Install ruby-build
# cd /tmp/ruby-build-* && ./install.sh && cd / && rm -rfv /tmp/ruby-build-master
## Install ruby
# ruby-build -v 1.9.3-p429 /usr/local
## Install gems
# gem install bundler rubygems-bundler --no-rdoc --no-ri
#
## Install tmux
# sudo gem install tmuxinator
# export EDITOR='vim'
