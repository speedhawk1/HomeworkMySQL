DROP TABLE IF EXISTS demos.ispass;
CREATE TABLE IF NOT EXISTS demos.ispass(
  id INT PRIMARY KEY AUTO_INCREMENT,
  score INT(2),
  cash INT(3) NOT NULL
);
INSERT INTO demos.ispass VALUES (NULL ,6,10);
INSERT INTO demos.ispass VALUES (NULL ,7,20);
INSERT INTO demos.ispass VALUES (NULL ,8,30);
INSERT INTO demos.ispass VALUES (NULL ,9,50);
INSERT INTO demos.ispass VALUES (NULL ,10,100);

UPDATE demos.exam
SET wc = 6
WHERE id = 1;
UPDATE demos.exam
SET wc = 7
WHERE id = 2;
UPDATE demos.exam
SET wc = 8
WHERE id = 3;
UPDATE demos.exam
SET wc = 9
WHERE id = 4;

DROP TABLE demos.employee_salary;
CREATE TABLE IF NOT EXISTS demos.employee_salary(
  id int PRIMARY KEY AUTO_INCREMENT,
  nid CHAR(20),
  wcid int(2),
  sid int(3) NOT NULL
);

ALTER TABLE demos.employee_salary
  ADD CONSTRAINT exam_id
FOREIGN KEY (nid)
REFERENCES demos.exam(id);
ALTER TABLE demos.employee_salary
  ADD CONSTRAINT  exam_wc
FOREIGN KEY (wcid)
REFERENCES demos.exam(id);
ALTER TABLE demos.employee_salary
  ADD CONSTRAINT  ispass_cash
FOREIGN KEY (sid)
REFERENCES demos.ispass(id);



