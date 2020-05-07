CREATE TABLE passengers (
    ID SERIAL PRIMARY KEY NOT NULL,
    passenger_name VARCHAR(50) NOT NULL,
    flight_ID INTEGER REFERENCES flights
);

INSERT INTO passengers
(passenger_name, flight_ID)
VALUES('ALICE', 1),
    ('BOB', 1 ),
    ('JOJO', 2 ),
    ('KENICHI', 2 ),
    ('USHNIK', 6 ),
    ('UTPAL', 7 );


SELECT * FROM passengers

SELECT origin, destination, passenger_name FROM flights JOIN passengers ON
passengers.flight_ID = flights.id ; 


SELECT origin, destination, passenger_name FROM flights JOIN passengers ON
passengers.flight_ID = flights.id WHERE passenger_name = 'UTPAL'; 

SELECT origin, destination, passenger_name FROM flights LEFT JOIN passengers ON
passengers.flight_ID = flights.id ; 

SELECT origin, destination, passenger_name FROM flights RIGHT JOIN passengers ON
passengers.flight_ID = flights.id ; 

SELECT flight_ID FROM passengers GROUP BY flight_ID HAVING COUNT(*) > 1;


SELECT * FROM flights WHERE id IN
(SELECT flight_ID FROM passengers GROUP BY flight_ID HAVING COUNT(*) > 1);