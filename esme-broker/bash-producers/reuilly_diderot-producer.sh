#!/bin/bash

data_path="/data/station-data/reuilly.txt"

sleep 5

while true; do
    while IFS= read -r line; do
        echo "$line" | kafka-console-producer --bootstrap-server broker:29092 --topic ReuillyStation
        sleep 2
    done < "$data_path"
done