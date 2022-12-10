use CRUDVENTA
select * from usuario
Create table usuario(
iduser int primary key,
usuario varchar(15),
contraseña varbinary(50)
);
select * from cliente
Create table cliente(
idcliente int primary key identity (1,1),
iduser int,
cedula varchar(14),
nombre varchar(50),
apellido varchar(50),
ocupacion varchar(50),
sexo varchar(5)
);

Create table pedidos(
idpedidos int primary key identity (1,1),
iduser int,
idcliente int,
idarticulo int,
idempleado int
);

Create table factura(
idfactura int primary key identity (1,1),
idcliente int,
idarticulo int,
total money,
descripcion varchar(100),
subtotal money
);



Create table articulo(
idarticulo int primary key identity (1,1),
iduser int,
nombre varchar(50),
tipo varchar(50),
cantidad int, 
precio decimal
);

Create table empleado(
idempleado int primary key identity (1,1),
iduser int,
cedula varchar(14),
nombre varchar(100),
apellido varchar(100),
cargo varchar(50),
tiposamgre char(3)
);