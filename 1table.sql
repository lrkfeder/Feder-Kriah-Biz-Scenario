use kriahDB
go
drop table if exists dbo.Kriah
go 

create table dbo.Kriah(
	SessionId int not null identity primary key,
    StudentFirstName varchar(30) not null 
        constraint c_Kriah_Student_First_Name_cannot_be_blank check(StudentFirstName > ''),
    StudentLastName varchar(30) not null 
        constraint c_kriah_Student_Last_Name_cannot_be_blank check(StudentLastName > ''),
    SessionDate date not null 
        constraint c_kriah_Session_Date_must_be_on_or_after_09_01_2024 check(SessionDate >= '2024-09-01' ),--really could do beween
        constraint c_kriah_Session_Date_cannot_be_in_the_future check(SessionDate <= getdate()),
    SessionNumPerStudent int not null 
        constraint c_Kriah_session_num_per_student_cannot_be_negative check(SessionNumPerStudent > 0),
    SessionMinutes int not null 
        constraint c_Kriah_session_minutes_cannot_be_negative check(SessionMinutes > 0),
    SessionLocation varchar (30) not null
        constraint c_kriah_session_location_cannot_be_blank check(sessionLocation > ''), 
    PaymentOwedPerSession as (case 
                                when SessionLocation like 'Tutor home' then (SessionMinutes * 1.50)
                                when SessionLocation not like 'Tutor home' then ((SessionMinutes * 1.50) + (SessionMinutes * 1.50 * .3))
                                else 0 
                                end)
                                persisted,
    PaymentPaid bit not null,
     constraint u_kriah_student_cannot_have_more_than_one_session_per_day unique(StudentFirstName, StudentLastName, SessionDate)--first and lastname and date must be unique
     
    --constraint if location is students home, payment owed = sessionminutes * 1.50 plus an additional 30%
    --constraint/computed column , payment owed = sessionminutes * 1.50 , otherwise its 0, cant be a/t in btwn
    --all sessions with the same studentfirst and lastname must have the same sessionminutes????????
    --all sessions with the same student first and lastname must be on different dates
)
go 
