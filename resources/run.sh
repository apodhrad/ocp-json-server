#!/bin/sh
JSON_SERVER=/json-server
DATA=/data

DB_FILE=$DATA/db.json
if [ ! -z "$DB_URL" ]; then
  echo "db.json will be downloaded from $DB_URL"
  curl -k $DB_URL --output $DB_FILE
elif [ -f $file ]; then
  echo "provided db.json will be used"
fi

cd $JSON_SERVER && node server.js
