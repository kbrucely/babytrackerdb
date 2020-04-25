CREATE TABLE baby_changings (
    poop_id INT PRIMARY KEY IDENTITY (1, 1),
	baby_id INT,
    poop_at DATETIME,
	CONSTRAINT FK_baby_id_poop FOREIGN KEY (baby_id)
        REFERENCES baby_name (baby_id)
);