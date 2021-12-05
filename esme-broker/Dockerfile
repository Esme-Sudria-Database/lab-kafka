FROM confluentinc/cp-enterprise-kafka:6.0.1

USER root

COPY create-topics.sh create-topics.sh
COPY Procfile.init Procfile.init
COPY Procfile Procfile
COPY run-broker.sh  run-broker.sh
COPY run-producer.sh  run-producer.sh

RUN yum install python3 -y
RUN pip3 install honcho

COPY bash-producers bash-producers
COPY station-data /data/station-data

CMD ["./run-broker.sh"]