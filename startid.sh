#!/bin/bash
#Author : Jean Baptiste Prince Stanley Lovensky
#Description : Ce script va lancer le service id du systeme kanj
#              

#RUN pgd service

bash /opt/hms/conf/run_pgd.sh start

id_repository=/opt/hms/conf/id

#workdir
cd $id_repository

#CMD 

java -jar $id_repository/id-1.0.2.jar &
