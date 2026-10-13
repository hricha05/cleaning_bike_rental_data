DROP TABLE IF EXISTS bike CASCADE;
DROP TABLE IF EXISTS trip;
DROP TABLE IF EXISTS station;
DROP TABLE IF EXISTS users;

CREATE TABLE station (
	id INTEGER PRIMARY KEY,
	station_name VARCHAR(50),
	station_latitude FLOAT,
	station_longitude FLOAT	
);

CREATE TABLE trip (
	id INTEGER,
	start_time TIMESTAMP,
	stop_time TIMESTAMP,
	duration TIMESTAMP,
	start_station_id INTEGER,
	end_station_id INTEGER,
    PRIMARY KEY (id),
    FOREIGN KEY (start_station_id) REFERENCES station
);

CREATE TABLE bike (
	id INTEGER,
	trip_id INTEGER,
    PRIMARY KEY (id),
    FOREIGN KEY (trip_id) REFERENCES trip (id)
);

CREATE TABLE users (
	id INTEGER PRIMARY KEY,
	user_type VARCHAR(20),
	birth_year INTEGER,
	gender VARCHAR(8),
	bike_id INTEGER,
    FOREIGN KEY (bike_id) REFERENCES bike
 );