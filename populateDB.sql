--======================================================================================================--
insert into projects (project_name, created)
values ('������1', to_date('07.02.2020', 'dd.mm.yyyy hh24:mi:ss'));
insert into projects (project_name, created)
values ('������2', to_date('10.08.2019', 'dd.mm.yyyy hh24:mi:ss'));
insert into projects (project_name, created)
values ('������3', to_date('05.05.2021', 'dd.mm.yyyy hh24:mi:ss'));
insert into projects (project_name, created)
values ('������4', to_date('19.03.2020', 'dd.mm.yyyy hh24:mi:ss'));
insert into projects (project_name, created)
values ('������5', to_date('25.10.2021', 'dd.mm.yyyy hh24:mi:ss'));
--======================================================================================================--
insert into companies (company_name)
values ('��������1');
insert into companies (company_name)
values ('��������2');
insert into companies (company_name)
values ('��������3');
insert into companies (company_name)
values ('��������4');
--======================================================================================================
insert into customers (customer_name)
values ('��������1');
insert into customers (customer_name)
values ('��������2');
insert into customers (customer_name)
values ('��������3');
insert into customers (customer_name)
values ('��������4');
--======================================================================================================--
insert into developers(last_name, first_name, surname, developer_age, date_of_birth, gender, company_id)
values('�������', '��������', '��������������', 27, to_date('21.02.1994', 'dd.mm.yyyy hh24:mi:ss'), '�������', 1);
insert into developers(last_name, first_name, surname, developer_age, date_of_birth, gender, company_id)
values('������', '��������', '���������', 40, to_date('12.11.1981', 'dd.mm.yyyy hh24:mi:ss'), '�������', 1);
insert into developers(last_name, first_name, surname, developer_age, date_of_birth, gender, company_id)
values('��������', '��������', '��������', 30, to_date('05.07.1991', 'dd.mm.yyyy hh24:mi:ss'), '�������', 1);
insert into developers(last_name, first_name, surname, developer_age, date_of_birth, gender, company_id)
values('��������', '��������', '��������������', 35, to_date('02.01.1986', 'dd.mm.yyyy hh24:mi:ss'), '�������', 1);
insert into developers(last_name, first_name, surname, developer_age, date_of_birth, gender, company_id)
values('�������', '�����', '�������������', 29, to_date('12.11.1981', 'dd.mm.yyyy hh24:mi:ss'), '�������', 1);
------------------------------------------------------------------------------------------------------------
insert into developers(last_name, first_name, surname, developer_age, date_of_birth, gender, company_id)
values('�����������6', '', '', 27, to_date('12.11.1994', 'dd.mm.yyyy hh24:mi:ss'), '�������', 2);
insert into developers(last_name, first_name, surname, developer_age, date_of_birth, gender, company_id)
values('�����������7', '', '', 40, to_date('30.12.1981', 'dd.mm.yyyy hh24:mi:ss'), '�������', 2);
insert into developers(last_name, first_name, surname, developer_age, date_of_birth, gender, company_id)
values('�����������8', '', '', 30, to_date('11.03.1991', 'dd.mm.yyyy hh24:mi:ss'), '�������', 2);
insert into developers(last_name, first_name, surname, developer_age, date_of_birth, gender, company_id)
values('�����������9', '', '', 35, to_date('22.09.1986', 'dd.mm.yyyy hh24:mi:ss'), '�������', 2);
insert into developers(last_name, first_name, surname, developer_age, date_of_birth, gender, company_id)
values('�����������10', '', '', 29, to_date('14.06.1981', 'dd.mm.yyyy hh24:mi:ss'), '�������', 3);
------------------------------------------------------------------------------------------------------------
insert into developers(last_name, first_name, surname, developer_age, gender, company_id)
values('�����������11', '', '', 29, '�������', 3);
insert into developers(last_name, first_name, surname, developer_age, gender, company_id)
values('�����������12', '', '', 31, '�������', 3);
insert into developers(last_name, first_name, surname, developer_age, gender, company_id)
values('�����������13', '', '', 31, '�������', 3);
insert into developers(last_name, first_name, surname, developer_age, gender, company_id)
values('�����������14', '', '', 26, '�������', 3);
insert into developers(last_name, first_name, surname, developer_age, gender, company_id)
values('�����������15', '', '', 38, '�������', 3);
--======================================================================================================--
insert into skills(industry, level_skills)
values('Java', 'Junior');
insert into skills(industry, level_skills)
values('Java', 'Middle');
insert into skills(industry, level_skills)
values('Java', 'Senior');
insert into skills(industry, level_skills)
values('C++', 'Junior');
insert into skills(industry, level_skills)
values('C++', 'Middle');
insert into skills(industry, level_skills)
values('C++', 'Senior');
insert into skills(industry, level_skills)
values('C#', 'Junior');
insert into skills(industry, level_skills)
values('C#', 'Middle');
insert into skills(industry, level_skills)
values('C#', 'Senior');
insert into skills(industry, level_skills)
values('JS', 'Junior');
insert into skills(industry, level_skills)
values('JS', 'Middle');
insert into skills(industry, level_skills)
values('JS', 'Senior');
--======================================================================================================--
insert into developer_skill(developer_id, skill_id)
values(2, 3);
insert into developer_skill(developer_id, skill_id)
values(1, 5);
insert into developer_skill(developer_id, skill_id)
values(5, 7);
insert into developer_skill(developer_id, skill_id)
values(4, 12);
-----------------------------------------------------------------------------------------------
insert into developer_project(developer_id, project_id)
values(1, 3);
insert into developer_project(developer_id, project_id)
values(2, 3);
insert into developer_project(developer_id, project_id)
values(3, 3);
insert into developer_project(developer_id, project_id)
values(4, 3);
insert into developer_project(developer_id, project_id)
values(5, 3);
-----------------------------------------------------------------------------------------------
insert into developer_project(developer_id, project_id)
values(6, 2);
insert into developer_project(developer_id, project_id)
values(7, 2);
insert into developer_project(developer_id, project_id)
values(8, 2);
insert into developer_project(developer_id, project_id)
values(9, 2);
insert into developer_project(developer_id, project_id)
values(10, 2);
-----------------------------------------------------------------------------------------------
insert into developer_project(developer_id, project_id)
values(11, 1);
insert into developer_project(developer_id, project_id)
values(12, 1);
insert into developer_project(developer_id, project_id)
values(13, 1);
insert into developer_project(developer_id, project_id)
values(14, 1);
insert into developer_project(developer_id, project_id)
values(15, 1);
--======================================================================================================--
insert into customer_project(customer_id, project_id)
values(1, 5);
insert into customer_project(customer_id, project_id)
values(2, 4);
insert into customer_project(customer_id, project_id)
values(3, 3);
insert into customer_project(customer_id, project_id)
values(4, 2);
insert into customer_project(customer_id, project_id)
values(4, 1);
--======================================================================================================--
insert into company_project(company_id, project_id)
values(4, 5);
insert into company_project(company_id, project_id)
values(3, 4);
insert into company_project(company_id, project_id)
values(2, 3);
insert into company_project(company_id, project_id)
values(1, 2);
insert into company_project(company_id, project_id)
values(2, 1);
--======================================================================================================--























