FROM tsl0922/ttyd

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    wget

# installation of docker
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - && \
    add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" &&\
    apt-get install -y docker-ce docker-ce-cli containerd.io

# installation of kafka
RUN apt install -y default-jdk

RUN wget https://downloads.apache.org/kafka/2.7.0/kafka_2.13-2.7.0.tgz &&\
    tar xzf kafka_2.13-2.7.0.tgz &&\
    mv kafka_2.13-2.7.0 /usr/local/kafka

COPY ksql /usr/bin/ksql
RUN chmod +x /usr/bin/ksql

ENV PATH=/usr/local/kafka/bin:$PATH



