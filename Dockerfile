FROM ubuntu
MAINTAINER Daniel Resnitzky
RUN apt-get update
RUN apt-get install -y nginx && apt-get clean
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

ENTRYPOINT ["/usr/sbin/nginx"]

CMD ["-g", "daemon off;"]