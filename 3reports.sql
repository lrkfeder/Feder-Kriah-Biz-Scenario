--group each student together for reports

--Show me a list of all of my students and what session number they're up to.
select  Student = concat(studentfirstname, ' ', StudentLastName), CurrentSession = max(SessionNumPerStudent)
from kriah 
group by concat(studentfirstname, ' ', StudentLastName)

--Show how much money I made since I started
select TotalMoneyEarnedSoFar = sum(paymentowedpersession)
from kriah
where PaymentPaid = 1
select * from kriah where paymentpaid = 0
--Show how much money I'm owed alltogether
select TotalMoneyOwed = sum(paymentowedpersession)
from kriah
where PaymentPaid = 0
--Show me how many sessions I've had with each student
/* this is what cpu staff did to answer all 3 parts of the question at once:
select firstname, lastname, count(*) as total_sessions, 
    sum(case when ispaid = 1 then paymentamount else 0 end) as total_earnings,
    sum(case when ispaid = 0 then paymentamount else 0 end) as total_owed
from tutoringsession
group by firstname, lastname*/
Select Student = concat(studentfirstname, ' ', StudentLastName), NumOfSessionsSoFar = count(SessionNumPerStudent) 
from kriah 
group by concat(studentfirstname, ' ', StudentLastName)
--how much money I made from that student all together
select Student = concat(studentfirstname, ' ', StudentLastName), MoneyPaidPerStudent = sum(paymentowedpersession)
from kriah 
where PaymentPaid = 1
group by concat(studentfirstname, ' ', StudentLastName)
-- and how much the student still owes
select Student = concat(studentfirstname, ' ', StudentLastName), MoneyPerSOwedtudent = sum(paymentowedpersession)
from kriah 
where PaymentPaid = 0
group by concat(studentfirstname, ' ', StudentLastName)
--Show me how many weeks each student has been working with me
select Student = concat(studentfirstname, ' ', StudentLastName), WeeksWorkedWithMe = (datediff (day, min(sessiondate), max(sessiondate)))/7
from kriah
group by concat(studentfirstname, ' ', StudentLastName)
/*cpu staff did:
select firstname,lastname,datediff(week, min(sessiondate), max(sessiondate)) + 1 as weeks_worked
from tutoringsession
group by firstname, lastname*/
--which student has been with me for the longest
select Student = concat(studentfirstname, ' ', StudentLastName), min ( sessiondate)
from kriah
group by concat(studentfirstname, ' ', StudentLastName)

--who is my most recent student (the data doesnt make total sence because it apears that some students have stopped coming but it should work to ignore that)
--constraint, each students session minutes must be the same
select studentfirstname, 
       min(sessiondate)
from kriah 
group By StudentFirstName
having min(sessiondate) = min(sessiondate)*/

select * from kriah