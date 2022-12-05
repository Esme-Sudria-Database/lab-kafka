FROM tsl0922/ttyd

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update &&\
    apt-get install -y \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg \
        software-properties-common \
        lsb-release \
        wget

# installation of docker
RUN mkdir -p /etc/apt/keyrings &&\
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg

RUN echo \
      "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
      $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

RUN apt-get update &&\
    apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

# installation of kafka
RUN apt install -y default-jdk

RUN wget https://downloads.apache.org/kafka/3.2.3/kafka_2.13-3.2.3.tgz &&\
    tar xzf kafka_2.13-3.2.3.tgz &&\
    mv kafka_2.13-3.2.3 /usr/local/kafka

COPY ksql /usr/bin/ksql
RUN chmod +x /usr/bin/ksql

ENV PATH=/usr/local/kafka/bin:$PATH
