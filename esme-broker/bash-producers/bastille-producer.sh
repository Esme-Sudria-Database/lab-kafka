#!/bin/bash

data_path="/data/station-data/BASTILLE.txt"

sleep 11

while true; do
    while IFS= read -r line; do
        echo "$line" | kafka-console-producer --bootstrap-server broker:29092 --topic BastilleStation
        sleep 4
    done < "$data_path"
done
