#!/bin/bash

echo "Create NationStation topic"
kafka-topics --topic NationStation --create --partitions 1 --if-not-exists --bootstrap-server broker:29092

echo "Create ReuillyStation topic"
kafka-topics --topic ReuillyStation --create --partitions 1 --if-not-exists --bootstrap-server broker:29092

echo "Create GareDeLyonStation topic"
kafka-topics --topic GareDeLyonStation --create --partitions 1 --if-not-exists --bootstrap-server broker:29092

echo "Create BastilleStation topic"
kafka-topics --topic BastilleStation --create --partitions 1 --if-not-exists --bootstrap-server broker:29092

echo "Create timeBetweenStations topic"
kafka-topics --topic timeBetweenStations --create --partitions 1 --if-not-exists --bootstrap-server broker:29092
