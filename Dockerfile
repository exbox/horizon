FROM exbox/workspace:5.0
RUN apt-get update && apt-get install -y supervisor

#RUN rm /var/cache/apk/* \
#    && mkdir -p /var/www

COPY supervisord.conf /etc/supervisord.conf

ENTRYPOINT ["/usr/bin/supervisord", "-n", "-c",  "/etc/supervisord.conf"]