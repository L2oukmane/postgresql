/* Populate database with sample data. */
INSERT INTO animals (name,date_of_birth,escape_attempts,weight_kg,neutered)  
VALUES
('Agumon','2020-02-03',0,10.23,true), 
('Gabumon','2018-11-15',2,8,true), 
('Pikachu','2021-01-07',1,15.04,false),
('devimon','2017-05-12',5,11,true),
('Charmander','2020-03-08',0,11,false),
('Plantmon' , '2021-11-15',2,5.7,true),
('Squirtle','1993-04-02',3,12.13,false),
('Angemon','2005-06-12',1,45,true),
('Boarmon','2005-06-07',7,20.4,true),
('Blossom','1998,10-13',3,17,true),
('Ditto','2022-05-14',4,22,true)
;

insert into owners (full_name,age) values 
('Sam Smith',34),
('Jennifer Orwell',19),
('Bob',45),
('Melody Pond',77),
('Dean Winchester',14),
('Jodie Whittaker',38)
;

insert into species (name) values 
('Pokemon'),
('Digimon')
;

insert into vets (name,age,date_of_graduation) values 
('William Tatcher',45,'2000-04-23'),
('Maisy Smith',26,'2019-01-17'),
('Stephanie Mendez',64,'1981-05-04'),
('Jack Harkness',38,'2008-06-08');

insert into specializations (vet_id,species_id) values 
(1,1),
(3,1),
(3,2),
(4,2)
;

insert into visits (animal_id,vet_id,date_of_visit)
 values
 (1,1,'2020-04-24'),
 (1,3,'2020-07-22'),
 (2,4,'2021-02-02'),
 (3,2,'2020-01-05'),
 (3,2,'2020-03-08'),
 (3,2,'2020-05-14'),
 (4,3,'2021-05-04'),
 (5,4,'2021-02-24'),
 (6,2,'2019-12-21'),
 (6,1,'2020-08-10'),
 (6,2,'2021-04-07'),
 (7,3,'2019-09-29'),
 (8,4,'2020-10-03'),
 (8,4,'2020-11-04'),
 (9,2,'2019-01-24'),
 (9,2,'2019-05-15'),
 (9,2,'2020-02-27'),
 (9,2,'2020-08-03'),
 (10,3,'2020-05-24'),
 (10,1,'2021-01-11');

-- update animals table
update animals set species_id='1' where name not like '%mon';
update animals set species_id='2' where name like '%mon';

update animals set owner_id=1  where name='Agumon';
update animals set owner_id=2  where name='Gabumon' or name='Pikachu';
update animals set owner_id=3  where name='devimon' or name='Plantmon';  
update animals set owner_id=4  where name='Charmander' or name='Squirtle' or name='Blossom';
update animals set owner_id=5  where name='Angemon' or name='Boarmon'; 