
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 06/19/2012 19:28:19
-- Generated from EDMX file: D:\GITHUB\danhaywood\nomvc-poly1\Demo.Dom.Customers\Customers.edmx
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

IF OBJECT_ID(N'[dbo].[FK_CustomerBusinessEngagementSummary]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BusinessEngagementSummaries] DROP CONSTRAINT [FK_CustomerBusinessEngagementSummary];
GO
IF OBJECT_ID(N'[dbo].[FK_BusinessEngagementSummaryForClaim_inherits_BusinessEngagementSummary]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BusinessEngagementSummaries_BusinessEngagementSummaryForClaim] DROP CONSTRAINT [FK_BusinessEngagementSummaryForClaim_inherits_BusinessEngagementSummary];
GO
IF OBJECT_ID(N'[dbo].[FK_BusinessEngagementSummaryForRegistration_inherits_BusinessEngagementSummary]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BusinessEngagementSummaries_BusinessEngagementSummaryForRegistration] DROP CONSTRAINT [FK_BusinessEngagementSummaryForRegistration_inherits_BusinessEngagementSummary];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Customers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Customers];
GO
IF OBJECT_ID(N'[dbo].[BusinessEngagementSummaries]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BusinessEngagementSummaries];
GO
IF OBJECT_ID(N'[dbo].[BusinessEngagementSummaries_BusinessEngagementSummaryForClaim]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BusinessEngagementSummaries_BusinessEngagementSummaryForClaim];
GO
IF OBJECT_ID(N'[dbo].[BusinessEngagementSummaries_BusinessEngagementSummaryForRegistration]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BusinessEngagementSummaries_BusinessEngagementSummaryForRegistration];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Customers'
CREATE TABLE [dbo].[Customers] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'BusinessEngagementSummaries'
CREATE TABLE [dbo].[BusinessEngagementSummaries] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CustomerId] int  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [TypeName] nvarchar(max)  NOT NULL,
    [InstanceIdentifier] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'BusinessEngagementSummaries_BusinessEngagementSummaryForClaim'
CREATE TABLE [dbo].[BusinessEngagementSummaries_BusinessEngagementSummaryForClaim] (
    [ClaimId] int  NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'BusinessEngagementSummaries_BusinessEngagementSummaryForRegistration'
CREATE TABLE [dbo].[BusinessEngagementSummaries_BusinessEngagementSummaryForRegistration] (
    [RegistrationId] nvarchar(12)  NULL,
    [Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [PK_Customers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'BusinessEngagementSummaries'
ALTER TABLE [dbo].[BusinessEngagementSummaries]
ADD CONSTRAINT [PK_BusinessEngagementSummaries]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'BusinessEngagementSummaries_BusinessEngagementSummaryForClaim'
ALTER TABLE [dbo].[BusinessEngagementSummaries_BusinessEngagementSummaryForClaim]
ADD CONSTRAINT [PK_BusinessEngagementSummaries_BusinessEngagementSummaryForClaim]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'BusinessEngagementSummaries_BusinessEngagementSummaryForRegistration'
ALTER TABLE [dbo].[BusinessEngagementSummaries_BusinessEngagementSummaryForRegistration]
ADD CONSTRAINT [PK_BusinessEngagementSummaries_BusinessEngagementSummaryForRegistration]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [CustomerId] in table 'BusinessEngagementSummaries'
ALTER TABLE [dbo].[BusinessEngagementSummaries]
ADD CONSTRAINT [FK_CustomerBusinessEngagementSummary]
    FOREIGN KEY ([CustomerId])
    REFERENCES [dbo].[Customers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CustomerBusinessEngagementSummary'
CREATE INDEX [IX_FK_CustomerBusinessEngagementSummary]
ON [dbo].[BusinessEngagementSummaries]
    ([CustomerId]);
GO

-- Creating foreign key on [Id] in table 'BusinessEngagementSummaries_BusinessEngagementSummaryForClaim'
ALTER TABLE [dbo].[BusinessEngagementSummaries_BusinessEngagementSummaryForClaim]
ADD CONSTRAINT [FK_BusinessEngagementSummaryForClaim_inherits_BusinessEngagementSummary]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[BusinessEngagementSummaries]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'BusinessEngagementSummaries_BusinessEngagementSummaryForRegistration'
ALTER TABLE [dbo].[BusinessEngagementSummaries_BusinessEngagementSummaryForRegistration]
ADD CONSTRAINT [FK_BusinessEngagementSummaryForRegistration_inherits_BusinessEngagementSummary]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[BusinessEngagementSummaries]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------