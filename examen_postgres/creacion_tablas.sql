create table sucursal(
id_sucursal serial primary key not null,
nombre varchar(100) not null
);

create type nombre_categoria as enum('accion','comedia','drama');

create table categoria(
id_categoria serial primary key not null,
nombre_categoria nombre_categoria
);

create table pelicula(
id_pelicula serial primary key not null,
titulo VARCHAR(100) not null,
genero VARCHAR(100) not null,
director VARCHAR(100) not null,
anio_lanzamiento VARCHAR(100) not null,
disponibilidad VARCHAR(100) not null,
precio int not null,
id_categoria int,
id_inventario int,
foreign key (id_categoria) references categoria(id_categoria),
foreign key (id_inventario) references inventario(id_inventario)
);

create table inventario(
id_inventario serial primary key not null,
id_sucursal serial not null,
foreign key (id_sucursal) references sucursal(id_sucursal)
);

create table cliente(
id_cliente serial primary key not null,
nombre varchar(100) not null,
contacto varchar(20) not null,
direccion varchar(100) not null
);

create table alquiler(
id_alquiler serial primary key not null,
id_cliente int not null,
id_pelicula int not null,
fecha_inicio date not null,
fecha_final date not null,
costo int not null,
id_sucursal int,
foreign key (id_cliente) references cliente(id_cliente),
foreign key (id_pelicula) references pelicula(id_pelicula),
foreign key (id_sucursal) references sucursal(id_sucursal)
);

create table registro_pagos(
id_pago serial primary key not null,
id_alquiler int not null,
id_cliente int not null,
fecha_pago date not null,
pago_total int not null,
id_sucursal int,
foreign key (id_alquiler) references alquiler(id_alquiler),
foreign key (id_cliente) references cliente(id_cliente),
foreign key (id_sucursal) references sucursal(id_sucursal)
);