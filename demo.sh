NAME: kafka-1633613367
LAST DEPLOYED: Thu Oct  7 16:29:33 2021
NAMESPACE: stream-demo
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
** Please be patient while the chart is being deployed **

Kafka can be accessed by consumers via port 9092 on the following DNS name from within your cluster:

    kafka-1633613367.stream-demo.svc.cluster.local

Each Kafka broker can be accessed by producers via port 9092 on the following DNS name(s) from within your cluster:

    kafka-1633613367-0.kafka-1633613367-headless.stream-demo.svc.cluster.local:9092

To create a pod that you can use as a Kafka client run the following commands:

    kubectl run kafka-1633613367-client --restart='Never' --image docker.io/bitnami/kafka:2.8.1-debian-10-r0 --namespace stream-demo --command -- sleep infinity
    kubectl exec --tty -i kafka-1633613367-client --namespace stream-demo -- bash

    PRODUCER:
        kafka-console-producer.sh \

            --broker-list kafka-1633613367-0.kafka-1633613367-headless.stream-demo.svc.cluster.local:9092 \
            --topic test

    CONSUMER:
        kafka-console-consumer.sh \

            --bootstrap-server kafka-1633613367.stream-demo.svc.cluster.local:9092 \
            --topic test \
            --from-beginning