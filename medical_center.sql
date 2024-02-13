DROP DATABASE medical_db;

CREATE DATABASE medical_db;

\c medical_db;


CREATE TABLE doctors (
    id SERIAL PRIMARY KEY,
     first_name TEXT NOT NULL ,
    last_name TEXT  NOT NULL ,
   specialty TEXT NOT NULL
);

CREATE TABLE patients(
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL ,
    last_name TEXT NOT NULL ,
    dob DATE NOT NULL,
    insurance TEXT 
);

CREATE TABLE appointments(
    id SERIAL PRIMARY KEY,
    dr_id INTEGER NOT NULL REFERENCES doctors,
    pt_id INTEGER NOT NULL REFERENCES patients,
   date DATE NOT NULL
);

CREATE TABLE diseases(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL ,
    description TEXT 
   
);


CREATE TABLE diagnoses(
    id SERIAL PRIMARY KEY,
    app_id INTEGER NOT NULL REFERENCES appointments ,
    disease_id INTEGER NOT NULL REFERENCES diseases,
    notes TEXT 
   
);

INSERT INTO doctors (first_name,last_name,specialty) VALUES
('Wilda','Stone','Internal' ),
('Devon','McNeil','Heart'),
('Lily','Harrell','GI');


INSERT INTO patients (first_name,last_name,dob,insurance) VALUES
('Brian','Robinson', '1965-08-13', 'ABC' ),
('Lindsey', 'Kennedy', '1983-03-21', 'JKL'),
('Fabian', 'Yoder', '1990-07-09','XYZ');

INSERT INTO appointments (dr_id,pt_id,date) VALUES
('2','3','2024-01-21' ),
('3','1','2023-12-29' ),
('1','2','2024-02-02' );

INSERT INTO diseases (name,description) VALUES
('Influenza','respiratory infection' ),
('Hypertension','high blood pressure'),
('Celiac', 'intolerance to gluten');

INSERT INTO diagnoses (app_id,disease_id,notes) VALUES
('2','3','change diet to gluten-free foods' ),
('1','2','Start new medication'),
('3','1','return if conditions do not improve in 1 week');
