-- insercion clientes
insert into cliente (nombre,contacto,direccion) values ('luis fuentes','3200000000','carrera 1');
insert into cliente (nombre,contacto,direccion) values ('julian rojas','3100000000','carrera 2');
insert into cliente (nombre,contacto,direccion) values ('jose torres','3300000000','carrera 3');
insert into cliente (nombre,contacto,direccion) values ('ada leal','3400000000','carrera 4');
insert into cliente (nombre,contacto,direccion) values ('marlon chacon','3500000000','carrera 5');

-- insercion sucursales
insert into sucursal (nombre) values ('sucursal1');
insert into sucursal (nombre) values ('sucursal2');
insert into sucursal (nombre) values ('sucursal3');
insert into sucursal (nombre) values ('sucursal4');
insert into sucursal (nombre) values ('sucursal5');

-- insercion categoria
insert into categoria (nombre_categoria) values ('accion');
insert into categoria (nombre_categoria) values ('comedia');
insert into categoria (nombre_categoria) values ('drama');

-- insercion de inventario
insert into inventario (id_sucursal) values (1);
insert into inventario (id_sucursal) values (2);
insert into inventario (id_sucursal) values (3);
insert into inventario (id_sucursal) values (4);
insert into inventario (id_sucursal) values (5);

-- insercion peliculas
insert into pelicula (titulo,genero,director,anio_lanzamiento,disponibilidad,precio,id_categoria,id_inventario) values ('vengadores','accion','luis king','2000-01-01','disponible',5000,1,1);
insert into pelicula (titulo,genero,director,anio_lanzamiento,disponibilidad,precio,id_categoria,id_inventario) values ('lucha','accion','fabian escamilla','2001-01-01','disponible',6000,1,2);
insert into pelicula (titulo,genero,director,anio_lanzamiento,disponibilidad,precio,id_categoria,id_inventario) values ('disparos','accion','franco fan','2002-01-01','disponible',5000,1,3);
insert into pelicula (titulo,genero,director,anio_lanzamiento,disponibilidad,precio,id_categoria,id_inventario) values ('peleas','accion','luis cardenas','2003-01-01','disponible',6000,1,4);
insert into pelicula (titulo,genero,director,anio_lanzamiento,disponibilidad,precio,id_categoria,id_inventario) values ('soldaos','accion','brayan leon','2004-01-01','disponible',5000,1,5);
insert into pelicula (titulo,genero,director,anio_lanzamiento,disponibilidad,precio,id_categoria,id_inventario) values ('risas','comedia','el risas','2005-01-01','disponible',8000,1,1);
insert into pelicula (titulo,genero,director,anio_lanzamiento,disponibilidad,precio,id_categoria,id_inventario) values ('payasos','comedia','anderson galvis','2006-01-01','disponible',9000,1,2);
insert into pelicula (titulo,genero,director,anio_lanzamiento,disponibilidad,precio,id_categoria,id_inventario) values ('chistes','comedia','el chistes','2007-01-01','disponible',8000,1,3);
insert into pelicula (titulo,genero,director,anio_lanzamiento,disponibilidad,precio,id_categoria,id_inventario) values ('bromas','comedia','luis comunica','2008-01-01','disponible',9000,1,4);
insert into pelicula (titulo,genero,director,anio_lanzamiento,disponibilidad,precio,id_categoria,id_inventario) values ('circo','comedia','chester','2009-01-01','disponible',8000,1,5);
insert into pelicula (titulo,genero,director,anio_lanzamiento,disponibilidad,precio,id_categoria,id_inventario) values ('separados','drama','luisa martinez','2010-01-01','disponible',5000,1,1);
insert into pelicula (titulo,genero,director,anio_lanzamiento,disponibilidad,precio,id_categoria,id_inventario) values ('divorcio','drama','federica king','2011-01-01','disponible',5000,1,2);
insert into pelicula (titulo,genero,director,anio_lanzamiento,disponibilidad,precio,id_categoria,id_inventario) values ('matrimonio','drama','camila mesa','2012-01-01','disponible',5000,1,3);
insert into pelicula (titulo,genero,director,anio_lanzamiento,disponibilidad,precio,id_categoria,id_inventario) values ('llantos','drama','ada ada','2013-01-01','disponible',5000,1,4);
insert into pelicula (titulo,genero,director,anio_lanzamiento,disponibilidad,precio,id_categoria,id_inventario) values ('lamentos','drama','francis','2014-01-01','disponible',5000,1,5);
insert into pelicula (titulo,genero,director,anio_lanzamiento,disponibilidad,precio,id_categoria,id_inventario) values ('spiderman multiverse','accion','hermanos russo','2023-01-01','disponible',5000,1,5);
insert into pelicula (titulo,genero,director,anio_lanzamiento,disponibilidad,precio,id_categoria,id_inventario) values ('DUNE','accion','hermanos russo','2024-01-01','disponible',10000,1,5);

-- insercion de alquiler
insert into alquiler (id_cliente,id_pelicula,fecha_inicio,fecha_final,costo,id_sucursal) values (1,1,'2025-05-01','2025-05-02',5000,1);
insert into alquiler (id_cliente,id_pelicula,fecha_inicio,fecha_final,costo,id_sucursal) values (2,2,'2025-05-02','2025-05-03',6000,2);
insert into alquiler (id_cliente,id_pelicula,fecha_inicio,fecha_final,costo,id_sucursal) values (3,3,'2025-05-03','2025-05-04',5000,3);
insert into alquiler (id_cliente,id_pelicula,fecha_inicio,fecha_final,costo,id_sucursal) values (4,4,'2025-05-04','2025-05-05',6000,4);
insert into alquiler (id_cliente,id_pelicula,fecha_inicio,fecha_final,costo,id_sucursal) values (5,5,'2025-05-05','2025-05-06',5000,5);
insert into alquiler (id_cliente,id_pelicula,fecha_inicio,fecha_final,costo,id_sucursal) values (1,6,'2025-05-06','2025-05-07',8000,1);
insert into alquiler (id_cliente,id_pelicula,fecha_inicio,fecha_final,costo,id_sucursal) values (2,7,'2025-05-07','2025-05-08',9000,2);
insert into alquiler (id_cliente,id_pelicula,fecha_inicio,fecha_final,costo,id_sucursal) values (3,8,'2025-05-08','2025-05-09',8000,3);
insert into alquiler (id_cliente,id_pelicula,fecha_inicio,fecha_final,costo,id_sucursal) values (4,9,'2025-05-09','2025-05-10',9000,4);
insert into alquiler (id_cliente,id_pelicula,fecha_inicio,fecha_final,costo,id_sucursal) values (5,10,'2025-05-10','2025-05-11',8000,5);
insert into alquiler (id_cliente,id_pelicula,fecha_inicio,fecha_final,costo,id_sucursal) values (1,1,'2025-05-07','2025-05-08',5000,1);

-- insercion registro de pagos
insert into registro_pagos (id_alquiler,id_cliente,fecha_pago,pago_total,id_sucursal) values (1,1,'2025-05-01',5000,1);
insert into registro_pagos (id_alquiler,id_cliente,fecha_pago,pago_total,id_sucursal) values (2,2,'2025-05-02',6000,2);
insert into registro_pagos (id_alquiler,id_cliente,fecha_pago,pago_total,id_sucursal) values (3,3,'2025-05-03',5000,3);
insert into registro_pagos (id_alquiler,id_cliente,fecha_pago,pago_total,id_sucursal) values (4,4,'2025-05-04',6000,4);
insert into registro_pagos (id_alquiler,id_cliente,fecha_pago,pago_total,id_sucursal) values (5,5,'2025-05-05',5000,5);
insert into registro_pagos (id_alquiler,id_cliente,fecha_pago,pago_total,id_sucursal) values (6,1,'2025-05-06',8000,1);
insert into registro_pagos (id_alquiler,id_cliente,fecha_pago,pago_total,id_sucursal) values (7,2,'2025-05-07',9000,2);
insert into registro_pagos (id_alquiler,id_cliente,fecha_pago,pago_total,id_sucursal) values (8,3,'2025-05-08',8000,3);
insert into registro_pagos (id_alquiler,id_cliente,fecha_pago,pago_total,id_sucursal) values (9,4,'2025-05-09',9000,4);
insert into registro_pagos (id_alquiler,id_cliente,fecha_pago,pago_total,id_sucursal) values (10,5,'2025-05-10',5000,5);
insert into registro_pagos (id_alquiler,id_cliente,fecha_pago,pago_total,id_sucursal) values (11,1,'2025-07-08',5000,1);