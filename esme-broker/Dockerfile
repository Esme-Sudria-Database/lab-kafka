FROM confluentinc/cp-kafka:7.5.0

USER root

COPY create-topics.sh create-topics.sh
COPY Procfile.init Procfile.init
COPY Procfile Procfile
COPY run-broker.sh  run-broker.sh
COPY run-producer.sh  run-producer.sh

RUN pip3 install honcho

COPY bash-producers bash-producers
COPY station-data /data/station-data

CMD ["./run-broker.sh"]
