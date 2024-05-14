USE labReport;
CREATE TABLE student1(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(50),
    mobile VARCHAR(31)
);
INSERT INTO student1 (NAME,mobile) VALUES('rubel','016474'),
('sakib','0173636'),
('rifat','01944'),
('rahat','01465'),
('reaz','016658');

SELECT * FROM student1;


CREATE TABLE student_taken(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    address VARCHAR(50),
    batch VARCHAR(46),
    FOREIGN KEY (student_id) REFERENCES student1(id)
);
INSERT INTO student_taken (student_id,address,batch)
VALUES(2,'baimail','56 A'),
(4,'kaliakoir','58 c'),
(5,'gazipur','59 B');

SELECT * FROM student1;
SELECT * FROM student_taken;

//INNER JOIN //

SELECT t1.*,t2.* FROM
student1 AS t1 INNER JOIN student_taken AS t2
ON t1.id=t2.student_id;

//LEFT JOIN//

SELECT t1.*,t2.* FROM  
student1 AS t1 LEFT JOIN student_taken AS t2  
ON t1.id=t2.student_id;

//RIGHT JOIN//

SELECT t1.*,t2.* FROM  
student1 AS t1 RIGHT JOIN student_taken AS t2  
ON t1.id=t2.student_id;

//NATURAL JOIN//
SELECT * FROM  student1,student_taken  
WHERE student1.id=student_taken.student_id;         
