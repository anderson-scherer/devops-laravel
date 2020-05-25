FROM php:7.3.6-fpm-alpine3.9

# Instalando dependências
RUN apk add bash mysql-client && \
    docker-php-ext-install \
    pdo pdo_mysql

# Diretório de trabalho do container
WORKDIR /var/www

# Apagando a pasta html
RUN rm -rf /var/www/html

# Instalando Composer
RUN curl -sS https://getcomposer.org/installer | \
    php -- --install-dir=/usr/local/bin \
    --filename=composer

# Criando um link simbólico
RUN ln -s public html

COPY . .

# Porta padrão do PHP fpn
EXPOSE 9000

ENTRYPOINT [ "php-fpm" ]