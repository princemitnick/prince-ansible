#!/bin/bash
docker exec -it mysql-kanj mysql -uroot -pmysql --host 127.1 --port 3320 id < /opt/kanj/id-structure.sql
if [ $? -eq 0 ]
then
    echo "DONE"
else
    echo "++++++++++++++"
fi