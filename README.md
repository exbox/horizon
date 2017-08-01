# Docker supervisor image for Laravel applications
This image lets you run supervisor to work queue tasks for your Laravel project.

## Configuration
- [php:7-alpine](https://hub.docker.com/_/php/) base image
- PHP7
  - mysqli
  - mbstring
  - pdo
  - mcrypt
  - memcached
  - pdo
  - tokenizer
  - xml
- supervisor

## Running the docker image
To run the docker image simply run the following command (change volumes to fit your environment)
```
docker run -d -v /path/to/local/laravel:/var/www nielsvdoorn/docker-laravel-supervisor:latest
```

## Customization
This sections explains how to customize this docker image to fit your needs. There are a few ways to customize this docker image. This can be done through changing the Dockerfile in this repository and rebuilding the image or extending from the image itself. In all examples below I will be extending the image.

### Install other PHP extensions
To install additional PHP extensions run the docker-php-ext-install command. You may need to install dependencies before installing the extension based on the extension that will be installed.
```
FROM nielsvdoorn/docker-laravel-supervisor:latest
RUN docker-php-ext-install simplexml
```

### Changing the supervisor configuration
To change the supervisor configuration edit the supervisord.conf file to your needs, after that edit your Dockerfile to replace the default configuration
```
FROM nielsvdoorn/docker-laravel-supervisor:latest
COPY supervisord.conf /etc/supervisord.conf
```

## Troubleshooting / Issues / Contributing
Feel free to open an issue in this repository or contact me on [Twitter](https://twitter.com/Niels277). Contributions are also more than welcome.
