use kriahDb
go
delete Kriah
go 

Insert Kriah(StudentFirstName, StudentLastName, SessionDate, SessionNumPerStudent, SessionMinutes, SessionLocation, PaymentPaid)
select 'Shalom', 'Feder', '12/01/24', 1, 30, 'Feder home',  1
union select 'Shalom', 'Feder', '12/02/2024', 2, 30, 'Feder home', 1
union select 'Shalom', 'Feder', '12/03/2024', 3, 30, 'Tutor home', 1
union select 'Shalom', 'Feder', '12/04/2024', 4, 30, 'Tutor home', 1

union select 'Netanel', 'Katz', '09/01/2024', 1, 40, 'Katz home', 1
union select 'Netanel', 'Katz', '09/02/2024', 2, 40, 'Katz home', 1
union select 'Netanel', 'Katz', '09/03/2024', 3, 40, 'Katz home', 1
union select 'Netanel', 'Katz', '09/04/2024', 4, 40, 'Katz home', 1
union select 'Netanel', 'Katz', '09/08/2024', 5, 40, 'Katz home', 1
union select 'Netanel', 'Katz', '09/09/2024', 6, 40, 'Katz home', 1
union select 'Netanel', 'Katz', '09/10/2024', 7, 40, 'Katz home', 1
union select 'Netanel', 'Katz', '09/11/2024', 8, 40, 'Katz home', 1
union select 'Netanel', 'Katz', '09/15/2024', 9, 40, 'Katz home', 1
union select 'Netanel', 'Katz', '09/16/2024', 10, 40, 'Katz home', 1
union select 'Netanel', 'Katz', '09/17/2024', 11, 40, 'Katz home', 1
union select 'Netanel', 'Katz', '09/18/2024', 12, 40, 'Katz home', 1
union select 'Netanel', 'Katz', '09/22/2024', 13, 40, 'Katz home', 0
union select 'Netanel', 'Katz', '09/23/2024', 14, 40, 'Katz home', 0
union select 'Netanel', 'Katz', '09/24/2024', 15, 40, 'Katz home', 0
union select 'Netanel', 'Katz', '09/25/2024', 16, 40, 'Katz home', 0
union select 'Netanel', 'Katz', '09/29/2024', 17, 40, 'Tutor home', 0
union select 'Netanel', 'Katz', '09/30/2024', 18, 40, 'Tutor home', 0
union select 'Netanel', 'Katz', '10/01/2024', 19, 40, 'Tutor home', 0
union select 'Netanel', 'Katz', '10/02/2024', 20, 40, 'Tutor home', 0

union select 'Aviva', 'Schwartz', '11/03/2024', 1, 30, 'Schwartz home', 0
union select 'Aviva', 'Schwartz', '11/04/2024', 2, 30, 'Schwartz home', 0
union select 'Aviva', 'Schwartz', '11/05/2024', 3, 30, 'Schwartz home', 0
union select 'Aviva', 'Schwartz', '11/06/2024', 4, 30, 'Schwartz home', 0
union select 'Aviva', 'Schwartz', '11/10/2024', 5, 30, 'Tutor home', 0
union select 'Aviva', 'Schwartz', '11/11/2024', 6, 30, 'Tutor home', 0
union select 'Aviva', 'Schwartz', '11/12/2024', 7, 30, 'Tutor home', 0
union select 'Aviva', 'Schwartz', '11/13/2024', 8, 30, 'Tutor home', 0
union select 'Aviva', 'Schwartz', '11/17/2024', 9, 30, 'Tutor home', 0
union select 'Aviva', 'Schwartz', '11/18/2024', 10, 30, 'Tutor home', 0
union select 'Aviva', 'Schwartz', '11/19/2024', 11, 30, 'Tutor home', 0
union select 'Aviva', 'Schwartz', '11/20/2024', 12, 30, 'Tutor home', 0

select * from kriah