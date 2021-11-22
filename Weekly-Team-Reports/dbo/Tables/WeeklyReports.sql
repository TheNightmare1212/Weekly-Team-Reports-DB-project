CREATE TABLE [dbo].[WeeklyReports] (
    [ReportId]     INT           IDENTITY (1, 1) NOT NULL,
    [AuthorID]     INT           NULL,
    [Morale]       INT           NULL,
    [MoraleComm]   VARCHAR (200) NULL,
    [Stress]       INT           NULL,
    [StressComm]   VARCHAR (200) NULL,
    [WorkLoad]     INT           NULL,
    [WorkLoadComm] VARCHAR (200) NULL,
    [WeeklyHigh]   VARCHAR (200) NULL,
    [WeeklyLow]    VARCHAR (200) NULL,
    [AnythingElse] VARCHAR (200) NULL,
    PRIMARY KEY CLUSTERED ([ReportId] ASC),
    CHECK ([Morale]>=(1) AND [Morale]<=(5)),
    CHECK ([Stress]>=(1) AND [Stress]<=(5)),
    CHECK ([WorkLoad]>=(1) AND [WorkLoad]<=(5)),
    FOREIGN KEY ([AuthorID]) REFERENCES [dbo].[TeamMembers] ([MemberId])
);

