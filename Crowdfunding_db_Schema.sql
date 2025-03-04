-- Create the Category table
CREATE TABLE category (
    category_id VARCHAR(100) PRIMARY KEY,
    category VARCHAR(100) NOT NULL
);

-- Create the Subcategory table
CREATE TABLE subcategory (
    subcategory_id VARCHAR(100) PRIMARY KEY,
    subcategory VARCHAR(100) NOT NULL
);

-- Create the Contacts table
CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

-- Create the Campaign table
CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR(100) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(100) NOT NULL,
    currency VARCHAR(100) NOT NULL,
    launched_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP NOT NULL,
    category_id VARCHAR(100) NOT NULL,
    subcategory_id VARCHAR(100) NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);
Select * from campaign
Select * from category
Select * from contacts
Select * from subcategory