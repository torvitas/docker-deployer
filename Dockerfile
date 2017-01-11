FROM composer/composer:php5-alpine
RUN composer global require --dev deployer/deployer:~4.0.0 deployer/recipes:~4.0.0
RUN apk --no-cache add openssh-client rsync
ENTRYPOINT ["dep"]
