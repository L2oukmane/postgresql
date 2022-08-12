/* Database schema to keep the structure of entire database. */

CREATE TABLE ANIMALS(
id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
name VARCHAR(100),
date_of_birth DATE,
escape_attempts INT, 
weight_kg DECIMAL,
neutered  BOOLEAN
);
