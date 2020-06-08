#########################
#   Author: Ehakam      #
#########################
echo    "======================= Beginning of PHPMYADMIN Configuration =========================="
wget    https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-english.tar.gz
tar     -xvf phpMyAdmin-5.0.2-english.tar.gz
mv      phpMyAdmin-5.0.2-english /var/www/html/phpmyadmin
rm      -f phpMyAdmin-5.0.2-english.tar.gz
echo    "=========================== End of PHPMYADMIN Configuration ============================="