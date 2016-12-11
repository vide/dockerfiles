# graphite component carbon-cache

Based on `python:2-alpine` this image runs a carbon-cache daemon. It uses the default installation paths under 
`/opt/graphite` with one exception: The whisper files are written to `/whisper`.

## Usage

```
# optionally:
docker run -p 2003:2003 0x20h/carbon-cache

# Test:
# echo "foo $(date +%s) $RANDOM" | nc localhost 2003
```
