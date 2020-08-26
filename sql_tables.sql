/* Create source table */
CREATE TABLE source 
   (
		id INT PRIMARY KEY,
		source VARCHAR(255)
	);
	
CREATE TABLE salary
   (
		id INT PRIMARY KEY,
		salary_estimate VARCHAR(255)
   );
   
 CREATE TABLE location
 	(
		id INT PRIMARY KEY,
		location VARCHAR(255)
	);

CREATE TABLE job
	(
		id SERIAL,
		company_name VARCHAR(255),
		job_title VARCHAR(255),
		job_description VARCHAR,
		source_id INT,
		salary_id INT,
		location_id INT,
		FOREIGN KEY (source_id) REFERENCES source(id),
		FOREIGN KEY (salary_id) REFERENCES salary(id),
		FOREIGN KEY (location_id) REFERENCES location(id)
	);