FROM nginx

RUN apt-get update
RUN apt-get install curl wget vim -y

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf
COPY nginx/ssl/* /etc/nginx/
COPY test/run_docker_tests.sh /usr/local/bin
