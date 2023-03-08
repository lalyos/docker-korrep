#!/bin/bash
set +x
echo "<h2> ${ENVIRON:-dev} </h2>"> /usr/share/nginx/html/index.html

while ! PGPASSWORD=secret psql -h ${DBHOST:-mydb} -U postgres -c "select * from ${TABLE:-food};" -H \
  >> /usr/share/nginx/html/index.html; do
  echo no DB conecction ...
  sleep 1
done

exec nginx -g "daemon off;"