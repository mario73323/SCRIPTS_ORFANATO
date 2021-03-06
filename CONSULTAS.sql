SELECT
CONCAT(HUERFANO.HUERFANO_NOMBRE,' ',HUERFANO.HUERFANO_APELLIDO) AS Nombres_y_Apellidos,
HUERFANO.HUERFANO_IDENT AS Numero_de_id,
ENFERMEDAD_DISCAPACIDAD.ENFERMEDAD_TIPO AS Enfermedad_Discapacidad,
HISTORIAL_MEDICO.HISTORIAL_DETALLE AS Descripcion
FROM HUERFANO
INNER JOIN HISTORIAL_MEDICO ON HISTORIAL_MEDICO.HISTORIAL_ID=HUERFANO.HISTORIAL_ID
INNER JOIN HISTORIAL_ENFERMEDAD ON HISTORIAL_ENFERMEDAD.HISTORIAL_ID=HISTORIAL_MEDICO.HISTORIAL_ID
INNER JOIN ENFERMEDAD_DISCAPACIDAD ON ENFERMEDAD_DISCAPACIDAD.ENFERMEDAD_ID=HISTORIAL_ENFERMEDAD.ENFERMEDAD_ID;


SELECT HUERFANO.HUERFANO_GENERO AS Genero, COUNT(*) AS Cantidad
FROM HUERFANO
WHERE ESTADO_ID=1
GROUP BY HUERFANO_GENERO;


SELECT
CONCAT(HUERFANO.HUERFANO_NOMBRE,' ',HUERFANO.HUERFANO_APELLIDO) AS Nombres_y_Apellidos,
COUNT(*) AS Cantidad
FROM HUERFANO
INNER JOIN CITA ON CITA.HUERFANO_IDENT=HUERFANO.HUERFANO_IDENT
WHERE HUERFANO.ESTADO_ID=1
GROUP BY CONCAT(HUERFANO.HUERFANO_NOMBRE,' ',HUERFANO.HUERFANO_APELLIDO);


SELECT
ESTADO.ESTADO_DESCRIPCION as Lugar,
COUNT(*) AS Cantidad
FROM ESTADO
INNER JOIN HUERFANO ON HUERFANO.ESTADO_ID=ESTADO.ESTADO_ID
GROUP BY ESTADO.ESTADO_DESCRIPCION;