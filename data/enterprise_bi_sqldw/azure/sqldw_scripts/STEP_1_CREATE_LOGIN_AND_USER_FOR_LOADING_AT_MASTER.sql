
IF EXISTS (SELECT NAME FROM sys.sql_logins WHERE NAME ='LoaderRC20')
BEGIN
	DROP LOGIN LoaderRC20
END

IF EXISTS (SELECT NAME FROM sys.sysusers WHERE NAME ='LoaderRC20')
BEGIN
	DROP USER LoaderRC20
END

CREATE LOGIN LoaderRC20 WITH PASSWORD = 'a123STRONGpassword!';
CREATE USER LoaderRC20 FOR LOGIN LoaderRC20;
