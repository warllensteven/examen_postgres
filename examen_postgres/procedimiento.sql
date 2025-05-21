CREATE procedure reg_pago(
    p_id_cliente INT,
    p_id_pelicula INT,
    p_fecha_inicio TIMESTAMP,
    p_fecha_final TIMESTAMP,
    p_costo INT,
    p_id_sucursal INT
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO alquiler (id_cliente , id_pelicula, fecha_inicio, fecha_final, costo, id_sucursal)
    VALUES (p_id_cliente, p_id_pelicula, p_fecha_inicio, p_fecha_final, p_costo, p_id_sucursal);
END;
$$;

CALL reg_pago(1,1,'2025-05-18','2025-05-19',5000,1);