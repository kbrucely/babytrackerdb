CREATE TABLE parents (
    parent_id INT PRIMARY KEY IDENTITY (1, 1),
    parent_name varchar(20) NOT NULL,
    parent_email varchar(100) NOT NULL,
    parent_pass_hash BINARY(64) NOT NULL
);

ALTER TABLE baby_name
ADD CONSTRAINT FK_parentid
FOREIGN KEY (parent_id) REFERENCES parents(parent_id);