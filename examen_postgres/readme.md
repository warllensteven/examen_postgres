Proyecto de Base de Datos Movierental
Descripción General
El proyecto Movierental es una base de datos relacional diseñada para gestionar un sistema de alquiler de películas. Incluye tablas para:

Sucursales (sucursal)

Categorías de películas (categoria)

Películas (pelicula)

Inventario (inventario)

Clientes (cliente)

Alquileres (alquiler)

Registros de pagos (registro_pagos)

La base de datos permite registrar alquileres, rastrear pagos y generar reportes de transacciones, ingresos y detalles de películas. El esquema está implementado en PostgreSQL y utiliza características como claves primarias seriales, claves foráneas, un tipo enum para categorías, y un procedimiento almacenado (reg_pago) para registrar alquileres.

Además, se incluyen datos de ejemplo para poblar las tablas y consultas SQL útiles para extraer información significativa.

Requisitos Previos
PostgreSQL versión 9.6 o superior

Cliente PostgreSQL como pgAdmin (opcional)

Editor de texto o IDE para ejecutar el código SQL

Conocimientos básicos de SQL y PostgreSQL

Instrucciones de Instalación y Ejecución
1. Configurar el Entorno PostgreSQL
Asegúrate de tener PostgreSQL instalado y ejecutándose.

Crear una nueva base de datos:


CREATE DATABASE movierental;
Conectarse a la base de datos usando psql o un cliente gráfico:
psql -U postgres -d movierental
2. Copiar el Código SQL
Copia el contenido del archivo movierental.sql (o el código proporcionado) en tu editor de texto o directamente en tu cliente PostgreSQL.

3. Ejecutar el Código SQL
Pega y ejecuta el código SQL completo para:

Crear las tablas (sucursal, categoria, pelicula, inventario, cliente, alquiler, registro_pagos)

Definir el tipo enum para nombre_categoria

Insertar datos de ejemplo

Crear el procedimiento almacenado reg_pago

Ejecutar una llamada de prueba al procedimiento

Ejecutar las consultas proporcionadas

Opción alternativa: ejecutar el archivo SQL directamente
psql -U postgres -d movierental -f movierental.sql
4. Verificación
Verificar que las tablas se hayan creado:

Verificar los datos de ejemplo:

SELECT * FROM cliente;
SELECT * FROM sucursal;
Probar el procedimiento almacenado:


CALL reg_pago(1, 1, '2025-05-20', '2025-05-21', 5000, 1);
Ejecutar las consultas proporcionadas para comprobar los resultados.

Esquema de la Base de Datos
Tabla	Descripción
sucursal	Información de sucursales (id_sucursal, nombre)
categoria	Categorías de películas (id_categoria, nombre_categoria) - tipo enum
pelicula	Detalles de películas (id_pelicula, titulo, genero, etc.)
inventario	Vincula películas a sucursales (id_inventario, id_sucursal)
cliente	Información de clientes (id_cliente, nombre, contacto, dirección)
alquiler	Registros de alquileres (id_alquiler, id_cliente, id_pelicula, etc.)
registro_pagos	Detalles de pagos (id_pago, id_alquiler, fecha_pago, pago_total)

Las claves foráneas aseguran la integridad referencial entre las tablas.

Procedimiento Almacenado: reg_pago
Este procedimiento simplifica el registro de un nuevo alquiler insertando un registro en la tabla alquiler.

Parámetros:
p_id_cliente: ID del cliente

p_id_pelicula: ID de la película

p_fecha_inicio: Fecha de inicio del alquiler

p_fecha_final: Fecha de fin del alquiler

p_costo: Costo del alquiler

p_id_sucursal: ID de la sucursal

