use TutorDB
go
delete TutoringSession
go
insert into TutoringSession (FirstName, LastName, SessionDate, SessionNumber, SessionDuration, SessionLocation, IsPaid)
select 'Shalom', 'Feder', '2024-12-01', 1, 30, 'Feder home', 1
union select 'Shalom', 'Feder', '2024-12-02', 2, 30, 'Feder home', 1
union select 'Shalom', 'Feder', '2024-12-03', 3, 30, 'Tutor home', 1
union select 'Shalom', 'Feder', '2024-12-04', 4, 30, 'Tutor home', 1
union select 'Netanel', 'Katz', '2024-09-01', 1, 40, 'Katz home', 1
union select 'Netanel', 'Katz', '2024-09-02', 2, 40, 'Katz home', 1
union select 'Netanel', 'Katz', '2024-09-03', 3, 40, 'Katz home', 1
union select 'Netanel', 'Katz', '2024-09-04', 4, 40, 'Katz home', 1
union select 'Netanel', 'Katz', '2024-09-08', 5, 40, 'Katz home', 1
union select 'Netanel', 'Katz', '2024-09-09', 6, 40, 'Katz home', 1
union select 'Netanel', 'Katz', '2024-09-10', 7, 40, 'Katz home', 1
union select 'Netanel', 'Katz', '2024-09-11', 8, 40, 'Katz home', 1
union select 'Netanel', 'Katz', '2024-09-15', 9, 40, 'Katz home', 1
union select 'Netanel', 'Katz', '2024-09-16', 10, 40, 'Katz home', 1
union select 'Netanel', 'Katz', '2024-09-17', 11, 40, 'Katz home', 1
union select 'Netanel', 'Katz', '2024-09-18', 12, 40, 'Katz home', 1
union select 'Netanel', 'Katz', '2024-09-22', 13, 40, 'Katz home', 0
union select 'Netanel', 'Katz', '2024-09-23', 14, 40, 'Katz home', 0
union select 'Netanel', 'Katz', '2024-09-24', 15, 40, 'Katz home', 0
union select 'Netanel', 'Katz', '2024-09-25', 16, 40, 'Katz home', 0
union select 'Netanel', 'Katz', '2024-09-29', 17, 40, 'Tutor home', 0
union select 'Netanel', 'Katz', '2024-09-30', 18, 40, 'Tutor home', 0
union select 'Netanel', 'Katz', '2024-10-01', 19, 40, 'Tutor home', 0
union select 'Netanel', 'Katz', '2024-10-02', 20, 40, 'Tutor home', 0
union select 'Aviva', 'Schwartz', '2024-11-03', 1, 30, 'Schwartz home', 0
union select 'Aviva', 'Schwartz', '2024-11-04', 2, 30, 'Schwartz home', 0
union select 'Aviva', 'Schwartz', '2024-11-05', 3, 30, 'Schwartz home', 0
union select 'Aviva', 'Schwartz', '2024-11-06', 4, 30, 'Schwartz home', 0
union select 'Aviva', 'Schwartz', '2024-11-10', 5, 30, 'Tutor home', 0
union select 'Aviva', 'Schwartz', '2024-11-11', 6, 30, 'Tutor home', 0
union select 'Aviva', 'Schwartz', '2024-11-12', 7, 30, 'Tutor home', 0
union select 'Aviva', 'Schwartz', '2024-11-13', 8, 30, 'Tutor home', 0
union select 'Aviva', 'Schwartz', '2024-11-17', 9, 30, 'Tutor home', 0
union select 'Aviva', 'Schwartz', '2024-11-18', 10, 30, 'Tutor home', 0
union select 'Aviva', 'Schwartz', '2024-11-19', 11, 30, 'Tutor home', 0
union select 'Aviva', 'Schwartz', '2024-11-20', 12, 30, 'Tutor home', 0;


select * from tutoringsession