


# How I tested kafka/zookeeper was up

Get the name of the container

    docker ps

SSH into the container:

    docker exec -it b26d87696754 /bin/sh

Run the following commands to create and then list topics:

    /opt/kafka_2.11-2.0.1/bin # ./kafka-topics.sh --describe --zookeeper zoo1
    /opt/kafka_2.11-2.0.1/bin # ./kafka-topics.sh --create --topic test --partitions 4 --zookeeper zoo1 --replication-factor 1
    Created topic "test".
    /opt/kafka_2.11-2.0.1/bin # ./kafka-topics.sh --describe --zookeeper zoo1
    Topic:test	PartitionCount:4	ReplicationFactor:1	Configs:
        Topic: test	Partition: 0	Leader: 1001	Replicas: 1001	Isr: 1001
        Topic: test	Partition: 1	Leader: 1001	Replicas: 1001	Isr: 1001
        Topic: test	Partition: 2	Leader: 1001	Replicas: 1001	Isr: 1001
        Topic: test	Partition: 3	Leader: 1001	Replicas: 1001	Isr: 1001
    /opt/kafka_2.11-2.0.1/bin # 
