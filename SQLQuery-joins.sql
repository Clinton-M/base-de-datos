create table dbo.Employees(
	employee_id int not null identity(1,1) primary key,
	employee_name varchar(100) null,
	departament_id int
);

create table dbo.Departaments(
	departament_id int  not null identity(1,1) primary key,
	departament_name varchar(100) null
);

insert into dbo.Employees ([employee_name],[departament_id])
values ('Axel Romerp',1),
		('Roberto Mujica',2),
		('Alondra Rosas',3),
		('Rodrigo Lara',4),
		('Monica Galindo',5),
		('Rosario Galicia',null),
		('Fernando Roa',6),
		('Paola Leon',null)

insert into dbo.Departaments([departament_name])
	values('Sistemas'),
			('Recursos Humanos'),
			('Produccion'),
			('Ventas'),
			('Compras')

select *  from Departaments
select * from  Employees

-- INNER JOIN - DATOS QUE COENCIDEN

select [e].employee_name, d.departament_name from 
	dbo.[Employees] as [e]
	inner join dbo.[Departaments] as [d]
		on [e].departament_id = d.departament_id

-- left join 

select [e].employee_name, d.departament_name from 
	dbo.[Employees] as [e]
	left join dbo.[Departaments] as [d]
		on [e].departament_id = d.departament_id

-- tight join 

select [e].employee_name, d.departament_name from 
	dbo.[Employees] as [e]
	right join dbo.[Departaments] as [d]
		on [e].departament_id = d.departament_id

-- full join

select [e].employee_name, d.departament_name from 
	dbo.[Employees] as [e]
	full outer join dbo.[Departaments] as [d]
		on [e].departament_id = d.departament_id

-- where --null

select [e].employee_name, d.departament_name from 
	dbo.[Employees] as [e]
	left join dbo.[Departaments] as [d]
		on [e].departament_id = d.departament_id
	where d.departament_id is null

	-- si tienen
select [e].employee_name, d.departament_name from 
	dbo.[Employees] as [e]
	left join dbo.[Departaments] as [d]
		on [e].departament_id = d.departament_id
	where d.departament_id is not null
