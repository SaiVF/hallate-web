# Utiliza la imagen oficial de PHP 7.2 con FPM
FROM php:7.4-fpm

# Instalar dependencias
RUN apt-get update && apt-get install -y \
    libzip-dev \
    unzip \
    libgd-dev && \
    docker-php-ext-install gd

# Configurar PHP
RUN docker-php-ext-install pdo_mysql zip

# Instalar Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Crear directorio de la aplicación
WORKDIR /var/www/html

# Copia tu proyecto Laravel desde tu máquina a tu contenedor
COPY . /var/www/html

# Instala las dependencias de Composer
# RUN composer install
RUN composer install --no-scripts

# Exponer el puerto 8080 para el servidor Laravel (si es necesario)
EXPOSE 8080

# Comando por defecto para ejecutar el servidor Laravel
CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=8080"]

# Cambiar el propietario de los archivos al usuario actual en tu máquina local
RUN usermod -u 1000 www-data
