-- SCRIPT TO CREATE STATIONS STREAMS FROM THEIR TOPICS

-- vincennes_stream -- uncomment to run
CREATE STREAM vincennes_stream (
   train_number INT,
   station STRING,
   train_state STRING,
   timestamp STRING
) WITH (
   kafka_topic = 'VincennesStation',
   VALUE_FORMAT='DELIMITED',
   VALUE_DELIMITER='|'
);


-- nation_stream
CREATE STREAM nation_stream (
   train_number INT,
   station STRING,
   train_state STRING,
   timestamp STRING
) WITH (
   kafka_topic = 'NationStation',
   VALUE_FORMAT='DELIMITED',
   VALUE_DELIMITER='|'
);


-- gare_de_lyon_stream
CREATE STREAM gare_de_lyon_stream (
   train_number INT,
   station STRING,
   train_state STRING,
   timestamp STRING
) WITH (
   kafka_topic = 'GareDeLyonStation',
   VALUE_FORMAT='DELIMITED',
   VALUE_DELIMITER='|'
);


-- bastille_stream
CREATE STREAM bastille_stream (
   train_number INT,
   station STRING,
   train_state STRING,
   timestamp STRING
) WITH (
   kafka_topic = 'BastilleStation',
   VALUE_FORMAT='DELIMITED',
   VALUE_DELIMITER='|'
);


-- chatelet_stream
CREATE STREAM chatelet_stream (
   train_number INT,
   station STRING,
   train_state STRING,
   timestamp STRING
) WITH (
   kafka_topic = 'ChateletStation',
   VALUE_FORMAT='DELIMITED',
   VALUE_DELIMITER='|'
);


-- time_between_stations_stream
CREATE STREAM time_between_stations_stream (
   previous_station STRING,
   next_station STRING,
   duration INT
) WITH (
   kafka_topic = 'TimeBetweenStations',
   VALUE_FORMAT='DELIMITED',
   VALUE_DELIMITER='|'
);
