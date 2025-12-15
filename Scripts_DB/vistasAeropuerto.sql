
/*
 Ranking de Clientes 

 pregunta: ¿Quiénes son nuestros clientes más valiosos? ¿Debemos crear un programa de lealtad?

*/

CREATE VIEW VW_Ranking_Pasajeros_Valor
AS
SELECT
    pa.id_pasajero,
    CONCAT(pa.nombre, ' ', pa.apellido) AS PasajeroNombreCompleto,
    pa.DNI,
    COUNT(p.id_pasaje) AS CantidadVuelos,
    SUM(r.precio + cp.precio) AS GastoTotal,
    ROW_NUMBER() OVER (ORDER BY SUM(r.precio + cp.precio) DESC) AS RankingPorGasto
FROM
    Pasajero AS pa
JOIN
    Pasaje AS p ON pa.id_pasajero = p.id_pasajero
JOIN
    Vuelo AS v ON p.id_vuelo = v.id_vuelo
JOIN
    Ruta AS r ON v.id_ruta = r.id_ruta
JOIN
    Clase_Pasaje AS cp ON p.id_clase_pasaje = cp.id_clase_pasaje
GROUP BY
    pa.id_pasajero,
    pa.nombre,
    pa.apellido,
    pa.DNI;
GO





/*
 Análisis de venta por clase

 pregunta: ¿La gente compra "Primera Clase" o solo
            vendemos "Económica"? ¿Dónde deberíamos
            enfocar las promociones?
*/
CREATE VIEW VW_Demanda_Por_Clase
AS
SELECT
    cp.nombre AS NombreClase,
    COUNT(p.id_pasaje) AS CantidadPasajes,
    SUM(r.precio + cp.precio) AS RecaudacionTotal_Clase
FROM
    Pasaje AS p
JOIN
    Clase_Pasaje AS cp ON p.id_clase_pasaje = cp.id_clase_pasaje
JOIN
    Vuelo AS v ON p.id_vuelo = v.id_vuelo
JOIN
    Ruta AS r ON v.id_ruta = r.id_ruta
GROUP BY
    cp.nombre;
GO



/*
 Ranking de Rentabilidad por Ruta

 pregunta: ¿cuáles son nuestras rutas más rentables y cuáles son 
		    nuestrasrutas "perro" menos rentables?
*/
CREATE VIEW VW_Rentabilidad_Por_Ruta_Top15
AS
SELECT
    Ranking.id_ruta,
    Ranking.AeropuertoOrigen,
    Ranking.AeropuertoDestino,
    Ranking.RecaudacionTotalRuta,
    Ranking.TotalPasajeros,
    Ranking.TotalHorasVoladas,
    Ranking.IngresoPorHoraDeVuelo
FROM (
    SELECT
        r.id_ruta,
        Origen.nombre AS AeropuertoOrigen,
        Destino.nombre AS AeropuertoDestino,
        SUM(r.precio + cp.precio) AS RecaudacionTotalRuta,
        COUNT(p.id_pasaje) AS TotalPasajeros,
        SUM(r.duracion_horas) AS TotalHorasVoladas,
        CASE WHEN SUM(r.duracion_horas) = 0 THEN 0
             ELSE SUM(r.precio + cp.precio) / SUM(r.duracion_horas)
        END AS IngresoPorHoraDeVuelo,
        

        ROW_NUMBER() OVER (ORDER BY      
            CASE WHEN SUM(r.duracion_horas) = 0 THEN 0      -- para evitar la division por 0 sin funciones raras
                 ELSE SUM(r.precio + cp.precio) / SUM(r.duracion_horas)
            END DESC
        ) AS Fila
    FROM
        Pasaje AS p
    JOIN
        Vuelo AS v ON p.id_vuelo = v.id_vuelo
    JOIN
        Ruta AS r ON v.id_ruta = r.id_ruta
    JOIN
        Clase_Pasaje AS cp ON p.id_clase_pasaje = cp.id_clase_pasaje
    JOIN
        Aeropuerto AS Origen ON r.id_aeropuerto_origen = Origen.id_aeropuerto
    JOIN
        Aeropuerto AS Destino ON r.id_aeropuerto_destino = Destino.id_aeropuerto
    GROUP BY
        r.id_ruta,
        Origen.nombre,
        Destino.nombre
) AS Ranking
WHERE
    Ranking.Fila <= 15; 
GO



/*

 Rendimiento y Rentabilidad por Modelo de Avión

 Pregunta de Negocio: ¿Qué modelos de avión son los más usados?

*/

CREATE VIEW VW_Rendimiento_Avion_Modelo
AS
SELECT
    ma.marca AS MarcaAvion,
    m.modelo AS ModeloAvion,
    COUNT(DISTINCT p.id_pasaje) AS TotalPasajerosTransportados,
    SUM(r.precio + cp.precio) AS RecaudacionTotalGenerada,
    COUNT(DISTINCT v.id_vuelo) AS CantidadVuelosOperados
FROM
    Pasaje AS p
JOIN
    Vuelo AS v ON p.id_vuelo = v.id_vuelo
JOIN
    Ruta AS r ON v.id_ruta = r.id_ruta
JOIN
    Clase_Pasaje AS cp ON p.id_clase_pasaje = cp.id_clase_pasaje
JOIN
    Aerolinea_Vuelo AS av ON v.id_vuelo = av.id_vuelo
JOIN
    Aerolinea AS ae ON av.id_aerolinea = ae.id_aerolinea
JOIN
    Aerolinea_Avion AS aav ON ae.id_aerolinea = aav.id_aerolinea
JOIN
    Avion AS a ON aav.id_avion = a.id_avion
JOIN
    Modelo AS m ON a.id_modelo = m.id_modelo
JOIN
	Marca AS ma ON a.id_marca = ma.id_marca
GROUP BY
    ma.marca,
    m.modelo;
GO



/*

 Ranking de Socios (Aerolíneas)

 pregunta: ¿qué aerolínea opera más vuelos y transporta
            más pasajeros?
*/
CREATE VIEW VW_Rendimiento_Aerolinea
AS
SELECT
    ae.nombre AS Aerolinea,
    COUNT(DISTINCT v.id_vuelo) AS CantidadVuelos,
    SUM(r.duracion_horas) AS TotalHorasDeVuelo,
    COUNT(p.id_pasaje) AS TotalPasajeros,
    SUM(r.precio + cp.precio) AS RecaudacionTotal
FROM
    Pasaje AS p
JOIN
    Vuelo AS v ON p.id_vuelo = v.id_vuelo
JOIN
    Ruta AS r ON v.id_ruta = r.id_ruta
JOIN
    Clase_Pasaje AS cp ON p.id_clase_pasaje = cp.id_clase_pasaje
JOIN
    Aerolinea_Vuelo AS av ON v.id_vuelo = av.id_vuelo
JOIN
    Aerolinea AS ae ON av.id_aerolinea = ae.id_aerolinea
GROUP BY
    ae.nombre;
GO





/*

Análisis de Tendencia Mensual 

 pregunta: ¿Estamos creciendo? ¿Cómo se comparan las
            ventas de este mes con las del año pasado?

*/
CREATE VIEW VW_KPI_Tendencia_Mensual
AS
SELECT
    YEAR(v.fecha_hora_salida) AS Anio,
    MONTH(v.fecha_hora_salida) AS Mes,
    SUM(r.precio + cp.precio) AS RecaudacionTotal,
    COUNT(p.id_pasaje) AS CantidadPasajes,
    COUNT(DISTINCT v.id_vuelo) AS CantidadVuelos
FROM
    Pasaje AS p
JOIN
    Vuelo AS v ON p.id_vuelo = v.id_vuelo
JOIN
    Ruta AS r ON v.id_ruta = r.id_ruta
JOIN
    Clase_Pasaje AS cp ON p.id_clase_pasaje = cp.id_clase_pasaje
GROUP BY
    YEAR(v.fecha_hora_salida),
    MONTH(v.fecha_hora_salida);
GO



/*

Mapa de Rendimiento de Aeropuertos

 Pregunta de Negocio: ¿Cuáles son nuestros aeropuertos de origen 
                      más importantes en términos de ingresos y tráfico
 Visualización: Un mapa de burbujas

*/
CREATE VIEW VW_Geo_Aeropuertos_KPI
AS
SELECT
    a.nombre AS NombreAeropuerto,
    ua.ciudad AS Ciudad,
    ua.pais AS Pais,
    ua.latitud,
    ua.longitud,
    COUNT(p.id_pasaje) AS TotalPasajeros_Origen,
    SUM(r.precio + cp.precio) AS RecaudacionTotal_Origen
FROM
    Aeropuerto AS a
JOIN
    Ubicacion_Aeropuerto AS ua ON a.id_ubicacion_aeropuerto = ua.id_ubicacion_aeropuerto
LEFT JOIN
    Ruta AS r ON a.id_aeropuerto = r.id_aeropuerto_origen
LEFT JOIN
    Vuelo AS v ON r.id_ruta = v.id_ruta
LEFT JOIN
    Pasaje AS p ON v.id_vuelo = p.id_vuelo
LEFT JOIN
    Clase_Pasaje AS cp ON p.id_clase_pasaje = cp.id_clase_pasaje
GROUP BY
    a.nombre,
    ua.ciudad,
    ua.pais,
    ua.latitud,
    ua.longitud;
GO




/*

 Mapa de Flujo de Rutas (Mapa de Arcos)

 Pregunta de Negocio: ¿Cuál es nuestra red de rutas completa? 

 Visualización: Un Mapa de Flujo que dibuja líneas entre
                aeropuertos. El grosor de la línea puede
                ser el Total de Pasajeros.

*/
CREATE VIEW VW_Geo_Flujo_Rutas
AS
SELECT
    r.id_ruta,
    Origen.nombre AS Origen_Nombre,
    Destino.nombre AS Destino_Nombre,
    Origen_Geo.latitud AS Origen_Latitud,
    Origen_Geo.longitud AS Origen_Longitud,
    Destino_Geo.latitud AS Destino_Latitud,
    Destino_Geo.longitud AS Destino_Longitud,
    COUNT(p.id_pasaje) AS TotalPasajeros,
    SUM(r.precio + cp.precio) AS RecaudacionTotalRuta
FROM
    Ruta AS r
JOIN
    Aeropuerto AS Origen ON r.id_aeropuerto_origen = Origen.id_aeropuerto
JOIN
    Ubicacion_Aeropuerto AS Origen_Geo ON Origen.id_ubicacion_aeropuerto = Origen_Geo.id_ubicacion_aeropuerto
JOIN
    Aeropuerto AS Destino ON r.id_aeropuerto_destino = Destino.id_aeropuerto
JOIN
    Ubicacion_Aeropuerto AS Destino_Geo ON Destino.id_ubicacion_aeropuerto = Destino_Geo.id_ubicacion_aeropuerto
LEFT JOIN
    Vuelo AS v ON r.id_ruta = v.id_ruta
LEFT JOIN
    Pasaje AS p ON v.id_vuelo = p.id_vuelo
LEFT JOIN
    Clase_Pasaje AS cp ON p.id_clase_pasaje = cp.id_clase_pasaje
GROUP BY
    r.id_ruta,
    Origen.nombre,
    Destino.nombre,
    Origen_Geo.latitud,
    Origen_Geo.longitud,
    Destino_Geo.latitud,
    Destino_Geo.longitud;
GO