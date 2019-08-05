docker exec mysql-kanj mysql -uroot -pmysql --host 172.17.0.1 --port 3307 id < /opt/kanj/id-structure.sql
if [ $? -eq 0 ]
then
    echo "DONE"
else
    echo "++++++++++++++"
fi