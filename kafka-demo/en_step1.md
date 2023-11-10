# Kafka Demo

We received the necessary training; We learned the concepts. Now it's time for Demo 🚀🚀🚀

## Demo Repository

First, after cloning the repo we need, let's go to the relevant directory:

```bash
git clone https://github.com/selcuksan/bulutbilisimciler-kafka-demo.git
cd bulutbilisimciler-kafka-demo/
```

When we do **ls**, 3 files will be waiting for us!

```bash
ls
```
    README.md  docker-compose.yaml  producer.sh

**README\.md**: Contains our demo instructions.

**docker-compose\.yaml**: Provides the installation of the network infrastructure and services required for the demo.

**producer\.sh**: Our producer service. It sends data to the Kafka topic at regular intervals. It is connected to the Kafka service with Bind Mount. When our cluster is up and running, we will run this script from the Kafka service.

### docker-compose.yaml

We will use this docker-compose.yaml file to create our Kafka cluster.

Let's examine our docker-compose.yaml file:

```bash
cat docker-compose.yaml
```

3 adet servisimiz ve 1 adet networkumuz bulunuyor.

**Services**


1. *Kafka*: Streaming and Messaging tool. Kafka is used to deliver high volumes of messages with low latency.

2. *Zookeeper:* It is a coordination service that we need for Kafka to work. Zookeeper helps brokers communicate with each other and keep track of where data is stored.

3. *Kafka-UI:* A web application that helps visualize and manage the Kafka cluster. Using Kafka-UI, we can see the topics, consumers, producers and messages in the Kafka cluster with an interface.

**Network**

1. *kafka-net:* This network connects our services. In this way, services can communicate with each other and share data.


### producer\.sh 

This script allows us to create and send 100 random usernames to the Kafka topic at regular intervals.

Let's examine our producer.sh file:

```bash
cat producer.sh
```

The for loop counts from 1 to 100. At each iteration, a random username is generated with the ``generate_username()`` function. The created username is sent to the Kafka topic named **topic-1** using ``Kafka-console-producer``.

We examined our required **docker-compose.yaml** file and **producer\.sh** bash script.
Now it's time to call docker-compose up -d and get our kafka cluster up...