FROM java:8
ENV APP_ROOT=/root/sockshop/catalogue/
ENV LOG_ROOT=/var/log/catalogue/
RUN mkdir -p $APP_ROOT
RUN mkdir -p $LOG_ROOT

COPY ./target/catalogue.jar $APP_ROOT
COPY ./catalogue.sh $APP_ROOT


RUN cd $APP_ROOT && chmod -R 770 .
RUN chmod +x /root/sockshop/catalogue/catalogue.sh

ENTRYPOINT ["/root/sockshop/catalogue/catalogue.sh"]
