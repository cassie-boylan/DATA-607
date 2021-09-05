CREATE SCHEMA movie_ratings;
--
-- Table structure for table viewers
--
  CREATE TABLE viewers (
  id int NOT NULL AUTO_INCREMENT,
  firstname VARCHAR(45) NOT NULL,
  gender CHAR(1),
  age INT,
  preferred_genre VARCHAR(12),
  PRIMARY KEY (id)
  );
  
--
-- Table structure for table movies
--
CREATE TABLE movies (
  id int NOT NULL AUTO_INCREMENT,
  title VARCHAR(45) NOT NULL,
  genre VARCHAR(12) NOT NULL,
  PRIMARY KEY (id)
  );
--
-- Table structure for table ratings
-- 
 CREATE TABLE ratings (
  rating_id INT NOT NULL AUTO_INCREMENT,
  movie_id INT,
  rating INT CONSTRAINT RATING_CK CHECK (rating BETWEEN 1 AND 5),
  viewer_id INT,
  PRIMARY KEY (rating_id),
  FOREIGN KEY(movie_id) REFERENCES movies(id),
  FOREIGN KEY(viewer_id) REFERENCES viewers(id)
  );
--
-- Loading data for table viewers
--
INSERT INTO viewers (firstname,gender,age,preferred_genre)
VALUES('Sam','M',27,'action'),('Jack','M', 23,'drama'),('Bonnie','F',59,'drama'),('Santa','F',65,'comedy'),('Kristen','F',29,'comedy'),('Emily','F',28,'drama'),('Rachel','F',31,'action'),('Mike','M',33,'action'),('Richie','M',42,'drama'),('John','M',63,'comedy');

--
-- Loading data for table movies
--
INSERT INTO movies (title, genre)
VALUES ('Parasite','drama'),('Avengers: End Game','action'),('Us','drama'),('Knives Out','comedy'),('Little Women','drama'),('Booksmart','comedy');

--
-- Loading data for table ratings
--
INSERT INTO ratings (movie_id,rating,viewer_id) VALUES
(1,5,1),(2,5,1),(3,3,1),(4,4,1),(5,NULL,1),(6,NULL,1),
(1,5,2),(2,5,2),(3,4,2),(4,5,2),(5,NULL,2),(6,5,2),
(1,5,3),(2,NULL,3),(3,5,3),(4,5,3),(5,5,3),(6,4,3),
(1,NULL,4),(2,4,4),(3,2,4),(4,5,4),(5,NULL,4),(6,5,4),
(1,5,5),(2,5,5),(3,4,5),(4,5,5),(5,5,5),(6,5,5),
(1,5,6),(2,NULL,6),(3,4,6),(4,4,6),(5,4,6),(6,NULL,6),
(1,4,7),(2,5,7),(3,NULL,7),(4,3,7),(5,3,7),(6,5,7),
(1,4,8),(2,5,8),(3,5,8),(4,5,8),(5,NULL,8),(6,NULL,8),
(1,3,9),(2,4,9),(3,2,9),(4,3,9),(5,NULL,9),(6,NULL,9),
(1,5,10),(2,5,10),(3,2,10),(4,5,10),(5,NULL,10),(6,3,10);

