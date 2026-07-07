-- ============================================================
-- Script   : Ventas por cargo
-- Capa     : Gold
-- Objetivo : Calcular el total de ventas generado
--            por cada cargo del equipo
-- Autor    : Teofilo Correa Rojas
-- Fecha    : 6 Julio 2026
-- ============================================================

SELECT
    de.cargo            AS cargo,
    SUM(fv.subtotal)    AS total_de_venta
FROM gold.fact_ventas AS fv
INNER JOIN gold.dim_empleados AS de
    ON fv.empleado_id = de.id
GROUP BY de.cargo
ORDER BY total_de_venta DESC;