
DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space

CREATE TABLE planets
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  orbital_period_in_years FLOAT NOT NULL,
  star_id INTEGER NOT NULL,
  galaxy_id INTEGER NOT NULL,
  moons TEXT[]
);

CREATE TABLE stars(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    size INTEGER,
    type TEXT
);

CREATE TABLE galaxies(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
     size INTEGER,
)

INSERT INTO planets
  (name, orbital_period_in_years, star_id, galaxy_id, moons)
VALUES
  ('Earth', 1.00, 1, 1, '{"The Moon"}'),
  ('Mars', 1.88, 1, 1, '{"Phobos", "Deimos"}'),
  ('Venus', 0.62,1, 1, '{}'),
  ('Neptune', 164.8, 1, 1, '{"Naiad", "Thalassa", "Despina", "Galatea", "Larissa", "S/2004 N 1", "Proteus", "Triton", "Nereid", "Halimede", "Sao", "Laomedeia", "Psamathe", "Neso"}'),
  ('Proxima Centauri b', 0.03, 2, 1, '{}'),
  ('Gliese 876 b', 0.23, 3 1, '{}');

  INSERT INTO stars (name) VALUES
  ('The Sun'),
  ('Proxima Centauri'),
  (' Gliese 876');

  INSERT INTO galaxies (name) VALUES
  ('Milky Way');