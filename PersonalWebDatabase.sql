DROP DATABASE IF EXISTS PersonalWebDatabase;
CREATE DATABASE PersonalWebDatabase;
USE PersonalWebDatabase;

CREATE TABLE Skill (
    SkillId INT AUTO_INCREMENT PRIMARY KEY,
    Category VARCHAR(50),
    SkillName VARCHAR(50)
);

INSERT INTO Skill (Category, SkillName) VALUES 
('Programming Languages', 'Java'),
('Programming Languages', 'C#'),
('Programming Languages','Python'),
('Web Development', 'PHP'),
('Web Development', 'TypeScript'),
('Web Development', 'JavaScript'),
('Web Development', 'CSS'),
('Web Development', 'HTML'),
('Database Technologies', 'SQL'),
('Database Technologies', 'MySQL'),
('Version Control', 'Gitlab'),
('Version Control', 'GitHub'),
('Version Control', 'SourceTree'),
('Frameworks', 'Angular'),
('Frameworks', 'Spring Boot'),
('Frameworks', 'Blazor WebAssembly');

CREATE TABLE Project (
    ProjectId INT AUTO_INCREMENT PRIMARY KEY,
    ProjectName VARCHAR(100),
    ProjectLink VARCHAR(255),
    ProjectDescription TEXT
);

INSERT INTO Project (ProjectName, ProjectLink, ProjectDescription) VALUES 
('Spring Boot App','https://github.com/cgadd21/Spring-Boot', 'Developed a Spring Boot application with CRUD capabilities, utilizing MySQL for data management.'),
('Vanilla Website','https://github.com/cgadd21/PersonalWebSite','Connect to MySQL database using MySQLi API using PHP to display information on each page. Connect to Weather API using PHP to display information from my home weather station. Wrote custom JavaScript for menu highlighter.'),
('Faculty Research Database','https://github.com/cgadd21/Faculty-Research-Database','Designed a database application enabling faculty, students, and guests to efficiently search and connect based on the school''s research interests, fostering collaboration and project mentorship.'),
('Blazor WebAssembly App','https://github.com/cgadd21/Blazor-WebAssembly','Created custom classes to map data to from Dapper queries. Used dependency injection in razor pages to display information from MySQL Database.'),
('Packet Capture Analysis Tool', 'https://github.com/cmr9082/PacketCapture', 'Packet filtering code created a filtered output file with only ICMP Echo Request and Echo Reply packets in it. Packet parser parses ICMP Echo Request and Echo Reply packets and stores them in memory for further processing. Calculate Data Size, Time Based, and Distance Metrics.'),
('AI Website', 'https://github.com/cgadd21/Web-MobileI/tree/main/project3', 'Use AI to generate an argumentative research paper on how AI will benefit the healthcare industry. Design page layout for paper’s contents for large viewports. Develop multiple page website using industry standards.'),
('Application Performance Monitoring Tool', NULL, 'Collects process and system level metrics. Collects CPU and memory utilization per process. Collects RX and TX data rates. Collects hard disk writes. Collects hard disk utilization. Outputs CPU and memory metrics to a CSV file specific to that process. Writes all system level metrics to a file.'),
('Access Database', NULL, 'Tracked materials of product coming in and going out, invoicing, and driver data. Made reports for sales based on month, and per year for owner review. Curated a navigation form to input data, run queries and reports for office employees.'),
('Java Database', 'https://github.com/cgadd21/Advanced-Java/tree/main/Projects/Final%20Project/Project4Gadd/src/main/java/com/example/finalprojectbase', 'Incorporated JavaFx to generate a database for users to interact with.'),
('Python Media Player', 'https://github.com/cgadd21/Intro-to-Python/blob/main/Week%2015/myplayer.py', 'Created interface that loads files from folder, with all media controls.');

CREATE TABLE Education (
    EducationId INT AUTO_INCREMENT PRIMARY KEY,
    InstitutionName VARCHAR(100),
    Degree VARCHAR(100),
    GraduationYear INT
);

INSERT INTO Education (InstitutionName, Degree, GraduationYear) VALUES 
('Rochester Institute of Technology', 'Bachelor\'s degree, Computing and Information Technology', 2024),
('Monroe Community College', 'Associate\'s degree, Information Technology', 2022),
('Attica Senior High School', 'High School Diploma', 2020),
('TestOut Corporation', 'Certified PC Pro', 2019);

CREATE TABLE Experience (
    ExperienceId INT AUTO_INCREMENT PRIMARY KEY,
    JobTitle VARCHAR(100),
    CompanyName VARCHAR(100),
    EmploymentType VARCHAR(50),
    StartDate DATE,
    EndDate DATE,
    Description TEXT,
    Link VARCHAR(255)
);

INSERT INTO Experience (JobTitle, CompanyName, EmploymentType, StartDate, EndDate, Description, Link) VALUES 
('Software Engineer', 'Attica Package Company Inc.', 'Freelance', '2022-12-01', NULL, 'Created and hosted a company website. Developed a SQL database application using Microsoft Access to streamline material tracking, replacing Excel sheets. Automated report calculations and enabled data querying based on custom parameters.','https://atticapackageco.com/'),
('Software Engineer', 'Touchstone Technology Inc.', 'Internship', '2023-03-01', '2023-12-31', 'Created a Blazor WebAssembly web app for logging employee assignments, generating reports,
tracking inventory and yield, printing labels, displaying schedules, and searching part details. Implemented APIs for HTTPS requests to SQL database using Dapper. Integrated GitLab for version control. Enhanced sister company''s WinForms app by fixing device activation and miscellaneous bugs and upgrading to label printing from laser engraving.','https://touchstn.com/'),
('Product Zone Specialist', 'Apple', 'Full-time', '2021-07-01', '2022-01-31', 'Assisted customers in finding a device to match their needs. Developed skills in many departments to become more well-rounded, and to aid co-workers. Opened, closed, and prepared the store for review from upper management. Supported new co-workers training process through shadowing and reverse shadowing. Collaborated with co-workers to improve techniques and solve problems. First on waitlist when returning to store for seasonal employment.','https://www.apple.com/'),
('Produce Clerk', 'Tops Friendly Markets', 'Part-time', '2018-12-01', '2022-08-31', 'Managed inventory of various food items in the produce department. Created displays around the store to increase customer experience. Set up store for company executives. Recognized tasks that needed completion. Directed co-workers on daily tasks. Assisted other departments when called upon.','https://www.topsmarkets.com/');

CREATE TABLE Volunteer (
    VolunteerId INT AUTO_INCREMENT PRIMARY KEY,
    JobTitle VARCHAR(100),
    CompanyName VARCHAR(100),
    Description TEXT,
    Link VARCHAR(255)
);

INSERT INTO Volunteer (JobTitle, CompanyName, Description, Link) VALUES 
('Volunteer', 'Gateway Home Attica', 'Set up, worked, and took down fundraising events. Constructed concrete walkway outside the home. Assisted with technical setup.','https://gatewayhomeattica.org/'),
('Volunteer', 'Attica First Baptist Building Bridges', 'Helped those in need inside the community. Built a handicap ramp for a resident.', NULL),
('Audio Visual Specialist', 'Attica First Baptist Church', 'Trained others on how to use PowerPoint and analog soundboard. Operated software that allows for smooth service.','https://www.fbcattica.org/');
