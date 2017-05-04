
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/03/2017 14:58:57
-- Generated from EDMX file: C:\Users\User\documents\visual studio 2015\Projects\Garage2.5\Garage2.5\ModelEntityGarage.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Garage2.5Db];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_dbo_Vehicles_dbo_Members_Member_Id]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Vehicles] DROP CONSTRAINT [FK_dbo_Vehicles_dbo_Members_Member_Id];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_Vehicles_dbo_VehicleTypes_VehicleType_Id]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Vehicles] DROP CONSTRAINT [FK_dbo_Vehicles_dbo_VehicleTypes_VehicleType_Id];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[__MigrationHistory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[__MigrationHistory];
GO
IF OBJECT_ID(N'[dbo].[Members]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Members];
GO
IF OBJECT_ID(N'[dbo].[Vehicles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Vehicles];
GO
IF OBJECT_ID(N'[dbo].[VehicleTypes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[VehicleTypes];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'C__MigrationHistory'
CREATE TABLE [dbo].[C__MigrationHistory] (
    [MigrationId] nvarchar(150)  NOT NULL,
    [ContextKey] nvarchar(300)  NOT NULL,
    [Model] varbinary(max)  NOT NULL,
    [ProductVersion] nvarchar(32)  NOT NULL
);
GO

-- Creating table 'Members'
CREATE TABLE [dbo].[Members] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(max)  NULL,
    [LastName] nvarchar(max)  NULL,
    [Vehicle_Id] int  NULL
);
GO

-- Creating table 'Vehicles'
CREATE TABLE [dbo].[Vehicles] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [RegNr] nvarchar(max)  NULL,
    [Brand] int  NOT NULL,
    [Model] nvarchar(max)  NULL,
    [Wheel] int  NOT NULL,
    [CheckInTime] datetime  NOT NULL,
    [CheckOutTime] datetime  NOT NULL,
    [Status] bit  NOT NULL,
    [VehicleType_Id] int  NULL,
    [Member_Id] int  NULL
);
GO

-- Creating table 'VehicleTypes'
CREATE TABLE [dbo].[VehicleTypes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [MigrationId], [ContextKey] in table 'C__MigrationHistory'
ALTER TABLE [dbo].[C__MigrationHistory]
ADD CONSTRAINT [PK_C__MigrationHistory]
    PRIMARY KEY CLUSTERED ([MigrationId], [ContextKey] ASC);
GO

-- Creating primary key on [Id] in table 'Members'
ALTER TABLE [dbo].[Members]
ADD CONSTRAINT [PK_Members]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Vehicles'
ALTER TABLE [dbo].[Vehicles]
ADD CONSTRAINT [PK_Vehicles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'VehicleTypes'
ALTER TABLE [dbo].[VehicleTypes]
ADD CONSTRAINT [PK_VehicleTypes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [VehicleType_Id] in table 'Vehicles'
ALTER TABLE [dbo].[Vehicles]
ADD CONSTRAINT [FK_dbo_Vehicles_dbo_VehicleTypes_VehicleType_Id]
    FOREIGN KEY ([VehicleType_Id])
    REFERENCES [dbo].[VehicleTypes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_Vehicles_dbo_VehicleTypes_VehicleType_Id'
CREATE INDEX [IX_FK_dbo_Vehicles_dbo_VehicleTypes_VehicleType_Id]
ON [dbo].[Vehicles]
    ([VehicleType_Id]);
GO

-- Creating foreign key on [Member_Id] in table 'Vehicles'
ALTER TABLE [dbo].[Vehicles]
ADD CONSTRAINT [FK_dbo_Vehicles_dbo_Members_Member_Id]
    FOREIGN KEY ([Member_Id])
    REFERENCES [dbo].[Members]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_Vehicles_dbo_Members_Member_Id'
CREATE INDEX [IX_FK_dbo_Vehicles_dbo_Members_Member_Id]
ON [dbo].[Vehicles]
    ([Member_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------