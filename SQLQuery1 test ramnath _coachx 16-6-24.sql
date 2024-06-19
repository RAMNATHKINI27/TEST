---sql test---
create table employeedetail (employeeid int,firstname varchar(max),lastname varchar(max),salary int,department varchar(max),gender varchar(max))
select*from employeedetail
create table project_detail(projectdetailid int,employeedetailid int,projectname varchar(max))
select*from project_detail
select employeedetail.firstname 'employeename' ,project_detail.projectname  from employeedetail left join project_detail on employeedetail.employeeid=project_detail.employeedetailid where project_detail.employeedetailid is not null---those who assigned
select employeedetail.firstname 'employee not assigned' ,project_detail.projectname  from employeedetail left join project_detail on employeedetail.employeeid=project_detail.employeedetailid where project_detail.employeedetailid is null---not assigned
select employeedetail.firstname 'employeename' ,project_detail.projectname  from employeedetail right join project_detail on employeedetail.employeeid=project_detail.employeedetailid ---all project names including no mathing records
select employeedetail.firstname 'employeename' ,project_detail.projectname  from employeedetail full join project_detail on employeedetail.employeeid=project_detail.employeedetailid---emp records including nullvalues
create table department_info(department_id int,department_name varchar(max) ,manager_id int,location_id int)
create table employees_info (employee_id int,firstname varchar(max),lastname varchar(max),email varchar(max),phone_number int,hire_date int,job_id int,salary int,commission_pct int,manager_id int,department_id int)
 create table location(location_id int,street_address varchar(max),postalcode int,city varchar(max),state_province varchar(max),country_id varchar(max))
 create table job_grades (gradelevel varchar(max),lowest_sal int,highest_sal int)
 select employees_info.firstname,employees_info.lastname,employees_info.department_id,department_info.department_name from employees_info left join department_info on employees_info.department_id=department_info.department_id
 select firstname,lastname,department_name,city,state_province from employees_info left join department_info on employees_info.department_id=department_info.department_id left join location on department_info.location_id=location.location_id 
 select employees_info.firstname,employees_info.lastname,employees_info.salary,job_grades.gradelevel from employees_info left join job_grades on employees_info.salary=job_grades.highest_sal and job_grades.lowest_sal
 select employees_info.firstname,employees_info.lastname,department_info.department_id,department_info.department_name from employees_info inner join department_info on employees_info.department_id=department_info.department_id where department_info.department_id=80 or department_info.department_id=40