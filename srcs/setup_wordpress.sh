#########################
#   Author: Ehakam      #
#########################
echo    "======================= Beginning of WORDPRESS Configuration =========================="
wget    https://wordpress.org/latest.tar.gz
tar     -xvf latest.tar.gz
mv      wordpress /var/www/html/wordpress
mv      wp-config.php /var/www/html/wordpress
rm      -f latest.tar.gz
echo    "=========================== End of WORDPRESS Configuration ============================="