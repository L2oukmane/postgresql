/*Queries that provide answers to the questions from all projects.*/

SELECT * FROM ANIMALS WHERE date_of_birth BETWEEN '2016-01-01' AND '2019-01-01';
SELECT * FROM ANIMALS WHERE weight_kg >= 10.4 and weight_kg <= 17.4;
SELECT name,escape_attempts FROM ANIMALS WHERE weight_kg>10.5;
SELECT * FROM ANIMALS WHERE name!='Gabumon';
SELECT * FROM ANIMALS WHERE neutered=true AND escape_attempts<3;
SELECT * FROM ANIMALS WHERE neutered=true;
SELECT * FROM ANIMALS WHERE name LIKE '%mon%';
SELECT * FROM ANIMALS;
SELECT date_of_birth FROM ANIMALS WHERE name='Agumon' OR name='Pikachu';

/*Queries that provide answers to the questions from second day tutorials.*/
-- First transaction
 begin;
 update animals set species='digimon' where name like '%mon';
 update animals set species='pokemon' where name not like '%mon';
  
-- Second transaction
 begin;
 delete from animals; -- delete all rows from table
 rollback; -- rollback all deleted rows

-- Third transaction
begin;
delete from animals where date_of_birth> '2022-01-01';
savepoint del1;
update animals set weight_kg= weight_kg*-1;
rollback to del1;
update animals set weight_kg= weight_kg*-1 where weight_kg<0;
commit;

-- other queries
select count(*) from animals;
select count(escape_attempts) from animals where escape_attempts=0;
select avg(weight_kg) from animals;
select neutered , sum(escape_attempts) from animals group by neutered;
select species, max(weight_kg),min(weight_kg) from animals group by species;
select species , avg(escape_attempts) from animals  where date_of_birth between '1990-01-01' and '2000-01-01' group by species;

/*Queries that provide answers to the questions from third day tutorials.*/
select full_name, name from owners join animals on animals.owner_id= owners.id where full_name='Melody Pond';
select animals.name from animals join species on animals.species_id= species.id where species.name='Pokemon';
select full_name, count(name) from owners left join animals on animals.owner_id= owners.id; 
select animals.name from owners join animals on animals.owner_id= owners.id where owners.full_name='Jennifer Orwell' and animals.species_id=2;
select animals.name from owners join animals on animals.owner_id= owners.id where owners.full_name='Dean Winchester' and animals.escape_attempts=0;
select species.name, count(animals.name) from species join animals on animals.species_id= species.id group by species.name;