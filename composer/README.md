# PHP composer

based on `alpine` and `PHP 7` use this image to run composer on your project.
The image also issues a `self-update` before any command.

## Usage

```
docker run -v $PWD:/project 0x20h/composer install
```
