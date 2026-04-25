/*
CREATE DATABASE Urban_housing;
GO
USE Urban_housing;
GO
*/
DROP TABLE IF EXISTS Streets
DROP TABLE IF EXISTS Buildings



CREATE TABLE Streets(Id INT PRIMARY KEY,street_name VARCHAR(50),street_laction VARCHAR(80),city VARCHAR(50),states VARCHAR(50));
CREATE TABLE Buildings(Id INT PRIMARY KEY,building_name VARCHAR(50),building_type VARCHAR(50),number_of_floors INT,city VARCHAR(50),states VARCHAR(60));

INSERT INTO Streets(Id,street_name,street_laction,city,states)
VALUES
(1,'Abak Road','Abak','Uyo','Akwa Ibom State'),
(2,'Oron Road','Oron','Uyo','Akwa Ibom State'),
(3, 'Ikot Ekpene Road','Ikot Ekpene','Uyo','Akwa Ibom State'),
(4,'Udo Udoma Avenue','GRA','Uyo','Akwa Ibom State'),
(5,'Ikpe Road','Ikpe','Uyo','Akwa Ibom State'),
(6,'Obio Imo Road','Obio Imo','Uyo','Akwa Ibom State'),
(7,'Aka Road','Aka','Uyo','Akwa Ibom State'),
(8,'Nwaniba Road','Nwaniba','Uyo','Akwa Ibom State'),
(9,'Itam Road', 'Itam','Uyo','Akwa Ibom State'),
(10,'Ewet Housing','Ewet','Uyo','Akwa Ibom State');

SELECT * FROM Streets;

UPDATE Streets
SET city = 'Eket'
WHERE Id = 1;

DELETE FROM Streets
WHERE Id = 10;


INSERT INTO Buildings (id, building_name, building_type, number_of_floors, city, states)
VALUES
(1, 'Uyo City Hall', 'Government', 3, 'Uyo', 'Akwa Ibom State'),
(2, 'Tropicana', 'Shopping Mall', 8, 'Uyo', 'Akwa Ibom State'),
(3, 'St Lukes Hospital', 'Hospital', 2, 'Uyo', 'Akwa Ibom State'),
(4, '5Star Hotel', 'Hotel', 100, 'Uyo', 'Akwa Ibom State'),
(5, 'Uyo High School', 'School', 2, 'Uyo', 'Akwa Ibom State'),
(6, 'Ibom Airport Terminal', 'Airport', 3, 'Uyo', 'Akwa Ibom State'),
(7, 'Nest Oil Tower', 'Office', 15, 'Uyo', 'Akwa Ibom State'),
(8, 'Ewet Housing Estate', 'Residential', 1, 'Uyo', 'Akwa Ibom State'),
(9, 'Eket Community Bank', 'Bank', 2, 'Eket', 'Akwa Ibom State'),
(10, 'Ikot Ekpene Market', 'Market', 1, 'Ikot Ekpene', 'Akwa Ibom State');

SELECT * FROM Buildings;

UPDATE Buildings
SET number_of_floors = 5
WHERE id = 1;

DELETE FROM Buildings
WHERE id = 10;




