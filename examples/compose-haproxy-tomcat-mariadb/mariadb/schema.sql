USE tomcat-sample;

CREATE TABLE IF NOT EXISTS `testdata` (
    id INT NOT NULL auto_increment PRIMARY KEY,
    foo VARCHAR(25), 
    bar INT
    );

INSERT INTO testdata VALUES(null, 'hello', 123);
INSERT INTO testdata VALUES(null, 'bye', 456);
