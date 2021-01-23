#!/bin/bash

data_path="/data/station-data/chatelet.txt"

sleep 15

while true; do
    while IFS= read -r line; do
        echo "$line" | kafka-console-producer --bootstrap-server broker:29092 --topic ChateletStation
        sleep 9
    done < "$data_path"
done