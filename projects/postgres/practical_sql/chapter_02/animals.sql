CREATE TABLE IF NOT EXISTS animals (
    id bigserial,
    name varchar(50),
    species_common varchar(50),
    species_latin varchar(50),
    date_admitted date,
);

CREATE TABLE IF NOT EXISTS animal_specifics (
    id bigserial,
    name varchar(50)
    age numeric,
    gender varchar(20),
    color varchar(50),
    location varchar(20)
);
