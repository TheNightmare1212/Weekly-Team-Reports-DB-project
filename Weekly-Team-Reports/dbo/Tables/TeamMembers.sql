CREATE TABLE [dbo].[TeamMembers] (
    [MemberId]  INT           IDENTITY (1, 1) NOT NULL,
    [CompanyId] INT           NULL,
    [FirstName] VARCHAR (50)  NULL,
    [LastName]  VARCHAR (50)  NOT NULL,
    [Title]     VARCHAR (100) NOT NULL,
    [Email]     VARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([MemberId] ASC),
    CHECK ([Email] like '%@%.%'),
    FOREIGN KEY ([CompanyId]) REFERENCES [dbo].[Companies] ([CompanyId])
);

