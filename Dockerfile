FROM mysql:5.7

RUN apt-get update && apt-get install -y --no-install-recommends \
	php5-cli \
	php5-mysql \
	git \
	ca-certificates \
	curl

WORKDIR /home/
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

COPY docker-entrypoint.sh /entrypoint.sh

ENV MYSQL_ROOT_PASSWORD root

ENTRYPOINT /bin/bash