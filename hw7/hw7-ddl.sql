# hw7-ddl.sql

# Section 1
# Drops all tables.

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS peopleskills;
DROP TABLE IF EXISTS peopleroles;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS skills;
DROP TABLE IF EXISTS roles;
SET FOREIGN_KEY_CHECKS=1;

# Section 2
# Create skills

CREATE TABLE skills (
    id int NOT NULL,
    name varchar(255) NOT NULL,
    description varchar(4096) NOT NULL,
    tag varchar(255) NOT NULL,
    url varchar(255) DEFAULT NULL,
    time_commitment varchar(255) DEFAULT NULL,
    PRIMARY KEY (id)
);

# Section 3
# Populate skills

INSERT INTO skills (id, name, description, tag, url, time_commitment) VALUES
(1, 'Python Programming', 'Learning Python for data analysis and web development', 'Skill 1', NULL, '200 hours'),
(2, 'JavaScript Development', 'Mastering JavaScript for front-end and back-end applications', 'Skill 2', NULL, '300 hours'),
(3, 'Project Management', 'Skills in managing and leading projects', 'Skill 3', NULL, '150 hours'),
(4, 'Database Design', 'Understanding and implementing database systems', 'Skill 4', NULL, '100 hours'),
(5, 'Machine Learning', 'Applying machine learning techniques and algorithms', 'Skill 5', NULL, '400 hours'),
(6, 'Web Design', 'Designing user interfaces and user experiences for websites', 'Skill 6', NULL, '250 hours'),
(7, 'Cybersecurity Basics', 'Introduction to cybersecurity principles and practices', 'Skill 7', NULL, '180 hours'),
(8, 'Cloud Computing', 'Working with cloud services and infrastructure', 'Skill 8', NULL, '220 hours');



# Section 4
# Create people

CREATE TABLE people (
    id int NOT NULL,
    first_name varchar(255),
    last_name varchar(255) NOT NULL,
    email varchar(255),
    linkedin_url varchar(255),
    headshot_url varchar(255),
    discord_handle varchar(255),
    brief_bio varchar(4096),
    date_joined date NOT NULL,
    PRIMARY KEY (id)
);

# Section 5
# Populate people

INSERT INTO people (id, last_name, date_joined) VALUES
(1, 'Johnson', '2023-01-01'),
(2, 'Jane', '2023-01-02'),
(3, 'Smith', '2023-01-03'),
(4, 'Roberts', '2023-01-04'),
(5, 'Conrad', '2023-01-05'),
(6, 'Lagos', '2023-01-06'),
(7, 'Emily' ,'2023-12-12'),
(8, 'Felty', '2023-06-14'),
(9, 'Legaspi', '2023-02-11'),
(10, 'Wilburn', '2023-04-12');



# Section 6
# Create peopleskills

CREATE TABLE peopleskills (
    id int NOT NULL AUTO_INCREMENT,
    skills_id int NOT NULL,
    people_id int NOT NULL,
    date_acquired date NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (skills_id) REFERENCES skills(id),
    FOREIGN KEY (people_id) REFERENCES people(id)
);

# Section 7
# Populate peopleskills

INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES
(1, 1, '2023-01-01'),
(3, 1, '2023-01-02'),
(6, 1, '2023-01-03'),
(3, 2, '2023-01-01'),
(4, 2, '2023-01-02'),
(5, 2, '2023-01-03'),
(1, 3, '2023-01-01'),
(5, 3, '2023-01-02'),
(3, 5, '2023-01-01'),
(6, 5, '2023-01-02'),
(2, 6, '2023-01-01'),
(3, 6, '2023-01-02'),
(4, 6, '2023-01-03'),
(3, 7, '2023-1-03'),
(5, 7, '2023-1-02'),
(6, 7, '2023-1-01'),
(1,8, '2023-1-01' ),
(3,8, '2023-1-01'),
(5, 8, '2023-1-02'),
(6, 8, '2023-1-01'),
(2, 9, '2023-1-05'),
(5, 9, '2023-1-15'),
(6, 9, '2023-1-17'),
(1,10,'2023-1-02'),
(4,10,'2023-1-08'),
(5,10,'2023-1-22');





# Section 8
# Create roles

CREATE TABLE roles (
    id int NOT NULL,
    name varchar(255) NOT NULL,
    sort_priority int NOT NULL,
    PRIMARY KEY (id)
);

# Section 9
# Populate roles

INSERT INTO roles (id, name, sort_priority) VALUES
(1, 'Designer', 10),
(2, 'Developer', 20),
(3, 'Recruit', 30),
(4, 'Team Lead', 40),
(5, 'Boss', 50),
(6, 'Mentor', 60);

# Section 10
# Create peopleroles

CREATE TABLE peopleroles (
    id int NOT NULL AUTO_INCREMENT,
    people_id int NOT NULL,
    role_id int NOT NULL,
    date_assigned date NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (people_id) REFERENCES people(id),
    FOREIGN KEY (role_id) REFERENCES roles(id)
);

# Section 11
# Populate peopleroles

INSERT INTO peopleroles (people_id, role_id, date_assigned) VALUES
(1, 2, '2023-01-01'),
(2, 5, '2023-01-01'),
(2, 6, '2023-01-02'),
(3, 2, '2023-01-01'),
(3, 4, '2023-01-02'),
(4, 3, '2023-01-01'),
(5, 3, '2023-01-01'),
(6, 2, '2023-01-01'),
(6, 1, '2023-01-02'),
(7, 1, '2023-01-01'),
(8, 1, '2023-01-01'),
(8, 4, '2023-01-02'),
(9, 2, '2023-01-01'),
(10, 2, '2023-01-01'),
(10, 1, '2023-01-02');                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
