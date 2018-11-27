create table Account
	(pinNumber number(20),
	accountType varchar(20),
	status varchar(20),
	accountBalance number(20),
	accountNo number(20)
	);
alter table account
	add constraint pk_accountNo primary key(accountNo);

-------------------------------------------------------------------------------
create table transaction
	(accountNo number(20),
	transactionId number(20),
	amount number(20),
	transactionType varchar2(20),
	constraint fk_accountNo FOREIGN KEY(accountNo) REFERENCES Account(accountNo)
	);
alter table transaction
	add constraint pk_transactionId primary key(transactionId);
	
------------------------------------------------------------------------------------
create sequence pin_seq
start with 1000
increment by 1;

create sequence account__seq
start with 5000
increment by 1;

create sequence transaction__id
start with 123456
increment by 1;