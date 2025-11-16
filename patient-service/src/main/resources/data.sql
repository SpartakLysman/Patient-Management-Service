-- Ensure the 'patient' table exists
CREATE TABLE IF NOT EXISTS patient
(
    id              UUID PRIMARY KEY,
    first_name      VARCHAR(255)        NOT NULL,
    last_name       VARCHAR(255)        NOT NULL,
    gender          VARCHAR(50)         NOT NULL,
    email           VARCHAR(255) UNIQUE NOT NULL,
    address         VARCHAR(255)        NOT NULL,
    date_of_birth   DATE                NOT NULL,
    registered_date DATE                NOT NULL
);

-- Insert well-known UUIDs for specific patients
INSERT INTO patient (id, first_name, last_name, gender, email, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174000',
       'John',
       'Doe',
       'MALE',
       'john.doe@example.com',
       '123 Main St, Springfield',
       '1985-06-15',
       '2024-01-10'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '123e4567-e89b-12d3-a456-426614174000');

INSERT INTO patient (id, first_name, last_name, gender, email, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174001',
       'Jane',
       'Smith',
       'FEMALE',
       'jane.smith@example.com',
       '456 Elm St, Shelbyville',
       '1990-09-23',
       '2023-12-01'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '123e4567-e89b-12d3-a456-426614174001');

INSERT INTO patient (id, first_name, last_name, gender, email, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174002',
       'Alice',
       'Johnson',
       'FEMALE',
       'alice.johnson@example.com',
       '789 Oak St, Capital City',
       '1978-03-12',
       '2022-06-20'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '123e4567-e89b-12d3-a456-426614174002');

INSERT INTO patient (id, first_name, last_name, gender, email, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174003',
       'Bob',
       'Brown',
       'MALE',
       'bob.brown@example.com',
       '321 Pine St, Springfield',
       '1982-11-30',
       '2023-05-14'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '123e4567-e89b-12d3-a456-426614174003');

INSERT INTO patient (id, first_name, last_name, gender, email, address, date_of_birth, registered_date)
SELECT '123e4567-e89b-12d3-a456-426614174004',
       'Emily',
       'Davis',
       'FEMALE',
       'emily.davis@example.com',
       '654 Maple St, Shelbyville',
       '1995-02-05',
       '2024-03-01'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '123e4567-e89b-12d3-a456-426614174004');

-- Additional patients
INSERT INTO patient (id, first_name, last_name, gender, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174005',
       'Michael',
       'Green',
       'MALE',
       'michael.green@example.com',
       '987 Cedar St, Springfield',
       '1988-07-25',
       '2024-02-15'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174005');

INSERT INTO patient (id, first_name, last_name, gender, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174006',
       'Sarah',
       'Taylor',
       'FEMALE',
       'sarah.taylor@example.com',
       '123 Birch St, Shelbyville',
       '1992-04-18',
       '2023-08-25'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174006');

INSERT INTO patient (id, first_name, last_name, gender, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174007',
       'David',
       'Wilson',
       'MALE',
       'david.wilson@example.com',
       '456 Ash St, Capital City',
       '1975-01-11',
       '2022-10-10'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174007');

INSERT INTO patient (id, first_name, last_name, gender, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174008',
       'Laura',
       'White',
       'FEMALE',
       'laura.white@example.com',
       '789 Palm St, Springfield',
       '1989-09-02',
       '2024-04-20'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174008');

INSERT INTO patient (id, first_name, last_name, gender, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174009',
       'James',
       'Harris',
       'MALE',
       'james.harris@example.com',
       '321 Cherry St, Shelbyville',
       '1993-11-15',
       '2023-06-30'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174009');

INSERT INTO patient (id, first_name, last_name, gender, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174010',
       'Emma',
       'Moore',
       'FEMALE',
       'emma.moore@example.com',
       '654 Spruce St, Capital City',
       '1980-08-09',
       '2023-01-22'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174010');

INSERT INTO patient (id, first_name, last_name, gender, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174011',
       'Ethan',
       'Martinez',
       'MALE',
       'ethan.martinez@example.com',
       '987 Redwood St, Springfield',
       '1984-05-03',
       '2024-05-12'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174011');

INSERT INTO patient (id, first_name, last_name, gender, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174012',
       'Sophia',
       'Clark',
       'FEMALE',
       'sophia.clark@example.com',
       '123 Hickory St, Shelbyville',
       '1991-12-25',
       '2022-11-11'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174012');

INSERT INTO patient (id, first_name, last_name, gender, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174013',
       'Daniel',
       'Lewis',
       'MALE',
       'daniel.lewis@example.com',
       '456 Cypress St, Capital City',
       '1976-06-08',
       '2023-09-19'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174013');

INSERT INTO patient (id, first_name, last_name, gender, email, address, date_of_birth, registered_date)
SELECT '223e4567-e89b-12d3-a456-426614174014',
       'Isabella',
       'Walker',
       'FEMALE',
       'isabella.walker@example.com',
       '789 Willow St, Springfield',
       '1987-10-17',
       '2024-03-29'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '223e4567-e89b-12d3-a456-426614174014');

INSERT INTO patient (id, first_name, last_name, gender, email, address, date_of_birth, registered_date)
SELECT '323e4567-e89b-12d3-a456-426614174100',
       'Olivia',
       'Bennett',
       'FEMALE',
       'olivia.bennett@example.com',
       '12 River Rd, Springfield',
       '1994-04-12',
       '2024-03-10'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174100');

INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174101',
       'Liam',
       'Anderson',
       'MALE',
       'liam.anderson@example.com',
       '88 Lake View, Shelbyville',
       '1989-01-22',
       '2023-11-05'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174101');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174102',
       'Ava',
       'Scott',
       'FEMALE',
       'ava.scott@example.com',
       '42 Maple Ave, Capital City',
       '1992-07-19',
       '2024-02-14'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174102');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174103',
       'Noah',
       'King',
       'MALE',
       'noah.king@example.com',
       '50 Elm Drive, Springfield',
       '1985-12-09',
       '2023-08-22'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174103');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174104',
       'Mia',
       'Wright',
       'FEMALE',
       'mia.wright@example.com',
       '19 Oak Circle, Shelbyville',
       '1996-03-28',
       '2024-01-19'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174104');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174105',
       'Lucas',
       'Hill',
       'MALE',
       'lucas.hill@example.com',
       '77 Cedar Lane, Capital City',
       '1987-05-04',
       '2023-10-30'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174105');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174106',
       'Charlotte',
       'Baker',
       'FEMALE',
       'charlotte.baker@example.com',
       '9 Poplar St, Springfield',
       '1993-11-11',
       '2022-12-20'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174106');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174107',
       'Henry',
       'Mitchell',
       'MALE',
       'henry.mitchell@example.com',
       '33 Birch Way, Shelbyville',
       '1981-09-08',
       '2024-04-02'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174107');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174108',
       'Amelia',
       'Carter',
       'FEMALE',
       'amelia.carter@example.com',
       '61 Willow Rd, Capital City',
       '1990-06-14',
       '2023-03-16'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174108');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174109',
       'Elijah',
       'Turner',
       'MALE',
       'elijah.turner@example.com',
       '102 Spruce Ct, Springfield',
       '1984-08-23',
       '2022-09-10'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174109');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174110',
       'Harper',
       'Phillips',
       'FEMALE',
       'harper.phillips@example.com',
       '17 Chestnut St, Shelbyville',
       '1997-10-01',
       '2024-05-01'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174110');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174111',
       'William',
       'Campbell',
       'MALE',
       'william.campbell@example.com',
       '48 Fern Ln, Capital City',
       '1983-02-17',
       '2023-06-28'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174111');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174112',
       'Evelyn',
       'Parker',
       'FEMALE',
       'evelyn.parker@example.com',
       '76 Aspen St, Springfield',
       '1991-07-05',
       '2022-11-03'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174112');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174113',
       'James',
       'Evans',
       'MALE',
       'james.evans2@example.com',
       '24 Grove Rd, Shelbyville',
       '1986-11-20',
       '2024-02-25'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174113');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174114',
       'Abigail',
       'Collins',
       'FEMALE',
       'abigail.collins@example.com',
       '59 Bay St, Capital City',
       '1994-09-12',
       '2023-01-11'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174114');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174115',
       'Benjamin',
       'Sanchez',
       'MALE',
       'benjamin.sanchez@example.com',
       '301 Pine Hill, Springfield',
       '1982-03-06',
       '2023-09-14'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174115');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174116',
       'Ella',
       'Morris',
       'FEMALE',
       'ella.morris@example.com',
       '92 Cliffside Ln, Shelbyville',
       '1998-01-09',
       '2024-03-21'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174116');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174117',
       'Logan',
       'Rogers',
       'MALE',
       'logan.rogers@example.com',
       '81 Mountain Dr, Capital City',
       '1980-10-24',
       '2023-05-07'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174117');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174118',
       'Grace',
       'Reed',
       'FEMALE',
       'grace.reed@example.com',
       '62 Walnut St, Springfield',
       '1992-05-31',
       '2022-08-13'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174118');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174119',
       'Jack',
       'Cook',
       'MALE',
       'jack.cook@example.com',
       '145 Golden Way, Shelbyville',
       '1989-04-03',
       '2024-01-06'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174119');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174120',
       'Chloe',
       'Morgan',
       'FEMALE',
       'chloe.morgan@example.com',
       '87 High St, Capital City',
       '1996-06-13',
       '2023-02-19'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174120');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174121',
       'Sebastian',
       'Bell',
       'MALE',
       'sebastian.bell@example.com',
       '11 Seaview Rd, Springfield',
       '1983-08-07',
       '2022-10-27'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174121');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174122',
       'Victoria',
       'Murphy',
       'FEMALE',
       'victoria.murphy@example.com',
       '44 Blossom Ln, Shelbyville',
       '1990-12-19',
       '2024-04-17'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174122');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174123',
       'Matthew',
       'Bailey',
       'MALE',
       'matthew.bailey@example.com',
       '132 Orchard Rd, Capital City',
       '1987-09-01',
       '2023-03-15'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174123');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174124',
       'Scarlett',
       'Rivera',
       'FEMALE',
       'scarlett.rivera@example.com',
       '63 Meadow St, Springfield',
       '1995-03-27',
       '2022-11-29'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174124');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174125',
       'Alexander',
       'Cooper',
       'MALE',
       'alexander.cooper@example.com',
       '29 Kings Rd, Shelbyville',
       '1984-07-18',
       '2024-02-09'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174125');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174126',
       'Zoey',
       'Richardson',
       'FEMALE',
       'zoey.richardson@example.com',
       '5 Forest Ln, Capital City',
       '1993-12-23',
       '2023-10-12'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174126');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174127',
       'Jackson',
       'Howard',
       'MALE',
       'jackson.howard@example.com',
       '310 Sunset Blvd, Springfield',
       '1981-02-14',
       '2022-09-09'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174127');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174128',
       'Layla',
       'Ward',
       'FEMALE',
       'layla.ward@example.com',
       '14 Coral Dr, Shelbyville',
       '1999-04-20',
       '2024-03-28'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174128');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174129',
       'Daniel',
       'Brooks',
       'MALE',
       'daniel.brooks@example.com',
       '501 Timber Ln, Capital City',
       '1986-10-05',
       '2023-08-11'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174129');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174130',
       'Aria',
       'Wood',
       'FEMALE',
       'aria.wood@example.com',
       '88 Windmill Rd, Springfield',
       '1991-05-15',
       '2022-12-06'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174130');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174131',
       'Owen',
       'Barnes',
       'MALE',
       'owen.barnes@example.com',
       '72 Ridge Ave, Shelbyville',
       '1983-01-29',
       '2024-01-27'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174131');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174132',
       'Hannah',
       'Fisher',
       'FEMALE',
       'hannah.fisher@example.com',
       '39 Timber St, Capital City',
       '1997-06-11',
       '2023-02-20'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174132');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174133',
       'Wyatt',
       'Greene',
       'MALE',
       'wyatt.greene@example.com',
       '90 Meadowbrook Ln, Springfield',
       '1980-09-07',
       '2022-10-16'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174133');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174134',
       'Lily',
       'Fox',
       'FEMALE',
       'lily.fox@example.com',
       '22 Brookside Dr, Shelbyville',
       '1994-11-30',
       '2024-04-12'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174134');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174135',
       'Gabriel',
       'Henderson',
       'MALE',
       'gabriel.henderson@example.com',
       '17 Sunset Rd, Capital City',
       '1988-03-21',
       '2023-07-09'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174135');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174136',
       'Nora',
       'Cole',
       'FEMALE',
       'nora.cole@example.com',
       '64 Ocean View, Springfield',
       '1992-02-25',
       '2022-08-19'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174136');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174137',
       'Isaac',
       'Jenkins',
       'MALE',
       'isaac.jenkins@example.com',
       '120 Beacon St, Shelbyville',
       '1985-04-30',
       '2024-01-04'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174137');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174138',
       'Riley',
       'Perry',
       'FEMALE',
       'riley.perry@example.com',
       '28 Laurel Ln, Capital City',
       '1996-07-08',
       '2023-03-04'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174138');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174139',
       'Mason',
       'Powell',
       'MALE',
       'mason.powell@example.com',
       '15 Valley Rd, Springfield',
       '1981-12-27',
       '2022-09-22'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174139');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174140',
       'Penelope',
       'Long',
       'FEMALE',
       'penelope.long@example.com',
       '42 Evergreen Dr, Shelbyville',
       '1990-10-16',
       '2024-03-06'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174140');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174141',
       'Ethan',
       'Patterson',
       'MALE',
       'ethan.patterson@example.com',
       '11 Harbor Rd, Capital City',
       '1984-01-03',
       '2023-07-25'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174141');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174142',
       'Aubrey',
       'Hughes',
       'FEMALE',
       'aubrey.hughes@example.com',
       '98 Lighthouse Ave, Springfield',
       '1993-03-18',
       '2022-11-08'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174142');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174143',
       'Nathan',
       'Flores',
       'MALE',
       'nathan.flores@example.com',
       '74 Pine Ridge, Shelbyville',
       '1987-06-02',
       '2024-02-02'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174143');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174144',
       'Lucy',
       'Washington',
       'FEMALE',
       'lucy.washington@example.com',
       '63 Riverbend Dr, Capital City',
       '1995-05-29',
       '2023-04-27'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174144');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174145',
       'Samuel',
       'Graham',
       'MALE',
       'samuel.graham@example.com',
       '18 Willowbrook Ln, Springfield',
       '1983-09-13',
       '2022-10-02'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174145');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174146',
       'Stella',
       'Kim',
       'FEMALE',
       'stella.kim@example.com',
       '27 Maplewood Dr, Shelbyville',
       '1998-08-21',
       '2024-05-02'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174146');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174147',
       'Levi',
       'Frazier',
       'MALE',
       'levi.frazier@example.com',
       '11 Skyview Rd, Capital City',
       '1986-04-25',
       '2023-01-18'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174147');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174148',
       'Zoe',
       'Hart',
       'FEMALE',
       'zoe.hart@example.com',
       '142 Beacon Hill, Springfield',
       '1991-02-02',
       '2022-12-14'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174148');
INSERT INTO patient
SELECT '323e4567-e89b-12d3-a456-426614174149',
       'Dylan',
       'Russell',
       'MALE',
       'dylan.russell@example.com',
       '5 Valleycrest Dr, Shelbyville',
       '1989-03-18',
       '2024-01-29'
WHERE NOT EXISTS (SELECT 1 FROM patient WHERE id = '323e4567-e89b-12d3-a456-426614174149');
