use master 
go
drop database if exists KriahDB
go
create database KriahDB
go
use KriahDB
go

drop table if exists dbo.Kriah
GO
create table dbo.KriahSessions(
	SessionID int identity primary key not null,
	FirstName varchar (15) not null constraint ck_kriah_sessions_first_name_cannot_be_blank check (FirstName <> ''),
	LastName varchar (20) not null constraint ck_kriah_sessions_last_name_cannot_be_blank check (LastName <> ''),
	SessionDate date,
	SessionNumber tinyint not null,
	SessionTime tinyint not null,
	SessionLocation varchar (25) not null constraint ck_kriah_sessions_location_cannot_be_blank check (SessionLocation <> ''),
	PaymentAmount as case when SessionLocation = 'Tutor home' then SessionTime * 1.5 else (SessionTime * 1.5) * 1.3 end ,
	PaymentPaid varchar (6) not null constraint ck_kriah_session_payment_paid_must_be_paid_or_unpaid check (PaymentPaid in ('paid', 'unpaid'))
	constraint u_kriah_session_session_date_must_be_unique_per_first_name_and_last_name unique(SessionDate, FirstName, LastName),
	constraint ck_kriah_session_students_session_time_must_be_consistant check ((LastName = LastName) and (SessionTime = SessionTime))
)

select * from KriahSessions

insert KriahSessions(FirstName, LastName, SessionDate, SessionNumber, SessionTime, SessionLocation, PaymentPaid)
select 'Shalom', 'Feder', '12/12/2024', 1, 31, 'Feder home', 'paid'