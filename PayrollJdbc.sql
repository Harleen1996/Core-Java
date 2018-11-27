CREATE TABLE Associate 
	(associateID number(20) not null,
	yearlyInvestmentUnder80C number(20),
	firstName varchar(20),lastName varchar(20),
	department varchar(50),
	designation varchar(20),
	pancard varchar(10),
	emailId varchar(40));
ALTER TABLE Associate ADD CONSTRAINT PK_Associate Primary Key(associateID);

--------------------------------------------------------------------------------------------

CREATE TABLE BankDetails 
	(associateID number(20) references Associate(associateID),
	accountNumber number(20) not null,
	bankName varchar(20),
	ifscCode varchar(20) not null);
ALTER TABLE BankDetails ADD CONSTRAINT PK_BankDetails Primary Key(accountNumber);

----------------------------------------------------------------------------------------------------
CREATE TABLE Salary 
	(associateID number(20) references Associate(associateID),
	basicSalary number(20) not null,
	hra number(20),
	conveyenceAllowance number(20),
	otherAllowance number(20),
	personalAllowance number(20),
	monthlyTax number(20),
	epf number(20),
	companyPf number(20),
	gratuity number(20),
	grossSalary number(20),
	netSalary number(20));
	----------------------------------------------------------------------------------------------------
create sequence ASSOCIATE_ID_SEQ
start with 101
increment by 1;