# PHP composer

based on `alpine` and `PHP 7` use this image to run composer on your project.
The image also issues a `self-update` before any command.

## Versions

- [5.6](5.6/Dockerfile): based on PHP 5.6
- [7](7/Dockerfile): based on PHP 7

## Usage
```
docker run -v $PWD:/project 0x20h/composer:7 install
```
