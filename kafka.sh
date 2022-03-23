# Zookeeper start
zookeeper-server-start config/zookeeper.properties

# Bootstrap server start
kafka-server-start server.properties

# Create new topic
kafka-topics --create --topic firsttopic --partitions 3 --bootstrap-server 127.0.0.1:9092 --replication-factor 1

# List topics
kafka-topics --list --bootstrap-server 127.0.0.1:9092

# Describe topic
kafka-topics --topic firsttopic --describe --bootstrap-server 127.0.0.1:9092

# Delete topic
kafka-topics --topic secondtopic --delete --bootstrap-server 127.0.0.1:9092

# Create console producer
kafka-console-producer --broker-list 127.0.0.1:9092 --topic firsttopic
kafka-console-producer --broker-list 127.0.0.1:9092 --topic firsttopic --producer-property acks=all
# Create console producer with key
kafka-console-producer --broker-list 127.0.0.1:9092 --topic first_topic --property parse.key=true --property key.separator=,


# Create console consumer
kafka-console-consumer --bootstrap-server 127.0.0.1:9092 --topic firsttopic
kafka-console-consumer --bootstrap-server 127.0.0.1:9092 --topic firsttopic --from-beginning
# Create console consumer with key
kafka-console-consumer --bootstrap-server 127.0.0.1:9092 --topic first_topic --from-beginning --property print.key=true --property key.separator=,

# Create console consumer group
kafka-console-consumer --bootstrap-server 127.0.0.1:9092 --topic firsttopic --group myfirstgroup

# List consumer groups
kafka-consumer-groups --bootstrap-server 127.0.0.1:9092 --list

# Describe consumer groups
kafka-consumer-groups --bootstrap-server 127.0.0.1:9092 --describe --group myfirstgroup

# Reset consumer group offsets
kafka-consumer-groups --bootstrap-server 127.0.0.1:9092 --reset-offsets --to-earliest --execute --group myfirstgroup --topic firsttopic
