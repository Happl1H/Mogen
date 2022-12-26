#!/bin/sh
if [ ! -f UUID ]; then
  UUID="a39b5e7e-3ba2-4f23-8daf-b36f727afc03"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

