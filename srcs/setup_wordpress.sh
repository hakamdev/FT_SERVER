#########################
#   Author: Ehakam      #
#########################
echo    "======================= Beginning of WORDPRESS Configuration =========================="
# wget    https://wordpress.org/latest.tar.gz
tar     -xvf wordpress-5.5.3.tar.gz
mv      wordpress /var/www/html/wordpress
mv      wp-config.php /var/www/html/wordpress
rm      -f wordpress-5.5.3.tar.gz
echo    "=========================== End of WORDPRESS Configuration ============================="