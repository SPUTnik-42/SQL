CREATE TABLE flights(
    id SERIAL PRIMARY KEY NOT NULL,
    origin VARCHAR NOT NULL,
    destination VARCHAR NOT NULL,
    duration INTEGER NOT NULL
);


INSERT INTO flights 
(origin,destination,duration)
VALUES('NEW YORK','NEW DELHI', 120 );


INSERT INTO flights
(origin,destination,duration)
VALUES('Istanbul','Cairo', 150 );

INSERT INTO flights
(origin,destination,duration)
VALUES('SHANGHAI','LOS ANGELOS', 220 );

INSERT INTO flights
(origin,destination,duration)
VALUES('MADRID','PARIS', 40 );

INSERT INTO flights
(origin,destination,duration)
VALUES('LIMA','WASHINGTON DC', 120 );

INSERT INTO flights
(origin,destination,duration)
VALUES('BERLIN','MOSCOW', 100 );

INSERT INTO flights
(origin,destination,duration)
VALUES('KOLKATA','SINGAPORE', 135 );

SELECT AVG(duration) FROM flights;
/*not working because duration is varchar , avg does not work without int*/

UPDATE flights
    SET duration = 430
    WHERE origin = 'SHANGHAI'
    AND destination = 'LOS ANGELOS';

DELETE FROM flights
    WHERE destination = 'WASHINGTON DC';


SELECT * FROM flights LIMIT 2;

SELECT * FROM flights ORDER BY duration ASC LIMIT 3;

SELECT * FROM flights ORDER BY duration DESC LIMIT 2;

SELECT origin, COUNT(*) FROM flights GROUP BY origin;


INSERT INTO flights
(origin,destination,duration)
VALUES('BERLIN','AMSTERDAM', 70 );

SELECT origin, COUNT(*) FROM flights GROUP BY origin HAVING COUNT(*) > 1 ;





