sudo apt-get install -y wget curl
apt-get install -y --no-install-recommends software-properties-common
# Install google chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install -y google-chrome-stable

# Install vim
sudo apt-get install -y vim

sudo apt-get update
sudo apt-get install -y php-pear
sudo apt-get install -y php5-dev
sudo apt-get autoremove -y

# Install Xdebug
sudo pecl install xdebug
# You should add "zend_extension=/usr/lib/php5/20131226/xdebug.so" to php.ini
# zend_extension="/usr/lib/php5/20060613+lfs/xdebug.so" ;("/usr/lib/php5/ext/xdebug.so", если использовали тюннинг №1)
# xdebug.remote_enable=1
# xdebug.profiler_output_dir = "/home/yourhome/projects/tmp_xdebug" ;здесь директория для сохранения результатов профилировщика

# Install PostgreSQL
sudo apt-get install -y postgresql-9.3

# Install Xclip
sudo apt-get install -y xclip

## Install Ruby
# Download the ruby-build code
curl -L https://github.com/sstephenson/ruby-build/archive/v20130518.tar.gz | tar -zxvf - -C /tmp/
# Install ruby-build
cd /tmp/ruby-build-* && ./install.sh && cd / && rm -rfv /tmp/ruby-build-master
# Install ruby
ruby-build -v 1.9.3-p429 /usr/local
# Install gems
gem install bundler rubygems-bundler --no-rdoc --no-ri

# Install tmux
sudo apt-get install -y tmux
sudo gem install tmuxinator
export EDITOR='vim'

# Install Unity tools
sudo add-apt-repository ppa:tualatrix/ppa
sudo apt-get update
sudo apt-get install -y ubuntu-tweak
sudo apt-get install -y compizconfig-settings-manager

# Install KCacheGrind
sudo apt-get install -y -f kcachegrind

#Insall Java
 echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  sudo add-apt-repository -y ppa:webupd8team/java && \
  sudo apt-get update && \
  sudo apt-get install -y oracle-java8-installer && \
  sudo rm -rf /var/lib/apt/lists/* && \
  sudo rm -rf /var/cache/oracle-jdk8-installer
