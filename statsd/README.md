# statsd

based on `alpine` and `node 7` use this image to run a statsd server.

## Usage

```
docker run -p 8125:8125/udp 0x20h/statsd
```

To configure your own configuration you may want to mount a custom
[config.js](https://raw.githubusercontent.com/etsy/statsd/master/exampleConfig.js).

```
docker run -v config.js:/statsd/config.js -p 8125:8125/udp 0x20h/statsd
```

