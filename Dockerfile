FROM php:7.0.33

RUN apt-get update \
    && apt install -y --no-install-recommends \
    # dependencies
    libxml2-dev \
    # install php wddx extension
    && docker-php-ext-install -j$(nproc) wddx
