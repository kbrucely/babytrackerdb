CREATE TABLE baby_name (
    baby_id INT PRIMARY KEY IDENTITY (1, 1),
    first_name VARCHAR (50) NOT NULL,
    last_name VARCHAR (50) NOT NULL
);

CREATE TABLE baby_feedings (
    feed_id INT PRIMARY KEY IDENTITY (1, 1),
	baby_id INT,
    fed_at DATETIME,
	CONSTRAINT FK_baby_id_feed FOREIGN KEY (baby_id)
        REFERENCES baby_name (baby_id)
);