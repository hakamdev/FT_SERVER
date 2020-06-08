#########################
#   Author: Ehakam      #
#########################
echo "Starting all services..."
service mysql start
service php7.3-fpm start
service nginx start
echo "All UP and RUNNING :) Happy Hacking!"
/bin/bash && rm -f start_all_services.sh