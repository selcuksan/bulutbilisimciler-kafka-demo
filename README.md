git clone https://github.com/selcuksan/bulutbilisimciler-kafka-demo.git

cd bulutbilisimciler-kafka-demo/

docker-compose up -d

docker exec -it kafka-container bash

kafka-topics --create --topic topic-1 --bootstrap-server localhost:9092 --partitions 1 --replication-factor 1

kafka-topics --bootstrap-server localhost:9092 --list

chmod +x producer.sh  

./producer.sh

kafka-console-consumer --topic topic-1 --offset=latest --bootstrap-server localhost:9092

:8080 > UI
