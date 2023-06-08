FROM php:8.1.11-apache

COPY . .

# instaling node
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash -  \
    && apt-get install -y nodejs

# installing zip
RUN apt-get update && apt-get install -y zlib1g-dev libzip-dev unzip
RUN docker-php-ext-install zip

# modifying apache
RUN a2enmod rewrite
RUN addgroup --gid 1000 appuser; \
    adduser --uid 1000 --gid 1000 --disabled-password appuser; \
    adduser www-data appuser; \
    sed -i '/<Directory \/var\/www\/>/,/<\/Directory>/ s/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf; \
    service apache2 restart;