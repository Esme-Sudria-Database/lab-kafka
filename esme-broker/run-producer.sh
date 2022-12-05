#!/usr/bin/env bash

echo "Start producers"
bash bash-producers/vincennes-producer.sh &
bash bash-producers/nation-producer.sh &
bash bash-producers/gare_de_lyon-producer.sh &
bash bash-producers/bastille-producer.sh &
bash bash-producers/chatelet-producer.sh &
