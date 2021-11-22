CREATE TABLE [dbo].[ReportTeamMembersToTeamMembers] (
    [LeaderId]          INT NULL,
    [ReportingMemberId] INT NULL,
    FOREIGN KEY ([LeaderId]) REFERENCES [dbo].[TeamMembers] ([MemberId]),
    FOREIGN KEY ([ReportingMemberId]) REFERENCES [dbo].[TeamMembers] ([MemberId])
);

