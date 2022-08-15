chmod 400 ec2.pem
ssh -i "ec2.pem" ec2-user@ec2-54-208-127-152.compute-1.amazonaws.com
sudo yum install mysql
mysql -h udacity.ce1uaivafuqf.us-east-1.rds.amazonaws.com -u admin -p
SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS udacity;
USE udacity;
CREATE TABLE adam_sandler_movies (id INTEGER PRIMARY KEY,title TEXT,director TEXT,release_date INTEGER);
INSERT INTO adam_sandler_movies (title, director, release_date) VALUES ("Happy Gilmore", "Dennis Dugan", 1996);
SELECT * FROM adam_sandler_movies;

chmod 400 secondary_ec2.pem
ssh -i "secondary_ec2.pem" ec2-user@ec2-18-119-137-169.us-east-2.compute.amazonaws.com
sudo yum install mysql
mysql -h udacity-secondary.cqgpji9cvbsa.us-east-2.rds.amazonaws.com -u admin -p
USE udacity;
SELECT * FROM adam_sandler_movies;
INSERT INTO adam_sandler_movies (id, title, director, release_date) VALUES (1, "Grown Ups", "Dennis Dugan", 2010);