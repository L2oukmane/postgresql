/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM ANIMALS WHERE name LIKE '%mon%';
SELECT * FROM ANIMALS WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-01-01';
SELECT * FROM ANIMALS WHERE neutered=true AND escape_attempts<3;
SELECT date_of_birth FROM ANIMALS WHERE name='Agumon' OR name='Pikachu';
SELECT name,escape_attempts FROM ANIMALS WHERE weight_kg>10.5;
SELECT * FROM ANIMALS WHERE neutered=true;
SELECT * FROM ANIMALS WHERE name!='Gabumon';
SELECT * FROM ANIMALS WHERE weight_kg >= 10.4 and weight_kg <= 17.4;
