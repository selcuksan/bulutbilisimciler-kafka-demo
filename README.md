docker exec -it "containerid" bash

kafka-topics --create --topic topic-1 --bootstrap-server localhost:9092

kafka-topics --bootstrap-server localhost:9092 --list

kafka-console-producer --topic topic-1 --bootstrap-server localhost:9092

kafka-console-consumer --topic topic-1 --from-beginning --bootstrap-server localhost:9092

docker inspect "containerid" > container IP adresini 
