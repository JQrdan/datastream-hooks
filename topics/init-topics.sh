#!/bin/bash

readonly ZOOKEEPER=zookeeper:2181

echo "Creating topic songs"
./bin/kafka-topics.sh --create --zookeeper ZOOKEEPER --replication-factor 1 --partitions 3 --topic songs

echo "Creating topic songattributes"
./bin/kafka-topics.sh --create --zookeeper ZOOKEEPER --replication-factor 1 --partitions 3 --topic songattributes

echo "Creating topic details"
./bin/kafka-topics.sh --create --zookeeper ZOOKEEPER --replication-factor 1 --partitions 3 --topic details

echo "Creating topic genres"
./bin/kafka-topics.sh --create --zookeeper ZOOKEEPER --replication-factor 1 --partitions 3 --topic genres

echo "Creating topic genre-averages"
./bin/kafka-topics.sh --create --zookeeper ZOOKEEPER --replication-factor 1 --partitions 3 --topic genre-averages

echo "Creating topic artist-averages"
./bin/kafka-topics.sh --create --zookeeper ZOOKEEPER --replication-factor 1 --partitions 3 --topic artist-averages

echo "Creating topic album-averages"
./bin/kafka-topics.sh --create --zookeeper ZOOKEEPER --replication-factor 1 --partitions 3 --topic album-averages

echo "Creating topic connect-configs"
./bin/kafka-topics.sh --create --zookeeper ZOOKEEPER --replication-factor 3 --partitions 1 --topic connect-configs

echo "Creating topic connect-offsets"
./bin/kafka-topics.sh --create --zookeeper ZOOKEEPER --replication-factor 3 --partitions 25 --topic connect-offsets

echo "Creating topic connect-status topic"
./bin/kafka-topics.sh --create --zookeeper ZOOKEEPER --replication-factor 3 --partitions 5 --topic connect-status

exit 0