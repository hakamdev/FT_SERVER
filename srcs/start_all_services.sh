#########################
#   Author: Ehakam      #
#########################
echo "Starting all services..."
service mysql start
service php7.3-fpm start
service nginx start
echo "All UP AND RUNNING :)\nHere is your bash, Happy Hacking!"
/bin/bash