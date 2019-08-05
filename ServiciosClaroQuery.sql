create database ServiciosClaro

go

use ServiciosClaro

go

create table Roles(
Id int primary key identity,
RolName varchar(50) not null
)

go

create table Cuentas(
Id int primary key identity,
Usuario varchar(50) not null,
Clave varchar(50) not null
)

go

create table RolCuentas(
Id int primary key identity,
Cuenta int References Cuentas(Id) not null,
Rol int references Roles(Id) not null
)

go

create table Puestos(
Id int primary key identity,
Puesto varchar(50) not null
)

go

create table Empleados(
Id int primary key identity,
Nombre varchar(100) not null,
Telefono varchar(25) not null,
Puesto int references Puestos(Id),
Email varchar(100) not null,
Cedula varchar(15) not null,
FechaContratacion date not null,
Cuenta int references Cuentas(Id)
)

go

create table Clientes(
Id int primary key identity,
Nombre varchar(100) not null,
Direccion varchar(500) not null,
Telefono varchar(25) not null,
Email varchar(100) not null,
Cuenta int references Cuentas(Id)
)

go

create table Productos(
Id int primary key identity,
Producto varchar(100) not null,
Descripcion varchar(500) not null,
Cantidad int not null,
Precio decimal(18,2),
Imagen image,
)

go







--Insercciones por defecto

insert into Roles values ('Admin'),('Empleado'),('Cliente')
select * from Roles

go

insert into Cuentas values ('MarcosRestituyo', 'Markito2000'), ('EmpleadoPrueba', '123456'), ('ClientePrueba', '123456')
select * from Cuentas

go

insert into RolCuentas values (1,1), (2,2), (3,3)
select * from RolCuentas

go

insert into Puestos values ('Tecnico'), ('Servicio'), ('Administrador')
select * from Puestos

go

insert into Empleados values ('Marcos Restituyo', '(809) 616-9743', 3, '20175534@itla.edu.do', '001-5426852-8', '2019-08-12', 1), 
('Empleado Prueba', '(809) 727-0854', 1, 'empleadopueba@claro.com', '111-5555555-2', '2019-01-01', 2)
select * from Empleados

go

insert into Clientes values('Cliente Prueba', 'Los guandules C/San francisco #14', '809-838-1965', 'clienteprueba@gmail.com', 3)
select * from Clientes

go
