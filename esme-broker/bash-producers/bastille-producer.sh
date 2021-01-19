#!/bin/bash

data_path="/data/station-data/bastille.txt"

sleep 15

while true; do
    while IFS= read -r line; do
        echo "$line" | kafka-console-producer --bootstrap-server broker:29092 --topic BastilleStation --property parse.key=true --property key.separator=,
        sleep 4
    done < "$data_path"
done