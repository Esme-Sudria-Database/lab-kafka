#!/bin/bash

echo "Create VincennesStation topic"
kafka-topics --topic VincennesStation --create --partitions 1 --if-not-exists --bootstrap-server broker:29092
echo "VincennesStation topic created"

echo "Create NationStation topic"
kafka-topics --topic NationStation --create --partitions 1 --if-not-exists --bootstrap-server broker:29092
echo "NationStation topic created"

echo "Create GareDeLyonStation topic"
kafka-topics --topic GareDeLyonStation --create --partitions 1 --if-not-exists --bootstrap-server broker:29092
echo "GareDeLyonStation topic created"

echo "Create BastilleStation topic"
kafka-topics --topic BastilleStation --create --partitions 1 --if-not-exists --bootstrap-server broker:29092
echo "BastilleStation topic created"

echo "Create ChateletStation topic"
kafka-topics --topic ChateletStation --create --partitions 1 --if-not-exists --bootstrap-server broker:29092
echo "ChateletStation topic created"
