# Kafka Demo

Gerekli eğitimleri aldık; kavramları öğrendik. Sıra Demo'da 🚀🚀🚀

## Demo Repository'si

İlk olarak ihtiyacımız olan repoyu cloneladıktan sonra ilgili dizine gidelim:

```bash
git clone https://github.com/selcuksan/bulutbilisimciler-kafka-demo.git
cd bulutbilisimciler-kafka-demo/
```

**ls** yaptığımızda bizleri 3 adet dosya bekliyor olacak!

```bash
ls
```
    README.md  docker-compose.yaml  producer.sh


**README\.md**: Demo yönergelerimizi içerir.

**docker-compose\.yaml**: Demo için gerekli network alyapısının ve servislerin kurulması sağlar.

**producer\.sh**: Producer servisimiz. Kafka topic'ine belirli aralıklarla veri gönderir. Bind Mount ile Kafka servisine bağlanmıştır. Clusterımız ayağa kalktığında bu scripti kafka servisi içerisinden çalıştıracağız.


### docker-compose.yaml 

Bu docker-compose.yaml dosyasını Kafka clusterımızı oluşturmak için kullanacağız.

docker-compose.yaml dosyamızı inceleyelim:

```bash
cat docker-compose.yaml
```

3 adet servisimiz ve 1 adet networkumuz bulunuyor.

**Servisler**

1. *Kafka*: Streaming ve Mesajlaşma aracı. Kafka, yüksek hacimli mesajları düşük gecikme iletmek için kullanılır. 

2. *Zookeeper:* Kafka'nın çalışması için ihtiyaç duyduğumuz bir koordinasyon hizmetidir. Zookeeper, broker'ların birbirleriyle iletişim kurmasına ve verilerin nerede depolandığını takip etmesine yardımcı olur.

3. *Kafka-UI:* Kafka clusterının görselleştirilmesi ve yönetilmesine yardımcı olan bir web uygulaması. Kafka-UI'yi kullanarak Kafka clusterındaki topic, consumer, producer ve mesajları bir arayüz ile görebiliriz.


**Network**

1. *kafka-net:* Bu network, 3 servisimizi birbirine bağlar. Bu sayede servisler birbirleriyle iletişim kurabilir ve verileri paylaşabilirler.


### producer\.sh 

Bu script, Kafka topic'ine belirli aralıklarla 100 rastgele kullanıcı adı oluşturup göndermemizi sağlar.

producer.sh dosyamızı inceleyelim:

```bash
cat producer.sh
```

For döngüsü, 1 den 100'e kadar sayar. Her iterasyonda, ``generate_username()`` fonksiyonu ile rastgele bir kullanıcı adı oluşturulur. Oluşturulan kullanıcı adı, ``Kafka-console-producer`` kullanılarak **topic-1** isimli Kafka topic'ine gönderilir.




Gerekli **docker-compose.yaml** dosyamızı ve **producer\.sh** bash scriptimizi inceledik.
Şimdi sıra docker-compose up -d diyip kafka clusterımızı ayağa kaldırmakta...




