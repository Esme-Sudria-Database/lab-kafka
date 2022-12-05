#!/bin/bash

data_path="/data/station-data/VINCENNES.txt"

while true; do
    line_index=0
    while IFS= read -r line; do
        echo "$line" | kafka-console-producer --bootstrap-server broker:29092 --topic VincennesStation
        sleep 9
    done < "$data_path"
done
