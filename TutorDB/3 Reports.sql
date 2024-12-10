use TutorDB
go

-- Show me a list of all of my students and what session number they're up to.
select firstname, lastname, max(sessionnumber) as current_session_number
from tutoringsession
group by firstname, lastname

-- Show how much money I made since I started
select sum(paymentamount) as total_earnings
from tutoringsession
where ispaid = 1

-- Show how much money I'm owed alltogether
select sum(paymentamount) as total_owed
from tutoringsession
where ispaid = 0

-- Show me how many sessions I've had with each student, how much money I made from that student all together, and how much the student still owes
select firstname, lastname, count(*) as total_sessions, 
    sum(case when ispaid = 1 then paymentamount else 0 end) as total_earnings,
    sum(case when ispaid = 0 then paymentamount else 0 end) as total_owed
from tutoringsession
group by firstname, lastname

-- Show me how many weeks each student has been working with me 
select firstname,lastname,datediff(week, min(sessiondate), max(sessiondate)) + 1 as weeks_worked
from tutoringsession
group by firstname, lastname

--which student has been with me for the longest
select top 1 firstname, lastname, min(sessiondate) as start_date
from tutoringsession
group by firstname, lastname
order by min(sessiondate)

--Who is my most recent student

select top 1 firstname, lastname, max(sessiondate) as most_recent_date
from tutoringsession
group by firstname, lastname
order by max(sessiondate) desc
