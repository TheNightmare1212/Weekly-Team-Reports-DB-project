CREATE TABLE [dbo].[Companies] (
    [CompanyId]     INT           IDENTITY (1, 1) NOT NULL,
    [Name]          VARCHAR (100) NOT NULL,
    [EstablishDate] DATE          NOT NULL,
    PRIMARY KEY CLUSTERED ([CompanyId] ASC)
);

