CREATE DATABASE lib_management;
USE lib_management;

-- book_details table imported from books.csv using import wizard
SELECT * FROM book_details;

CREATE TABLE book_issue (
	Book_issue_no INT NOT NULL,
	Member_Id INT NOT NULL,
	Book_Code INT NOT NULL,
	Date_Issued VARCHAR(15) NOT NULL,
	Due_date VARCHAR(15) NOT NULL,
	Date_returned VARCHAR(15) NOT NULL,
	Issue_status VARCHAR(20),
	Fine INT
);

ALTER TABLE book_issue
MODIFY COLUMN Member_Id VARCHAR(20);

CREATE TABLE Library_members (
	Member_id INT NOT NULL,
    Member_name VARCHAR(50),
    Date_registered VARCHAR(15),
    Date_of_birth VARCHAR(15),
    Membership_status VARCHAR(15)
);

ALTER TABLE Library_members
MODIFY COLUMN Member_id VARCHAR(20);

INSERT INTO book_issue
	VALUES
    (001, 'LM001', '000010', '2012-05-01', '2012-05-16', '2012-05-16', 'active', 0),
    (002, 'LM002', '000002', '2012-05-01', '2012-05-06','2012-05-16', 'active', 10),
    (003, 'LM003', '000007', '2012-04-01', '2012-04-16', '2012-04-20','active', 4),
    (004, 'LM004', '000005', '2012-04-01', '2012-04-16','2012-04-20', 'active', 4),
    (005, 'LM005', '000008', '2012-03-30', '2012-04-15','2012-04-20' , 'expired', 5),
    (006, 'LM005', '000008', '2012-04-20', '2012-05-05','2012-05-05' , 'active', 0),
    (007, 'LM003', '000007', '2012-04-22', '2012-05-07','2012-05-25' , 'active', 18);
    
INSERT INTO Library_members 
	VALUES
    ('LM001', 'AMIT', '2012-02-12', '2003-02-11','Temporary'),
    ('LM002', 'ABDHUL', '2012-04-10', '2003-04-09','Temporary'),
    ('LM003', 'GAYAN', '2012-05-13','2003-05-12', 'Permanent'),
    ('LM004', 'RADHA', '2012-04-22', '2003-04-21', 'Temporary'),
    ('LM005', 'GURU', '2012-03-30', '2003-05-16','Temporary'),
    ('LM006', 'MOHAN', '2012-04-12', '2003-05-16','Temporary');
    