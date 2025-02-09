--create database Telecommunication

select * from Call_Center

--Q1 To Find Total Number of Calls?


select count(Id) as Total_Calls from Call_Center


--Q2 To Find Call Centre Cities?


select distinct(Call_Centres_City) as Call_Centre_Cities from Call_Center


--Q3 To Find Call Centre Channels?


select distinct(Channel)as Call_Channels from Call_Center


--Q4 To Find Call Centre City?

select distinct(City) as Call_City from Call_Center


--Q5 To Find Calling Reasons?

select distinct(Reason) as Reason_For_Call from Call_Center


--Q6 Call Response Time?

select distinct(Response_Time) as Call_Response_Time from Call_Center


--Q7 Call Sentiments?

select distinct(Sentiment) as Call_Sentiment from Call_Center


--Q8 Calling States?

select distinct(State) as Calling_States from Call_Center


--Q9 Call Durations in Minutes?

select distinct(Call_Duration_In_Minutes) as Call_Duration_In_Minutes from Call_Center


--Q10 To Find Csat Scores?

select distinct(Csat_Score) as Csat_Score from Call_Center order by Csat_Score desc


--Q11 Call Timestamp?

 select distinct(Call_Timestamp) as Call_Timestamp from Call_Center


 --Q12 Number of Calls According to Call Timestamp?

 select Call_Timestamp,count(Id) as Number_of_Calls from Call_Center
 group by Call_Timestamp order by Number_of_Calls desc

 select * from Call_Center


 --Q13 Number of Calls According to Call Centre City?

 select Call_Centres_City,count(Id) as Number_of_Calls from Call_Center
 group by Call_Centres_City order by Number_of_Calls desc


 --Q14 Number of Calls According to Channel?

 select Channel,count(Id) as Number_of_Calls from Call_Center
 group by Channel order by Number_of_Calls desc


 --Q15  Number of Calls According to City?
 
 select City,count(Id) as Number_of_Calls from Call_Center
 group by City order by Number_of_Calls desc


 --Q16 Number of Calls According to Reason?

 select Reason,count(Id) as Number_of_Calls from Call_Center
 group by Reason order by Number_of_Calls desc


 --Q17 Number of Calls According to Response Time?

 select Response_Time,count(Id) as Number_of_Calls from Call_Center
 group by Response_Time order by Number_of_Calls desc

 select * from Call_Center


 --Q18 Number of Calls According to Sentiment?

 select Sentiment,count(Id) as Number_of_Calls from Call_Center
 group by Sentiment order by Number_of_Calls desc


 --Q19 Number of Calls According to State?

 select State,count(Id) as Number_of_Calls from Call_Center
 group by State order by Number_of_Calls desc

 select * from Call_Center


 --Q20 Number of Calls According to Call_Duration_In_Minutes?


 select Call_Duration_In_Minutes,count(Id) as Number_of_Calls from Call_Center
 group by Call_Duration_In_Minutes order by Number_of_Calls desc


--Q21 Number of Calls According to Csat Score?


 select Csat_Score,count(Id) as Number_of_Calls from Call_Center
 group by Csat_Score order by Number_of_Calls desc

 



