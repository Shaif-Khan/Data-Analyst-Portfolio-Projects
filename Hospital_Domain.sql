--create database Hospital_Domain

--select * from Hospital

--Q1 Number Of Total Patient's?

select count(Patient_Id) as No_of_Total_Patients from Hospital


--Q2 Number of patients refer to none?

select count(Patient_Id)No_of_patients_Refer_to_None from Hospital where Department_Referral like 'None'


--Q3 Number of patients refer to general practice?

select count(Patient_Id)No_of_patients_Refer_to_General_Practice from Hospital where Department_Referral like 'General Practice'


--Q4 Number of patients refer to general Renal?

select count(Patient_Id)No_of_patients_Refer_to_Renal from Hospital where Department_Referral like 'Renal'


--Q5 Number of patients refer to general Orthopedics?

select count(Patient_Id)No_of_patients_Refer_to_Orthopedics from Hospital where Department_Referral like 'Orthopedics'


--Q6 Number of patients refer to Physiotherapy?

select count(Patient_Id)No_of_patients_Refer_to_Physiotherapy from Hospital where Department_Referral like 'Physiotherapy'


--Q7 Number of patients refer to general Neurology?

select count(Patient_Id)No_of_patients_Refer_to_Neurology from Hospital where Department_Referral like 'Neurology'


--Q8 Number of patients refer to general Gastrpenterology?

select count(Patient_Id)No_of_patients_Refer_to_Gastroenterology from Hospital where Department_Referral like 'Gastroenterology'


--Q9 Number of patients refer to general Cardiology?

select count(Patient_Id)No_of_patients_Refer_to_Cardiology from Hospital where Department_Referral like 'Cardiology'

select * from Hospital 


--Q10 Avg Patient Wait Time?

select avg(Patient_Waittime)as Avg_Patient_Wait_time_inMinutes from Hospital


--Q11 Maximum Patient Wait Time?

select max(Patient_Waittime)as max_Patient_Wait_time_inMinutes from Hospital


--Q12 Minimum Patient Wait Time?

select min(Patient_Waittime)as min_Patient_Wait_time_inMinutes from Hospital


--Q13 Patient Satisfaction Score?

select avg(Patient_Satisfaction_Score) as Avg_Patient_Satisfaction_Score_Under10 from Hospital


--Q14 Number of Patients Admitted v/s Non Admitted?

select count(Patient_Admission_Flag)No_of_patients_Non_Admitted from Hospital where Patient_Admission_Flag = 0

select count(Patient_Admission_Flag)No_of_patients_Admitted from Hospital where Patient_Admission_Flag = 1


--Q15 Patient Age Distribution?

select Patient_Gender,Patient_Age,count(Patient_Age)as Age_Count
from Hospital group by Patient_Gender,Patient_Age


--Q16 Number of Department Referrals?

select Department_Referral,count(Department_Referral) as Referral_Count from Hospital
group by Department_Referral


--Q17 Number of Patients Seen Within 30 Minutes?

select count(Patient_Id) as Number_of_Patients_seen_within_30min  from Hospital
where Patient_Waittime = 30 


--Q18 Patient Distribution By Gender ?

select Patient_Gender,count(Patient_Gender)as Number_Of_Patients from Hospital
group by Patient_Gender


--Q19 Patient Distribution By Race?

select count(Patient_Id)as Number_Of_Patients,Patient_Race from Hospital group by Patient_Race


--Q20  Highest Patient Admission in a Particular Day of Month?

select Patient_Admission_Date,day(Patient_Admission_Date) as Day_Of_Month,Patient_Admission_Flag,
month(Patient_Admission_Date)as By_Month
from Hospital where 
Patient_Admission_Flag = 1 


--Q21 Month View?

select Patient_Admission_Date,Patient_Id,Patient_Gender,Patient_Race from Hospital
group by month(Patient_Admission_Date),Patient_Id,Patient_Gender,Patient_Race,Patient_Admission_Date

