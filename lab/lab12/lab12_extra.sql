.read lab12.sql

-- Q5
CREATE TABLE greatstudents AS
  SELECT "REPLACE THIS LINE WITH YOUR SOLUTION";

-- Q6
CREATE TABLE sevens AS
  SELECT "REPLACE THIS LINE WITH YOUR SOLUTION";

-- Q7
CREATE TABLE fa17favnum AS
  SELECT number, COUNT(*) as count from students group by number order by count DESC limit 1;


CREATE TABLE fa17favpets AS
  SELECT pet,COUNT(*) as count from students group by pet order by count DESC LIMIT 10;


CREATE TABLE sp18favpets AS
  SELECT pet,COUNT(*) as count from students group by pet order by count DESC LIMIT 10;


CREATE TABLE sp18dog AS
  SELECT pet,COUNT(*) from students where pet='dog' ;


CREATE TABLE sp18alldogs AS
  SELECT pet,COUNT(*) from students where pet like '%dog%';


CREATE TABLE obedienceimages AS
  SELECT seven,denero,COUNT(*) from students where seven='7' GROUP BY denero ;

-- Q8
CREATE TABLE smallest_int_count AS
  SELECT smallest ,COUNT(*) from students group by smallest  order by smallest limit 50 ;

