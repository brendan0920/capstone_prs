--USE capstone_prs;
--GO

ALTER TABLE Request
ADD requestNumber varchar(10) NOT NULL DEFAULT '0';
GO

--UPDATE COLUMN requestNumber varchar(10) NOT NULL;
