USE [master]
GO
CREATE LOGIN [clouddb_dev] WITH PASSWORD=N'10%@secinfo' MUST_CHANGE, DEFAULT_DATABASE=[master], CHECK_EXPIRATION=ON, CHECK_POLICY=ON
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [clouddb_dev]
GO