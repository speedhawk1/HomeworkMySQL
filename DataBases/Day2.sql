DROP TABLE IF EXISTS demos.exam;
CREATE TABLE IF NOT EXISTS demos.exam(
  id int PRIMARY KEY AUTO_INCREMENT,
  ar int(2) COMMENT 'attendance record',
  wc int(2) COMMENT 'working capabilities',
  wa int(2) COMMENT 'working attitude',
  fom int(2) COMMENT 'finishing of missions'
) COMMENT '考核表';

ALTER TABLE demos.exam
  ADD COLUMN namesid CHAR(10) AFTER id;

INSERT INTO demos.exam VALUES (NULL ,'Apple',7,8,9,10);
INSERT INTO demos.exam VALUES (NULL ,'Bravo',6,7,8,9);
INSERT INTO demos.exam VALUES (NULL ,'Cat',7,8,9,10);
INSERT INTO demos.exam VALUES (NULL ,'Data',6,8,9,10);

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

SELECT *
FROM ispass;
# WHERE id = 1;

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
  nid INT,
  #   wcid INT,
  sid INT
);

ALTER TABLE demos.employee_salary
  ADD CONSTRAINT exam_id
FOREIGN KEY (nid)
REFERENCES demos.exam(id);
# 被引用column必须有序排列，且与引用column序列相同。
# 被引用column所有约束须与引用column相同。
# ALTER TABLE demos.employee_salary
#     ADD CONSTRAINT  exam_wc
# FOREIGN KEY (wcid)
#   REFERENCES demos.exam(id);
ALTER TABLE demos.employee_salary
  ADD CONSTRAINT  ispass_cash
FOREIGN KEY (sid)
REFERENCES demos.ispass(id);



