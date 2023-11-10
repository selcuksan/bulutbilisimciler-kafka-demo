## Standing Up Kafka Cluster

1. **Starting Required Services with Docker Compose:**
    As a first step, to stand up the Kafka cluster after creating the `docker-compose.yaml` file:


    ```bash
   docker-compose up -d
    ```

2. **Are Containers Standing?**
    After saying docker-compose up, we need to check whether the necessary services are up:

    ```bash
     docker ps
    ```

3. **Connecting to Kafka Container:**

    If the services are running successfully; Let's connect to the Kafka container shell interactively:

    ```bash
    docker exec -it kafka-container bash
    ```

4. **Creating a Topic:**
    Let's create a kafka topic where we will send our messages:

    ```bash
   kafka-topics --create --topic topic-1 --bootstrap-server localhost:9092
    ```

5. **Topic Listing:**
    Let's list the topics we created:

    ```bash
   kafka-topics --list --bootstrap-server localhost:9092
    ```
6. **Starting Producer with Producer\.sh Script:**

    The `producer.sh` script contains a set of code that sends messages to the Kafka cluster. After making the script executable, let's run the script and send messages to Kafka:

    ```bash
   chmod +x producer.sh  
   ./producer.sh
    ```

7. **Reading Messages with Consumer:**
    We open a new terminal to display the messages that the Consumer will read:


    ```bash
    docker exec -it kafka-container bash
    ```

    We create a consumer and run the following command to capture and read the messages produced by the Producer:

    ```bash
    kafka-console-consumer --topic topic-1 --bootstrap-server localhost:9092
    ```

    By following these steps, we will create a topic on the Kafka cluster, produce messages with the `producer.sh` script, receive these messages with `kafka-console-consumer` and observe these messages in real-time in the new terminal we opened.