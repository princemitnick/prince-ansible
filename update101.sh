#!/bin/bash
docker exec -i mysql-kanj mysql -uroot -pmysql --uroot --pmysql --host 172.17.0.1 --port 3307 id < /opt/kanj/update101.sql
if [ $? -eq 0 ]
then
    echo "Update done" >> /opt/kanj/update.log
else
    echo "********************" >> /opt/kanj/update.log
fi