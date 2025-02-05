--create database financial_loan


--select * from financial_loan


--Q1: Total Loan Applications?

select count(id) as total_loan_applications from financial_loan


--Q2 Total Funded Amount?

select sum(loan_amount)as total_funded_amount from financial_loan

select sum(loan_amount)as total_funded_amount from financial_loan 
where month(issue_date)=10 and year(issue_date)=2021

--Q3 Total Amount Received?

select sum(total_payment)as total_amount_received from financial_loan

select sum(total_payment)as total_amount_received from financial_loan
where month(issue_date)=10 and year(issue_date)=2021

--Q4 Average Interest Rate?

select round(avg(int_rate),4)*100 as Avg_int_rate from financial_loan

--Q5 Average Dept to income Ratio?

select round(avg(dti),4)*100 as Avg_DTI from financial_loan

select loan_status from financial_loan where loan_status like 'Fully Paid'

--Q6: Good Loan Percentage?

select (count(case when loan_status = 'Fully Paid' or loan_status = 'Current' then id end )*100)
/
count(id) as Good_Loan_Percentage from financial_loan

--Q7 Good Loan Applications?

select count(id) as Good_loan_application from financial_loan
where loan_status='Fully Paid' or loan_status='Current'

--Q8 Good Loan total Funded Amount?

select sum(loan_amount)as Good_Loan_Funded_Amount from financial_loan
where loan_status = 'Fully Paid' or loan_status = 'Current'

--Q9 Good Loan Total Amount Received?

select sum(total_payment)as Good_Loan_Total_Amount_Received from financial_loan
where loan_status = 'Fully Paid' or loan_status = 'Current'

--Q10 Bad Loan %?

select(count(case when loan_status= 'Charged Off' then id end)*100)/
count(id)as Bad_Loan_Percentage from financial_loan

--Q11 Total Applications of Bad Loan?

select count(id) as Total_Bad_Loan_Applications from financial_loan
where loan_status = 'Charged Off'

--Q12 Bad Loan Funded AMount?

select sum(loan_amount) as bad_loan_funded_amount from financial_loan
where loan_status = 'Charged Off' 

select sum(total_payment) Bad_Loan_AMount_Received from financial_loan where
loan_status='Charged Off'

--Q13 Grid View?

select loan_status,
count(id) as Total_Application_Received,
sum(loan_amount) as Total_Funded_Amount,
sum(total_payment) as Total_Amount_Received,
sum(int_rate *100) as Total_Interest_Rate,
sum(dti * 100) as DTI from financial_loan group by loan_status 

--Q14 MTD(Month to Date)?

select loan_status,
sum(loan_amount) as MTD_Total_Funded_Amount,
sum(total_payment) as MTD_Total_Amount_Received
from financial_loan where month(issue_date)=12
group by loan_status

--Q15 Monthly Trend By Issue Date?

select MONTH(issue_date) as Month_Number,
DATENAME(month,issue_date) as Month,
count(id) as Total_Applications,
sum(loan_amount) as Total_Funded_Amount,
sum(total_payment) as Total_Amount_Received
from financial_loan group by MONTH(issue_date),DATENAME(month,issue_date)
order by MONTH(issue_date) desc

--Q16 Regional Analysis By State?

select address_state,
count(id) as Total_Applications,
sum(loan_amount) as Total_Funded_Amount,
sum(total_payment) as Total_Amount_Received
from financial_loan group by address_state
order by sum(loan_amount) desc

--Q17 Loan Term Analysis?

select term,
count(id) as Total_Applications,
sum(loan_amount) as Total_Funded_Amount,
sum(total_payment) as Total_Amount_Received
from financial_loan group by term
order by sum(loan_amount) desc

--Q18 Employee Length Analysis?

select emp_length,
count(id) as Total_Applications,
sum(loan_amount) as Total_Funded_Amount,
sum(total_payment) as Total_Amount_Received
from financial_loan group by emp_length
order by count(id) desc

--Q19 Loan By Purpose Analysis?

select purpose,
count(id) as Total_Applications,
sum(loan_amount) as Total_Funded_Amount,
sum(total_payment) as Total_Amount_Received
from financial_loan group by purpose
order by count(id) desc

--Q20 Loan By Home Ownership?

select home_ownership,
count(id) as Total_Applications,
sum(loan_amount) as Total_Funded_Amount,
sum(total_payment) as Total_Amount_Received
from financial_loan group by home_ownership
order by count(id) desc

select home_ownership,
count(id) as Total_Applications,
sum(loan_amount) as Total_Funded_Amount,
sum(total_payment) as Total_Amount_Received
from financial_loan  where grade='A' and address_state= 'CA'group by home_ownership
order by count(id) desc





