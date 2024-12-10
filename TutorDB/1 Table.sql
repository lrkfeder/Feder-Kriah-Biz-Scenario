use TutorDb
go
drop table if exists TutoringSession
go

create table TutoringSession (
    TutoringSessionsPK int not null identity primary key,
    FirstName varchar(50) not null constraint ck_TutoringSession_FirstName_cannot_be_blank check (FirstName <> ''),
    LastName varchar(50) not null constraint ck_TutoringSession_LastName_cannot_be_blank check (LastName <> ''),
    SessionDate date not null constraint ck_TutoringSession_SessionDate_must_be_after_Sep_1_2024_and_not_in_future check(SessionDate between '2024-09-01' and getdate()),
    SessionNumber int not null constraint ck_TutoringSession_SessionNumber_cannot_be_negative check(SessionNumber > 0),
    SessionDuration int not null constraint ck_TutoringSession_SessionDuration_cannot_be_negative check(SessionDuration > 0),
    SessionLocation varchar(50) not null constraint ck_TutoringSession_SessionLocation_cannot_be_blank check (SessionLocation <> ''),
    PaymentAmount as convert(decimal(10, 2), case 
            when SessionLocation LIKE '%tutor%' then (SessionDuration * 1.50 )
            else (SessionDuration * 1.50) * 1.30
        end) persisted,
    IsPaid bit not null default 0,
    constraint u_TutoringSession_FirstName_LastName_SessionNumber unique(FirstName,LastName,SessionNumber),
    constraint u_TutoringSession_FirstName_LastName_SessionDate unique(FirstName,LastName,SessionDate)
);
