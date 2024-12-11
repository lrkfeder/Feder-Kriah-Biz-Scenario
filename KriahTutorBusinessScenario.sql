/*Kriah Tutor: I stared working as a private tutor on Sep 1, 2024. I tutor different aged students 1 on 1 who are behind in their kriah skills. 
I want to manage my data so I can keep track of the different sessions and payments.

I need to record the following about each tutoring session that takes place:
	first and last name of student tutored
	session date
	the session # per that student
	minutes per session
	session location
	amnt of payment owed per the session
	payment paid - yes/no

I usually tutor each student 4 times per week, but there are sometimes last minute cancellations.
Some sudents come to me, while I travel to some students' homes. Any student to whose home I travel, automatically pays 30% more per session
My rate is $1.50 per minute
The table should display each student's sessions grouped together.

Reports:
Show me a list of all of my students and what session number they're up to.
Show how much money I made since I started
Show how much money I'm owed alltogether
Show me how many sessions I've had with each student, how much money I made from that student all together, and how much the student still owes
Show me how many weeks each student has been working with me, which student has been with me for the longest, and who is my most recent student (the data doesnt make total sence because it apears that some students have stopped coming but it should work to ignore that)

Questions:
1)  Is travel time calculated into your minutely rate? If so, what is your travel time per student?
	no - as mentioned, parents pay an additional 30% of the session payment when I travel to the students' homes

2)  Can parents pay for half a session at one time?
	no, parents must pay for at least a full session at a time. Most parents pay weekly or monthly.

3)  Can the length of one student's session vary from one day to the next?
	no

4)  Can one student have two sessions in one day?
	no

5)  Can the location of one student's session vary from one day to the next?
	yes

first name varchar (15) not null not blank
last name varchar (20) not null not blank
session date date unique per day and student not null not blank
session number tinyint not null
session minutes tinyint not null
session location varcharn(25) not null not blank
payment amount decimal (5,2) not null not blank
payment paid varchar (6) check constraint 6_ not null not blank


sample data:
Shalom Feder, 12/01/2024, session 1, 30 min, Feder home, $58.50, paid
Shalom Feder, 12/02/2024, session 2, 30 min, Feder home, $58.50, paid
Shalom Feder, 12/03/2024, session 3, 30 min, Tutor home, $45.00, paid
Shalom Feder, 12/04/2024, session 4, 30 min, Tutor home, $45.00, paid

Netanel Katz, 09/01/2024, session 1, 40 min, Katz home, $78.00, paid
Netanel Katz, 09/02/2024, session 2, 40 min, Katz home, $78.00, paid
Netanel Katz, 09/03/2024, session 3, 40 min, Katz home, $78.00, paid
Netanel Katz, 09/04/2024, session 4, 40 min, Katz home, $78.00, paid
Netanel Katz, 09/08/2024, session 5, 40 min, Katz home, $78.00, paid
Netanel Katz, 09/09/2024, session 6, 40 min, Katz home, $78.00, paid
Netanel Katz, 09/10/2024, session 7, 40 min, Katz home, $78.00, paid
Netanel Katz, 09/11/2024, session 8, 40 min, Katz home, $78.00, paid
Netanel Katz, 09/15/2024, session 9, 40 min, Katz home, $78.00, paid
Netanel Katz, 09/16/2024, session 10, 40 min, Katz home, $78.00, paid
Netanel Katz, 09/17/2024, session 11, 40 min, Katz home, $78.00, paid
Netanel Katz, 09/18/2024, session 12, 40 min, Katz home, $78.00, paid
Netanel Katz, 09/22/2024, session 13, 40 min, Katz home, $78.00, unpaid
Netanel Katz, 09/23/2024, session 14, 40 min, Katz home, $78.00, unpaid
Netanel Katz, 09/24/2024, session 15, 40 min, Katz home, $78.00, unpaid
Netanel Katz, 09/25/2024, session 16, 40 min, Katz home, $78.00, unpaid
Netanel Katz, 09/29/2024, session 17, 40 min, Tutor home, $60.00, unpaid
Netanel Katz, 09/30/2024, session 18, 40 min, Tutor home, $60.00, unpaid
Netanel Katz, 09/31/2024, session 19, 40 min, Tutor home, $60.00, unpaid
Netanel Katz, 10/01/2024, session 20, 40 min, Tutor home, $60.00, unpaid

Aviva Schwartz, 11/03/2024, session 1, 30 min, Schwartz home, $58.50, unpaid
Aviva Schwartz, 11/04/2024, session 2, 30 min, Schwartz home, $58.50, unpaid
Aviva Schwartz, 11/05/2024, session 3, 30 min, Schwartz home, $58.50, unpaid
Aviva Schwartz, 11/06/2024, session 4, 30 min, Schwartz home, $58.50, unpaid
Aviva Schwartz, 11/10/2024, session 5, 30 min, Tutor home, $45.00, unpaid
Aviva Schwartz, 11/11/2024, session 6, 30 min, Tutor home, $45.00, unpaid
Aviva Schwartz, 11/12/2024, session 7, 30 min, Tutor home, $45.00, unpaid
Aviva Schwartz, 11/13/2024, session 8, 30 min, Tutor home, $45.00, unpaid 
Aviva Schwartz, 11/17/2024, session 9, 30 min, Tutor home, $45.00, unpaid
Aviva Schwartz, 11/18/2024, session 10, 30 min, Tutor home, $45.00, unpaid
Aviva Schwartz, 11/19/2024, session 11, 30 min, Tutor home, $45.00, unpaid
Aviva Schwartz, 11/20/2024, session 12, 30 min, Tutor home, $45.00, unpaid
*/


select * from KriahSessions