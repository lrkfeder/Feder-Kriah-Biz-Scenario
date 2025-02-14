--Show me a list of all of my students and what session number they're up to.
select AmountOfSessions = count(*), FirstName, LastName 
from KriahSessions
group by FirstName, LastName

--Show how much money I made since I started
select MoneyMade = sum(PaymentAmount)
from KriahSessions
where PaymentPaid = 'paid'

--Show how much money I'm owed alltogether
select MoneyOwed = sum(PaymentAmount)
from KriahSessions
where PaymentPaid = 'unpaid'

--Show me how many sessions I've had with each student, how much money I made from that student all together, and how much the student still owes
select k.FirstName, k.LastName, AmountOfSessions = count(*)
from KriahSessions k
group by k.FirstName, k.LastName

select FirstName, LastName, MoneyOwed = sum(PaymentAmount)
from KriahSessions
where PaymentPaid = 'unpaid'
group by FirstName, LastName

select FirstName, LastName, MoneyMade = sum(PaymentAmount)
from KriahSessions
where PaymentPaid = 'paid'
group by FirstName, LastName

--Show me how many weeks each student has been working with me, which student has been with me for the longest, and who is my most recent student (the data doesnt make total sence because it apears that some students have stopped coming but it should work to ignore that)
select k.FirstName, k.LastName, WeeksWorkingWith = DATEDIFF (week, min(k.SessionDate), max(k.SessionDate))
from KriahSessions k
group by FirstName, LastName

select top(1) LongestStudent = k.FirstName, k.LastName
from KriahSessions k
order by k.SessionDate

select top(1) MostRecentStudent = concat(k.FirstName,' ', k.LastName)
from KriahSessions k
order by k.SessionDate desc