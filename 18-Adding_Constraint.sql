/*
	to add constraint to a column, use the following syntax
    
    ALTER TABLE table_name 
    ADD constraint (col1, col2,...., colN)


*/

use magnet_brains;

CREATE TABLE table_11 (
    col1 INT,
    col2 VARCHAR(20),
    col3 DATE,
    col4 INT
);

INSERT INTO table_11 VALUES(1, 'vabc', '2023-01-01', 111);
INSERT INTO table_11 VALUES(2, 'vdef', '2023-01-02', 222);
INSERT INTO table_11 VALUES(3, 'vghi', '2023-01-03', 333);


CREATE TABLE table_12 (
    col10 INT,
    col11 VARCHAR(20),
    col12 INT
);

INSERT INTO table_12 VALUES(1, 'abc', 100);
INSERT INTO table_12 VALUES(2, 'def', 200);
INSERT INTO table_12 VALUES(3, 'ghi', 300);


ALTER TABLE table_11
ADD primary key (col1);
DESC table_11;

ALTER TABLE table_11
ADD check (col2 like 'v%');
DESC table_11;

ALTER TABLE table_11
ADD unique (col3);
DESC table_11;

ALTER TABLE table_12
ADD foreign key (col10) references table_11(col1);
DESC table_11;




-- what we have done till now

SHOW CREATE TABLE table_11;
CREATE TABLE `table_11` (
  `col1` int NOT NULL,
  `col2` varchar(20) DEFAULT NULL,
  `col3` date DEFAULT NULL,
  `col4` int DEFAULT NULL,
  PRIMARY KEY (`col1`),
  UNIQUE KEY `col3` (`col3`),
  CONSTRAINT `table_11_chk_1` CHECK ((`col2` like _utf8mb4'v%'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SHOW CREATE TABLE table_12;
CREATE TABLE `table_12` (
  `col10` int DEFAULT NULL,
  `col11` varchar(20) DEFAULT NULL,
  `col12` int DEFAULT NULL,
  KEY `col10` (`col10`),
  CONSTRAINT `table_12_ibfk_1` FOREIGN KEY (`col10`) REFERENCES `table_11` (`col1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

