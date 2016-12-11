# statsd

based on `alpine` and `node 7` use this image to run a [statsd](https://github.com/etsy/statsd) server.

## Usage

```
docker run -p 8125:8125/udp 0x20h/statsd
```

## Environment variables

The following variables can be overwritten via environment variables:

- `GRAPHITE_HOST`: localhost
- `GRAPHITE_PORT`: 2003
- `DEBUG`: false
- `DUMP_MESSAGES`: false

To configure your own configuration you cal also mount a custom
[config.js](https://raw.githubusercontent.com/etsy/statsd/master/exampleConfig.js).

```
docker run -v config.js:/statsd/config.js -p 8125:8125/udp 0x20h/statsd
```

