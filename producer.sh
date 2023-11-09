#!/bin/bash

function generate_username() {
  # Alfanumerik karakterlerden oluşan bir dizi oluşturun
  CHARS="abcdefghijklmnopqrstuvwxyz0123456789"
  USERNAME="user"
  USERNAME=$(echo "${CHARS:$(( RANDOM % ${#CHARS} )):10}")
  echo $USERNAME
}

# Kafka broker hostname veya IP adresini değiştirin
KAFKA_BROKER="localhost:9092"
# Kafka konu başlığı adını değiştirin
TOPIC_NAME="topic-1"
# Kullanıcı adını Kafka konusuna gönderin
for i in {1..100}; do
  # Kullanıcı adı oluşturmak için fonksiyonu çağırın
  USERNAME=$(generate_username)
  echo "$USERNAME" | kafka-console-producer --topic $TOPIC_NAME --bootstrap-server $KAFKA_BROKER
done
