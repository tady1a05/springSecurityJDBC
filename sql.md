# springSecurityJDBC
CREATE TABLE `users` (
 `username` varchar(50) NOT NULL,
 `password` varchar(68) NOT NULL,
 `enabled` tinyint(1) NOT NULL,
 PRIMARY KEY (`username`)
) ;

INSERT INTO `users` 
VALUES
('john','{noop}test123',1),
('mary','{noop}test123',1),
('susan','{noop}test123',1);

CREATE TABLE `authorities` (
 `username` varchar(50) NOT NULL,
 `authority` varchar(50) NOT NULL,
 PRIMARY KEY(`username`,`authority`),
 FOREIGN KEY (`username`) 
 REFERENCES `users` (`username`)
) ;

INSERT INTO `authorities` 
VALUES
('john','ROLE_EMPLOYEE'),
('mary','ROLE_EMPLOYEE'),
('mary','ROLE_MANAGER'),
('susan','ROLE_EMPLOYEE'),
('susan','ROLE_ADMIN');
