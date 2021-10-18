-- create database "db_test"
--drop database db_test;
--create database db_test;

 --gender dictionary
create table gender (
   id     serial  not null,
   gender varchar not null unique,
   CONSTRAINT gender_pk PRIMARY KEY (id)
);

 --projects dictionary
create table projects(
	id 		     serial      not null,
	ProjectName  varchar(50) not null,
	Created		 date        not null,
	CONSTRAINT projects_pk PRIMARY KEY (id)
);

 --customers dictionary
create table customers(
	id 		     serial      not null,
	CustomerName varchar(50) not null,
	CONSTRAINT customers_pk PRIMARY KEY (id)
);

 --companies dictionary
create table companies(
	id 		     serial      not null,
	CompanyName  varchar(50) not null,
	CONSTRAINT companies_pk PRIMARY KEY (id)
);

 --industry dictionary
create table industry(
	id 		     serial not null,
	IndustryName varchar(50) not null,
	CONSTRAINT industry_pk PRIMARY KEY (id)
);
 --skill_level dictionary
create table skill_level(
	id 		  serial not null,
	LevelName varchar(50) not null,
	CONSTRAINT skill_level_pk PRIMARY KEY (id)
);

 --developers dictionary
create table developers(
	id 		     serial not null,
	LastName     varchar(50) not null,
	FirstName    varchar(50) not null,
	Surname      varchar(50),
	DeveloperAge Integer,
	DateOfBirth  date,
	gender_id    Integer not null,
	company_id   Integer not null,
	CONSTRAINT developers_pk PRIMARY KEY (id),
	CONSTRAINT fk_id_gender FOREIGN KEY(gender_id) REFERENCES gender(id),
	CONSTRAINT fk_id_company FOREIGN KEY(company_id) REFERENCES companies(id)
);


 --skills table
create table skills(
	id 			   serial  not null,
	Industry_Id    integer not null,
	LevelSkills_Id integer not null,
	UNIQUE (Industry_Id, LevelSkills_Id),
	CONSTRAINT skills_pk PRIMARY KEY (id),
	CONSTRAINT fk_industry_id FOREIGN KEY(Industry_Id) REFERENCES industry(id),
	CONSTRAINT fk_skills_level_id FOREIGN KEY(LevelSkills_Id) REFERENCES skill_level(id)
);

-- developer_skill
create table developer_skill(
	developer_id integer not null,
	skill_id     integer not null,
	CONSTRAINT developer_skill_pk PRIMARY KEY (developer_id, skill_id),
	CONSTRAINT fk_developers_developer_id FOREIGN KEY(developer_id) REFERENCES developers(id),
	CONSTRAINT fk_skills_skill_id FOREIGN KEY(skill_id) REFERENCES skills(id)
);

-- developer_project
create table developer_project(
	developer_id integer not null,
	project_id   integer not null,
	CONSTRAINT developers_project_pk PRIMARY KEY (developer_id, project_id),
	CONSTRAINT fk_developers_developer_id FOREIGN KEY(developer_id) REFERENCES developers(id),
	CONSTRAINT fk_projects_project_id FOREIGN KEY(project_id) REFERENCES projects(id)
);

-- company_project
create table company_project(
	company_id integer not null,
	project_id integer not null,
	CONSTRAINT company_project_pk PRIMARY KEY (company_id, project_id),
	CONSTRAINT fk_companies_company_id FOREIGN KEY(company_id) REFERENCES companies(id),
	CONSTRAINT fk_projects_project_id FOREIGN KEY(project_id) REFERENCES projects(id)
);

-- customer_project
create table customer_project(
	customer_id integer not null,
	project_id  integer not null,
	CONSTRAINT customer_project_pk PRIMARY KEY (customer_id, project_id),
	CONSTRAINT fk_customers_customer_id FOREIGN KEY(customer_id) REFERENCES customers(id),
	CONSTRAINT fk_projects_project_id FOREIGN KEY(project_id) REFERENCES projects(id)
);