#!/bin/bash

data_path="/data/station-data/gdl.txt"

sleep 10

while true; do
    while IFS= read -r line; do
        echo "$line" | kafka-console-producer --bootstrap-server broker:29092 --topic GareDeLyonStation
        sleep 2
    done < "$data_path"
done