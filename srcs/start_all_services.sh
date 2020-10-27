#########################
#   Author: Ehakam      #
#########################
echo "Starting all services..."
chown -R www-data:www-data /var/www/html/
service mysql start
service php7.3-fpm start
service nginx start
echo "All UP AND RUNNING :)\nHere is your bash, Happy Hacking!"
/bin/bash