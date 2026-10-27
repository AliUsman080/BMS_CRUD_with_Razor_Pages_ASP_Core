-- =============================================
-- Book Management System (BMS) Database Script
-- =============================================

USE [master];
GO

-- Create database if it does not exist
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'BMS')
BEGIN
    CREATE DATABASE [BMS];
END
GO

USE [BMS];
GO

-- Create books table
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = N'books' AND type = 'U')
BEGIN
    CREATE TABLE [dbo].[books] (
        [Id]          INT           IDENTITY (1, 1) NOT NULL PRIMARY KEY,
        [title]       NVARCHAR (50) NULL,
        [author]      NVARCHAR (50) NULL,
        [description] NVARCHAR (50) NULL,
        [publisher]   NVARCHAR (50) NULL,
        [status]      NVARCHAR (50) NULL,
        [category]    NVARCHAR (50) NULL
    );
END
GO

-- Sample Data (Optional)
INSERT INTO [dbo].[books] ([title], [author], [description], [publisher], [status], [category])
VALUES 
    (N'Clean Code', N'Robert C. Martin', N'A Handbook of Agile Software Craftsmanship', N'Prentice Hall', N'Available', N'Programming'),
    (N'The Pragmatic Programmer', N'Andrew Hunt & David Thomas', N'Your Journey to Mastery', N'Addison-Wesley', N'Available', N'Software Engineering'),
    (N'Design Patterns', N'Erich Gamma et al.', N'Elements of Reusable Object-Oriented Software', N'Addison-Wesley', N'Borrowed', N'Architecture');
GO
