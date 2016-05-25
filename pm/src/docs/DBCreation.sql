DROP DATABASE PmDB;

CREATE DATABASE PmDB
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_unicode_ci;
  
CREATE USER 'PmDBUser'@'localhost' IDENTIFIED BY 'PragmaticApproach_5!';
CREATE USER 'PmDBUser'@'%' IDENTIFIED BY 'PragmaticApproach_5!';

GRANT ALL ON PmDB.* TO 'PmDBUser'@'localhost';
GRANT ALL ON PmDB.* TO 'PmDBUser'@'%';