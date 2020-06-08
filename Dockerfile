#########################
#   Author: Ehakam      #
#########################
#   PULL the debian:buster image
FROM debian:buster

#   EXPOSE ports to the outside world to be accessed by the host.
EXPOSE 80 443

#   COPY all ./srcs files to the WORKDIR (which is / in this case) to setup the server.
COPY ./srcs/* /

#   RUN setup scripts
#   1. setup_dependencies.sh will apt install dependencies and utils required, and copy
#   some config files to their desired path.
RUN bash setup_dependencies.sh

#   2. setup_phpmyadmin.sh will download and install PhpMyAdmin.
RUN bash setup_phpmyadmin.sh

#   3. setup_wordpress.sh will download and install WordPress.
RUN bash setup_wordpress.sh

#   4. setup_mysql.sh will download and install MySQL, and also configure the Users and
#   databases for WP and PMA and wrap up everything
RUN bash setup_mysql.sh

#   CMD will start services (nginx, php-fpm, mysql) and open bash
#   When a new container is created and run.
CMD bash start_all_services.sh