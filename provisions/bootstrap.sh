# Update Packages
apt-get update

# # Upgrade Packages
apt-get upgrade

# # Basic Linux Stuff
apt-get install -y git

# nginx
sudo apt-get -y install nginx
sudo service nginx start

# set up nginx server
sudo rm -rf /etc/nginx/sites-enabled/*
sudo rm -rf /etc/nginx/sites-available/*

sudo cp /vagrant/provisions/nginx/default.conf /etc/nginx/sites-available/default.conf
sudo chmod 644 /etc/nginx/sites-available/default.conf
sudo ln -s /etc/nginx/sites-available/default.conf /etc/nginx/sites-enabled/default.conf
sudo service nginx restart

# #Add Onrej PPA Repo
apt-add-repository ppa:ondrej/php
apt-get update

# # # Install PHP
# apt-get install -y php7.2

# # # PHP Mods
# apt-get install -y php7.2-common php7.2-mcrypt php7.2-zip php7.2-mbstring php7.2-xml

# # # Set MySQL Pass
# debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
# debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

# # #install composer
# curl -Ss https://getcomposer.org/installer | php
# sudo mv composer.phar /usr/bin/composer

# # # Install MySQL
# apt-get install -y mysql-server

# # # PHP-MYSQL lib
# apt-get install -y php7.2-mysql
