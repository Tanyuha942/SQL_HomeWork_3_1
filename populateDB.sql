--======================================================================================================--
insert into gender(gender)
values('�������');
insert into gender(gender)
values('�������');
--======================================================================================================--
insert into projects (projectname, created)
values ('������1', to_date('07.02.2020', 'dd.mm.yyyy hh24:mi:ss'));
insert into projects (projectname, created)
values ('������2', to_date('10.08.2019', 'dd.mm.yyyy hh24:mi:ss'));
insert into projects (projectname, created)
values ('������3', to_date('05.05.2021', 'dd.mm.yyyy hh24:mi:ss'));
insert into projects (projectname, created)
values ('������4', to_date('19.03.2020', 'dd.mm.yyyy hh24:mi:ss'));
insert into projects (projectname, created)
values ('������5', to_date('25.10.2021', 'dd.mm.yyyy hh24:mi:ss'));
--======================================================================================================--
insert into companies (companyname)
values ('��������1');
insert into companies (companyname)
values ('��������2');
insert into companies (companyname)
values ('��������3');
insert into companies (companyname)
values ('��������4');
--======================================================================================================--
insert into customers (customername)
values ('��������1');
insert into customers (customername)
values ('��������2');
insert into customers (customername)
values ('��������3');
insert into customers (customername)
values ('��������4');
--======================================================================================================--
insert into developers(lastname, firstname, surname, developerage, dateofbirth, gender_id, project_id, company_id)
values('�������', '��������', '��������������', 27, to_date('21.02.1994', 'dd.mm.yyyy hh24:mi:ss'), 1, 3, 1);
insert into developers(lastname, firstname, surname, developerage, dateofbirth, gender_id, project_id, company_id)
values('������', '��������', '���������', 40, to_date('12.11.1981', 'dd.mm.yyyy hh24:mi:ss'), 1, 3, 1);
insert into developers(lastname, firstname, surname, developerage, dateofbirth, gender_id, project_id, company_id)
values('��������', '��������', '��������', 30, to_date('05.07.1991', 'dd.mm.yyyy hh24:mi:ss'), 1, 3, 1);
insert into developers(lastname, firstname, surname, developerage, dateofbirth, gender_id, project_id, company_id)
values('��������', '��������', '��������������', 35, to_date('02.01.1986', 'dd.mm.yyyy hh24:mi:ss'), 1, 3, 1);
insert into developers(lastname, firstname, surname, developerage, dateofbirth, gender_id, project_id, company_id)
values('�������', '�����', '�������������', 29, to_date('12.11.1981', 'dd.mm.yyyy hh24:mi:ss'), 2, 3, 1);
------------------------------------------------------------------------------------------------------------
insert into developers(lastname, firstname, surname, developerage, dateofbirth, gender_id, project_id, company_id)
values('�����������6', '', '', 27, to_date('12.11.1994', 'dd.mm.yyyy hh24:mi:ss'), 1, 2, 2);
insert into developers(lastname, firstname, surname, developerage, dateofbirth, gender_id, project_id, company_id)
values('�����������7', '', '', 40, to_date('30.12.1981', 'dd.mm.yyyy hh24:mi:ss'), 1, 2, 2);
insert into developers(lastname, firstname, surname, developerage, dateofbirth, gender_id, project_id, company_id)
values('�����������8', '', '', 30, to_date('11.03.1991', 'dd.mm.yyyy hh24:mi:ss'), 1, 2, 2);
insert into developers(lastname, firstname, surname, developerage, dateofbirth, gender_id, project_id, company_id)
values('�����������9', '', '', 35, to_date('22.09.1986', 'dd.mm.yyyy hh24:mi:ss'), 1, 2, 2);
insert into developers(lastname, firstname, surname, developerage, dateofbirth, gender_id, project_id, company_id)
values('�����������10', '', '', 29, to_date('14.06.1981', 'dd.mm.yyyy hh24:mi:ss'), 2, 2, 3);
------------------------------------------------------------------------------------------------------------
insert into developers(lastname, firstname, surname, developerage, gender_id, project_id, company_id)
values('�����������11', '', '', 29, 1, 1, 3);
insert into developers(lastname, firstname, surname, developerage, gender_id, project_id, company_id)
values('�����������12', '', '', 31, 1, 1, 3);
insert into developers(lastname, firstname, surname, developerage, gender_id, project_id, company_id)
values('�����������13', '', '', 31, 1, 1, 3);
insert into developers(lastname, firstname, surname, developerage, gender_id, project_id, company_id)
values('�����������14', '', '', 26, 1, 1, 3);
insert into developers(lastname, firstname, surname, developerage, gender_id, project_id, company_id)
values('�����������15', '', '', 38, 1, 1, 3);
--======================================================================================================--
insert into industry (industryname)
values ('Java');
insert into industry (industryname)
values ('C++');
insert into industry (industryname)
values ('C#');
insert into industry (industryname)
values ('JS');
--======================================================================================================--
insert into skills_level (levelname)
values('Junior');
insert into skills_level (levelname)
values('Middle');
insert into skills_level (levelname)
values('Senior');
--======================================================================================================--
insert into skills(industry_id, levelskills_id, developer_id)
values(1, 3, 2);
insert into skills(industry_id, levelskills_id, developer_id)
values(2, 2, 1);
insert into skills(industry_id, levelskills_id, developer_id)
values(3, 1, 5);
insert into skills(industry_id, levelskills_id, developer_id)
values(4, 3, 7);
insert into skills(industry_id, levelskills_id, developer_id)
values(2, 1, 12);
--======================================================================================================--
insert into customers_to_companies(customer_id, company_id, project_id) -- 4 - 4 - 5
values(1, 4, 5);
insert into customers_to_companies(customer_id, company_id, project_id)
values(2, 3, 4);
insert into customers_to_companies(customer_id, company_id, project_id)
values(3, 2, 3);
insert into customers_to_companies(customer_id, company_id, project_id)
values(4, 1, 2);
insert into customers_to_companies(customer_id, company_id, project_id)
values(4, 2, 1);
--======================================================================================================--






