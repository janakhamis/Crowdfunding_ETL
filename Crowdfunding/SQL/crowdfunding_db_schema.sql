DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;

CREATE TABLE contacts (
    contact_id INT PRIMARY KEY NOT NULL,
    first_name VARCHAR(30)   NOT NULL,
    last_name VARCHAR(30)   NOT NULL,
    email VARCHAR(50)   NOT NULL
);

CREATE TABLE category (
    category_id VARCHAR(4) PRIMARY KEY NOT NULL,
    category VARCHAR(15)   NOT NULL
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(8) PRIMARY KEY NOT NULL,
    subcategory VARCHAR(20)   NOT NULL
);

CREATE TABLE campaign (
    cf_id INT PRIMARY KEY NOT NULL,
    contact_id INT   NOT NULL,
    company_name VARCHAR(60)   NOT NULL,
    description VARCHAR(60)   NOT NULL,
    goal DOUBLE PRECISION   NOT NULL,
    pledged DOUBLE PRECISION   NOT NULL,
    outcome VARCHAR(10)   NOT NULL,
    backers_count INT   NOT NULL,
    country VARCHAR(2)   NOT NULL,
    currency VARCHAR(3)   NOT NULL,
    launched_date DATE   NOT NULL,
    end_date DATE   NOT NULL,
    category_id VARCHAR(4)   NOT NULL,
    subcategory_id VARCHAR(8)   NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT *
FROM campaign;

SELECT *
FROM category;

SELECT *
FROM subcategory;

SELECT *
FROM contacts;

