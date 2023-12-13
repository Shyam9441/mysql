use `realestate managemant`;

create table employee(
	id int primary key auto_increment,
    name varchar(50) not null,
    sal bigint not null,
    state varchar(20) not null,
    country varchar(20) not null default ('india'),
    isactive bit default(1)
);
    
select * from employee;

insert into employee (name, sal, state, country, isactive) values ('shyam', 90000, 'telangana', 'india',1);

insert into employee (name, sal, state, country, isactive) values ('raj', 100000, 'ap', 'india', 0);

insert into employee (name, sal, state, country, isactive) values ('bhanu', 70000, 'telangana', 'india', 0);

insert into employee (name, sal, state, country, isactive) values ('santhosh', 100000, 'bangalore', 'india', 0);

insert into employee (name, sal, state, country, isactive) values ('akash', 100000, 'karnatak', 'india', 0);

insert into employee (name, sal, state, country, isactive) values ('raj', 100000, 'ap', 'india', 0),('rithu',800000,'telangana','india',1);

select * from employee;

select max(sal) from employee;

select min(sal) from employee;

select count(id) from employee;

select avg(sal) from employee;

select count(*) from employee;

select count(id) from employee where state = "telangana";

select count(id) from employee where state = ("ap");

select state,count(id) as noofemployees from employee group by state;

select country,state,count(id) as noofemployees from employee group by country,state;

select country,state,count(id) as noofemployees from employee where sal >= 70000 group by country,state;

select country,state,count(id) as noofemployees from employee  where sal >= 80000 group by state,country having count(id) >= 5;