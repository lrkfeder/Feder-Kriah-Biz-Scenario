--group each student together for reports

--Show me a list of all of my students and what session number they're up to.
select  Student = concat(studentfirstname, ' ', StudentLastName), CurrentSession = max(SessionNumPerStudent)
from kriah 
group by concat(studentfirstname, ' ', StudentLastName)

--Show how much money I made since I started
select TotalMoneyEarnedSoFar = sum(paymentowedpersession)
from kriah
where PaymentPaid = 1

--Show how much money I'm owed alltogether
select TotalMoneyOwed = sum(paymentowedpersession)
from kriah
where PaymentPaid = 0
--Show me how many sessions I've had with each student
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
select Student = concat(studentfirstname, ' ', StudentLastName), FullWeeksEachStudentWorkdeWithMe = (datediff (day, min(sessiondate), max(sessiondate)))/7
from kriah
group by concat(studentfirstname, ' ', StudentLastName)
--which student has been with me for the longest
/*select Student = concat(studentfirstname, ' ', StudentLastName), min ( sessiondate)
from kriah
group by concat(studentfirstname, ' ', StudentLastName)*/

--who is my most recent student (the data doesnt make total sence because it apears that some students have stopped coming but it should work to ignore that)
/*
select studentfirstname, 
       min(sessiondate)
from kriah 
group By StudentFirstName
having min(sessiondate) = min(sessiondate)*/

select * from kriah