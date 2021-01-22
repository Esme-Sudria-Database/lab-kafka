#!/usr/bin/env bash

echo "Insert time between stations"
bash bash-producers/theorical-time-between-stations-producer.sh

echo "Start producers"
bash bash-producers/vincennes-producer.sh &
bash bash-producers/nation-producer.sh &
bash bash-producers/gare_de_lyon-producer.sh &
bash bash-producers/bastille-producer.sh &
bash bash-producers/chatelet-producer.sh &