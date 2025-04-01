CREATE TABLE f1circuits AS SELECT * FROM read_csv_auto('data/circuits.csv');
CREATE TABLE f1constructor_results AS SELECT * FROM read_csv_auto('data/constructor_results.csv');
CREATE TABLE f1constructor_standings AS SELECT * FROM read_csv_auto('data/constructor_standings.csv');
CREATE TABLE f1constructors AS SELECT * FROM read_csv_auto('data/constructors.csv');
CREATE TABLE f1driver_standings AS SELECT * FROM read_csv_auto('data/driver_standings.csv');
CREATE TABLE f1drivers AS SELECT * FROM read_csv_auto('data/drivers.csv');
CREATE TABLE f1lap_time AS SELECT * FROM read_csv_auto('data/lap_times.csv');
CREATE TABLE f1pit_stops AS SELECT * FROM read_csv_auto('data/pit_stops.csv');
CREATE TABLE f1qualifying AS SELECT * FROM read_csv_auto('data/qualifying.csv');
CREATE TABLE f1races AS SELECT * FROM read_csv_auto('data/races.csv');
CREATE TABLE f1results AS SELECT * FROM read_csv_auto('data/results.csv');
CREATE TABLE f1seasons AS SELECT * FROM read_csv_auto('data/seasons.csv');
CREATE TABLE f1sprint_results AS SELECT * FROM read_csv_auto('data/sprint_results.csv');
CREATE TABLE f1status AS SELECT * FROM read_csv_auto('data/status.csv');

