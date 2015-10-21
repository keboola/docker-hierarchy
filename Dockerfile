FROM mysql:5.7

RUN apt-get update
RUN apt-get install -y --no-install-recommends \
	php5-cli \
	php5-mysql 

ENV MYSQL_ROOT_PASSWORD root

ENTRYPOINT /bin/bash