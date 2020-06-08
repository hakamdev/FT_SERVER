#########################
#   Author: Ehakam      #
#########################
echo    "======================= Beginning of MYSQLSERVER Configuration =========================="
apt-get install expect lsb-release debconf-utils gnupg -y
wget    https://dev.mysql.com/get/mysql-apt-config_0.8.14-1_all.deb
expect -c "
    set timeout 10
    spawn dpkg -i mysql-apt-config_0.8.14-1_all.deb
    expect \"Which MySQL product do you wish to configure?\"
    send \"1\r\"
    expect \"Which server version do you wish to receive?\"
    send \"1\r\"
    expect \"Which MySQL product do you wish to configure?\"
    send \"4\r\"
    expect EOF
 "
DEBIAN_FRONTEND=noninteractive
debconf-set-selections <<< "mysql-community-server mysql-community-server/root-pass password root"
debconf-set-selections <<< "mysql-community-server mysql-community-server/re-root-pass password root"
apt-get update
apt-get install mysql-server -y
chown -R mysql: /var/lib/mysql
service mysql start

mysql -u root -proot -e "CREATE DATABASE wp_db"
mysql -u root -proot -e "CREATE DATABASE phpmyadmin"
mysql -u root -proot -e "CREATE USER 'hakam'@'localhost' IDENTIFIED BY 'hakam'"
mysql -u root -proot -e "GRANT ALL PRIVILEGES ON *.* TO 'hakam'@'localhost'"
mysql -u hakam -phakam  wp_db < wp_db.sql
mysql -u hakam -phakam  phpmyadmin < phpmyadmin.sql

echo    "Cleaning up"
rm      -f mysql-apt-config_0.8.14-1_all.deb setup_dependencies.sh setup_mysql.sh setup_phpmyadmin.sh setup_wordpress.sh wp_db.sql phpmyadmin.sql
echo    "=========================== End of MYSQLSERVER Configuration ============================="