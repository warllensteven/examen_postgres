-- 4 CONSULTAS

-- CONSULTA 1
select r.id_sucursal,sum(pago_total) as ingresos_sucursal_total
from registro_pagos r
WHERE r.fecha_pago BETWEEN '2025-05-01' AND '2025-05-31'
group by r.id_sucursal;

-- CONSULTA 2
select r.id_cliente,sum(pago_total) as monto_maximo_pagado
from registro_pagos R
group by r.id_cliente
order by monto_maximo_pagado desc limit 1;

-- CONSULTA 4
select r.id_sucursal,count(id_sucursal) as cantidad_transacciones
from registro_pagos r
group by r.id_sucursal
order by cantidad_transacciones desc limit 2;

-- CONSULTA 5
select p.titulo,p.genero,p.precio
from pelicula p;

-- CONSULTA 6
select *, a.id_pelicula,(select p.titulo 
from pelicula p
where p.id_pelicula = a.id_pelicula) as nombre_pelicula
from alquiler a
where a.id_cliente = 1;

-- CONSULTA 7
select p.titulo,p.genero,p.precio
from pelicula p
where p.precio > 7000;

-- CONSULTA 8
select *
from pelicula p
WHERE p.anio_lanzamiento BETWEEN '2020-01-01' AND '2025-05-31';
