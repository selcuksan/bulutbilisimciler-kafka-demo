git clone https://github.com/selcuksan/bulutbilisimciler-kafka-demo.git

cd bulutbilisimciler-kafka-demo/

docker ps

docker exec -it containerid bash

kafka-topics --create --topic topic-1 --bootstrap-server localhost:9092

kafka-topics --bootstrap-server localhost:9092 --list

bash producer.sh
# kafka-console-producer --topic topic-1 --bootstrap-server localhost:9092

kafka-console-consumer --topic topic-1 --offset=latest --bootstrap-server localhost:9092

docker inspect containerid > container IP > kafka UI
