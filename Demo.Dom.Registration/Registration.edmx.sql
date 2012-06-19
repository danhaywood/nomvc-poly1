
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 06/19/2012 19:05:52
-- Generated from EDMX file: D:\GITHUB\danhaywood\nomvc-poly1\Demo.Dom.Registration\Registration.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Poly1];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[SafeRegistrations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SafeRegistrations];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'SafeRegistrations'
CREATE TABLE [dbo].[SafeRegistrations] (
    [Id] nvarchar(12)  NOT NULL,
    [RegisteredOn] datetime  NOT NULL,
    [Details] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'SafeRegistrations'
ALTER TABLE [dbo].[SafeRegistrations]
ADD CONSTRAINT [PK_SafeRegistrations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------