-- create database "db_test"
--drop database db_test;
--create database db_test;
-- gender dictionary
create table gender (
   id     serial  not null,
   gender varchar not null unique,
   CONSTRAINT gender_pk PRIMARY KEY (id)
);

-- projects dictionary
create table projects(
	id 		     serial      not null,
	ProjectName  varchar(50) not null,
	Created		 date        not null,
	CONSTRAINT projects_pk PRIMARY KEY (id)
);

-- customers dictionary
create table customers(
	id 		     serial      not null,
	CustomerName varchar(50) not null,
	CONSTRAINT customers_pk PRIMARY KEY (id)
);

-- companies dictionary
create table companies(
	id 		     serial      not null,
	CompanyName  varchar(50) not null,
	CONSTRAINT companies_pk PRIMARY KEY (id)
);

-- developers dictionary
create table developers(
	id 		     serial not null,
	LastName     varchar(50) not null,
	FirstName    varchar(50) not null,
	Surname      varchar(50),
	DeveloperAge Integer,
	DateOfBirth  date,
	gender_id    Integer not null,
	project_id   Integer not null,
	company_id   Integer not null,
	CONSTRAINT developers_pk PRIMARY KEY (id),
	CONSTRAINT fk_id_gender FOREIGN KEY(gender_id) REFERENCES gender(id),
	CONSTRAINT fk_id_project FOREIGN KEY(project_id) REFERENCES projects(id),
	CONSTRAINT fk_id_company FOREIGN KEY(company_id) REFERENCES companies(id)
);

-- industry dictionary
create table industry(
	id 		     serial not null,
	IndustryName varchar(50) not null,
	CONSTRAINT industry_pk PRIMARY KEY (id)
);
-- skills_level dictionary
create table skills_level(
	id 		  serial not null,
	LevelName varchar(50) not null,
	CONSTRAINT skills_level_pk PRIMARY KEY (id)
);
-- skills table
create table skills(
	Industry_Id    integer not null,
	LevelSkills_Id integer not null,
	Developer_Id   integer not null,
	CONSTRAINT skills_pk PRIMARY KEY (Industry_Id, LevelSkills_Id, Developer_Id),
	CONSTRAINT fk_industry_id FOREIGN KEY(Industry_Id) REFERENCES industry(id),
	CONSTRAINT fk_skills_level_id FOREIGN KEY(LevelSkills_Id) REFERENCES skills_level(id),
	CONSTRAINT fk_developer_id FOREIGN KEY(Developer_Id) REFERENCES developers(id)
);


-- table of connection customers and companies
create table customers_to_companies(
	Customer_Id integer not null,
	Company_Id  integer not null,
	Project_id  integer not null, 
	CONSTRAINT customers_to_companies_pk PRIMARY KEY (Customer_Id, Company_Id, Project_id),
	CONSTRAINT fk_customer_id FOREIGN KEY(Customer_Id) REFERENCES customers(id),
	CONSTRAINT fk_company_id FOREIGN KEY(Company_Id) REFERENCES companies(id),
	CONSTRAINT fk_project_id FOREIGN KEY(Project_id) REFERENCES projects(id)
);