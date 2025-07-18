/* Creating the required Database and Schemas 
NOTE: if the database already exists it will drop the database.
*/

USE master;
GO

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

CREATE DATABASE DataWarehouse;
GO 

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO                     -- GO is a seperator in SQL which don't allow the second command to execute until the first one is executed.
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO

