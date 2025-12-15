SELECT 'Marca' t, COUNT(*) n FROM Marca UNION ALL
SELECT 'Modelo', COUNT(*) FROM Modelo UNION ALL
SELECT 'Ubicacion', COUNT(*) FROM Ubicacion UNION ALL
SELECT 'Ubicacion_Aeropuerto', COUNT(*) FROM Ubicacion_Aeropuerto UNION ALL
SELECT 'Aerolinea', COUNT(*) FROM Aerolinea UNION ALL
SELECT 'Aeropuerto', COUNT(*) FROM Aeropuerto UNION ALL
SELECT 'Avion', COUNT(*) FROM Avion UNION ALL
SELECT 'Aerolinea_Aeropuerto', COUNT(*) FROM Aerolinea_Aeropuerto UNION ALL
SELECT 'Aerolinea_Avion', COUNT(*) FROM Aerolinea_Avion UNION ALL
SELECT 'Tarifa', COUNT(*) FROM Tarifa UNION ALL
SELECT 'Ruta', COUNT(*) FROM Ruta UNION ALL
SELECT 'Vuelo', COUNT(*) FROM Vuelo UNION ALL
SELECT 'Aerolinea_Vuelo', COUNT(*) FROM Aerolinea_Vuelo UNION ALL
SELECT 'Sector_Laboral', COUNT(*) FROM Sector_Laboral UNION ALL
SELECT 'Cargo', COUNT(*) FROM Cargo UNION ALL
SELECT 'Empleado', COUNT(*) FROM Empleado UNION ALL
SELECT 'Asignar_Empleado', COUNT(*) FROM Asignar_Empleado UNION ALL
SELECT 'Clase_Pasaje', COUNT(*) FROM Clase_Pasaje UNION ALL
SELECT 'Pasajero', COUNT(*) FROM Pasajero UNION ALL
SELECT 'Pasaje', COUNT(*) FROM Pasaje UNION ALL
SELECT 'Aerolinea_Pasaje', COUNT(*) FROM Aerolinea_Pasaje;

