#!/bin/bash

echo "Create VincennesStation topic"
kafka-topics --topic VincennesStation --create --partitions 1 --if-not-exists --bootstrap-server broker:29092

echo "Create NationStation topic"
kafka-topics --topic NationStation --create --partitions 1 --if-not-exists --bootstrap-server broker:29092

echo "Create GareDeLyonStation topic"
kafka-topics --topic GareDeLyonStation --create --partitions 1 --if-not-exists --bootstrap-server broker:29092

echo "Create BastilleStation topic"
kafka-topics --topic BastilleStation --create --partitions 1 --if-not-exists --bootstrap-server broker:29092

echo "Create ChateletStation topic"
kafka-topics --topic ChateletStation --create --partitions 1 --if-not-exists --bootstrap-server broker:29092

echo "Create TimeBetweenStations topic"
kafka-topics --topic TimeBetweenStations --create --partitions 1 --if-not-exists --bootstrap-server broker:29092
