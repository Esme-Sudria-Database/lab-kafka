#!/bin/bash

data_path="/data/station-data/theorical-time-between-stations.txt"

while IFS= read -r line; do
    echo "$line" | kafka-console-producer --bootstrap-server broker:29092 --topic timeBetweenStations 
done < "$data_path"
