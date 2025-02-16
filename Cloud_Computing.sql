--create database Cloud_Computing


select * from Cloud_Data


--Q1 To Find Total Virtual Machine Users? 


select count(vm_id) as Total_Virtual_Machine_Users from Cloud_Data


--Q2 Average CPU Usages?


select round(avg(cpu_usage),2) as Average_CPU_Usage from Cloud_Data


--Q3 Maximum CPU Usages?


select round(max(cpu_usage),1) as Maximum_CPU_Usage from Cloud_Data


--Q4 Minimum CPU Usages?


select min(cpu_usage) as Minimum_CPU_Usage from Cloud_Data


--Q5 Total CPU Usages?


select round(sum(cpu_usage),2) as Total_CPU_Usage from Cloud_Data


--Q6 Total Memory Usages?


select round(sum(memory_usage),2) as Total_Memory_Usage from Cloud_Data


--Q7 Maximum Memory Usages?


select round(max(memory_usage),2) as Maximum_Memory_Usage from Cloud_Data


--Q8 Minimum Memory Usages?


select min(memory_usage) as Minimum_Memory_Usage from Cloud_Data


--Q9 Average Memory Usages?


select round(avg(memory_usage),2) as AVg_Memory_Usage from Cloud_Data


--Q10 Total Network Traffic?


select round(sum(network_traffic),2) as Total_Network_Traffic from Cloud_Data


--Q11 Maximum Network Traffic?


select round(max(network_traffic),2) as Maximum_Network_Traffic from Cloud_Data


--Q12 Minimum Network Traffic?


select min(network_traffic) as Minimum_Network_Traffic from Cloud_Data


--Q13 Average Network Traffic?


select round(avg(network_traffic),2) as Avg_Network_Traffic from Cloud_Data    


--Q14 Total Power Consumption?


select round(sum(power_consumption),2) as Total_Power_Consumption from Cloud_Data


--Q15 Average Power Consumption?


select round(avg(power_consumption),2) as AVg_Power_Consumption from Cloud_Data


--Q16 Maximum Power Consumption?


select round(max(power_consumption),2) as Maximum_Power_Consumption from Cloud_Data


--Q17 Minimum Power Consumption?


select min(power_consumption)as Minimum_Power_Consumption from Cloud_Data


--Q18 Maximum Number of Executed Instructions?


select max(num_executed_instructions) as Maximum_Executed_Instruction from Cloud_Data


--Q19 Minimum Executed Instructions?


select min(num_executed_instructions) as Minimum_Executed_Instruction from Cloud_Data


--Q20 Total Executed Instructions?


select count(num_executed_instructions) as Total_Executed_Instruction from Cloud_Data 


--Q21 Average Execution Time ?


select round(avg(execution_time),2) as AVg_Execution_Time from Cloud_Data


--Q22 Maximum Execution Time?


select round(max(execution_time),2) as Maximum_Execution_Time from Cloud_Data


--Q23 Minimum Execution Time?


select min(execution_time) as AVg_Execution_Time from Cloud_Data


--Q24 Total Energy Efficiency?


select round(sum(energy_efficiency),2) as Total_Energy_Efficiency from Cloud_Data


--Q25 Maximum Energy Efficiency?


select round(max(energy_efficiency),2) as Maximum_Energy_Efficiency from Cloud_Data


--Q26 Minimum Energy Efficiency?


select min(energy_efficiency)as Miniimum_Energy_Efficiency from Cloud_Data


--Q27 Average Energy Efficiency?


select round(avg(energy_efficiency),2) as Avg_Energy_Efficiency from Cloud_Data


--Q28 Task Type?


select distinct(task_type) as Task_Type from Cloud_Data


--Q29 Task Priority?


select distinct(task_priority) as Task_Status from Cloud_Data


--Q30 Task Status?


select distinct(task_status) as Task_Status from Cloud_Data


select * from Cloud_Data


--Q31 Number of Virtual Machine Users According to Task_Type?


select task_type,count(vm_id) as Number_of_VM_Users from Cloud_Data
group by task_type order by task_type desc


--Q32 Number of Virtual Machine Users According to Task_Priority?


select task_priority,count(vm_id) as Number_of_VM_Users from Cloud_Data
group by task_priority order by task_priority desc


--Q33 Number of Virtual Machine Users According to Task_Status?


select task_status,count(vm_id) as Number_of_VM_Users from Cloud_Data
group by task_status order by task_status desc

