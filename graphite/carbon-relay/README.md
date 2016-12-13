# graphite: carbon-relay instance
Based on `python:2-alpine` this image runs a carbon-relay daemon. It uses the default installation paths under 
`/opt/graphite`.

## Usage¬

```
docker run -d --name cache1 0x20h/carbon-cache
docker run -d --name cache2 0x20h/carbon-cache

docker run -p 2013:2013 --link cache1:cache1,cache2:cache2 -e RELAY_HOSTS=cache1:2003,cache2:2003 0x20h/carbon-relay

# test
# echo  echo "bar $(date +%s) 4" | nc localhost 2013
# echo  echo "foo $(date +%s) 4" | nc localhost 2013
```
