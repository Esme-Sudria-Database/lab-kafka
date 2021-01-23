# Lab Kafka for classes at esme sudria

This docker stack run the necessary environment to perform kafka labs
on courses given at ESME Sudria.

This environment hosts these components :

* a kafka cluster with actives producers and real time feed topics about metro ligne 1 logs

* an administration for kafka with [AKHQ](https://github.com/tchiotludo/akhq)

![](docs/live-tail-akhq.png)

## General information

* [website](esme.farcellier.com)

## Requirement 1 : installation to perform on your computer

You will need those softwares on your computer :

* [Docker](https://www.docker.com/)
* [Git](https://git-scm.com/)

On linux
---------

* 1. [install docker](https://docs.docker.com/engine/install/ubuntu/)

* 2. install git

```
sudo apt-get install git
```

* 3. [install docker-compose](https://docs.docker.com/compose/install/#install-compose-on-linux-systems)

On windows
-----------

* 1. [install docker](https://docs.docker.com/docker-for-windows/install/)

* 2. [install git](https://git-scm.com/download/win)

On mac
-------

* 1. [install docker](https://docs.docker.com/docker-for-mac/install/)

* 2. install git

```
brew install git
```


## Step 1 : install the environment

1. clone this repository :

```
git clone https://github.com/Esme-Sudria-Database/lab-kafka.git
```

2. go on directory

```bash
cd lab-kafka
```

3. mount the lab

```bash
docker-compose up
```

## Step 2 : explore kafka topics

The administration console is accessible through your internet browser.

```bash
http://localhost:8080
```

Expand burger menu and click to `Topics`.

Browse and explore topic contents, topic metadata.

![](docs/topics-akhq.png)

Don't hesitate to click on topics to see events ! 

### Details

There are currently 6 topics:
* VincennesStation
* NationStation
* GareDeLyonStation
* Bastilletation
* ChateletStation
* TimeBetweenStations

The first five are filled continuously with logs from metro stations.

The sixth is filled once at initialisation.

![](docs/topics-producers-archi.png)

### Station Producers

Station producers emits data continuously, at 1 event every 8 seconds for terminus and 1 event every 4 seconds for normal stations.

An event is a message composed by a **key**, `null` in our usecase, and a **value** of format `train_number|station|train_state|timestamp`.

NB: TimeBetweenStations has a special structure: `previous_station|next_station|time_between`.


## Step 3 : explore ksqldb

The ksqldb console is accessible through your internet browser.

```
http://localhost:7681
```
to launch terminal through your internet browser

![](docs/console-in-browser.png)


Then copy/paste this command into the terminal to start ksqldb command line tool
```bash
ksql http://ksqldb-server:8088
```

![](docs/ksqldb-cli.png)

At this point, you are able to run query from the course.


## Contributors

* Luc Marchand
* Fabien Arcellier


