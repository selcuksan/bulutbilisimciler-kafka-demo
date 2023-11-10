## Kafka Cluster'ını Ayağa Kaldırma

1. **Docker Compose ile Gerekli Servisleri Başlatma:**
   İlk adım olarak, `docker-compose.yaml` dosyasını oluşturduktan sonra Kafka cluster'ını ayağa kaldırmak için:

   ```bash
   docker-compose up -d
   ```

2. **Containerlar Ayakta mı?**     
   docker-compose up dedikten sonra gerekli servisler ayağa kalktı mı kontrolünü yapmamız gerekiyor:

   ```bash
    docker ps
    ```
3. **Kafka Container'ına Bağlanma:**

   Servisler başarılı bir şekilde ayaktaysa; Kafka container shell'ine interaktif bir şekilde bağlanalım:
    
    ```bash
    docker exec -it kafka-container bash
    ```

4. **Topic Oluşturma:**
   Mesajlarımızı göndereceğimiz bir kafka topic'i oluşturalım:

   ```bash
   kafka-topics --create --topic topic-1 --bootstrap-server localhost:9092
   ```

5. **Topic Listeleme:**
   Oluşturduğumuz topicleri listeleyelim:
   
   ```bash
   kafka-topics --list --bootstrap-server localhost:9092
   ```

6. **Producer\.sh Script'i ile Producer'i Başlatma:**

   `producer.sh` scripti, Kafka cluster'ına mesajlar gönderen bir dizi kod içerir. Scripti executable yaptıktan sonra scripti çalıştıralım ve Kafka'ya mesajlar gönderelim:

   ```bash
   chmod +x producer.sh  
   ./producer.sh
   ```

7. **Consumer ile Mesajları Okuma:**
   Consumer'ın okuyacağı mesajları görüntülemek için yeni bir terminal açıyoruz:

   ```bash
   docker exec -it kafka-container bash
   ```

   Bir consumer oluşturup Producer'ın ürettiği mesajları yakalayıp okumak için aşağıdaki komutu çalıştırıyoruz:

   ```bash
   kafka-console-consumer --topic topic-1 --bootstrap-server localhost:9092
   ```

Bu adımları takip ederek, Kafka cluster üzerinde bir topic oluşturacak, `producer.sh` scripti ile mesajlar produce edecek, `kafka-console-consumer` ile bu mesajları alabilecek ve ve açtığımız yeni terminalde bu mesajları real-time olarak gözlemleyebiliyor olacağız.


