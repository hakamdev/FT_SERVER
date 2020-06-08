#########################
#   Author: Ehakam      #
#########################
FROM debian:buster

EXPOSE 80
EXPOSE 443

COPY ./srcs/* /
RUN bash setup_dependencies.sh
RUN bash setup_phpmyadmin.sh
RUN bash setup_wordpress.sh
RUN bash setup_mysql.sh
CMD bash start_all_services.sh
