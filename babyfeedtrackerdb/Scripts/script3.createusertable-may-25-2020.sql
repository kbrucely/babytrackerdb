CREATE TABLE parents (
    parent_id INT PRIMARY KEY IDENTITY (1, 1),
    parent_name varchar(20),
    parent_email varchar(100)
);

ALTER TABLE baby_name
ADD CONSTRAINT FK_parentid
FOREIGN KEY (parent_id) REFERENCES parents(parent_id);