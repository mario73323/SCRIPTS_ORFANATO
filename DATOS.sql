/*Agregando estados del huerfano*/
insert into ESTADO values (1,'En el orfanato');
insert into ESTADO values (2,'Adoptado');
insert into ESTADO values (3,'Trasladado a reformatorio');

/*Agregando una sucursal de la cadena de orfanatos*/
insert into ORFANATO values(0,'Manta-Manabi calle 13 entre Av. 22 y 23',0935647785,'manos_q_ayudan@gmail.com');

/*Creando enfermedades comunes*/
insert into ENFERMEDAD_DISCAPACIDAD values(0,'Asma');
insert into ENFERMEDAD_DISCAPACIDAD values(1,'Discapacidad motriz');
insert into ENFERMEDAD_DISCAPACIDAD values(2,'Discapacidad mental');
insert into ENFERMEDAD_DISCAPACIDAD values(3,'Diabetis');
insert into ENFERMEDAD_DISCAPACIDAD values(4,'Alergia');

/*Creando historiales clinicos*/
insert into HISTORIAL_MEDICO values (0,'El individuo presenta problemas de asma, ha ido en mejora los ultimos años');
insert into HISTORIAL_MEDICO values (1,'El individuo esta desarrollando cuadros de Diabetis, mantener control en alimentacion ademas posee fuertes alergias al polvo');
insert into HISTORIAL_MEDICO values (2,'');
insert into HISTORIAL_MEDICO values (3,'');
insert into HISTORIAL_MEDICO values (4,'');
insert into HISTORIAL_MEDICO values (5,'');
insert into HISTORIAL_MEDICO values (6,'');
insert into HISTORIAL_MEDICO values (7,'');
insert into HISTORIAL_MEDICO values (8,'');
insert into HISTORIAL_MEDICO values (9,'');
insert into HISTORIAL_MEDICO values (10,'');
insert into HISTORIAL_MEDICO values (11,'');
insert into HISTORIAL_MEDICO values (12,'');
insert into HISTORIAL_MEDICO values (13,'');
insert into HISTORIAL_MEDICO values (14,'');

/*Datos para la tabla Historial_enfermedad*/
insert into HISTORIAL_ENFERMEDAD values(0,0);
insert into HISTORIAL_ENFERMEDAD values(3,1);
insert into HISTORIAL_ENFERMEDAD values(4,1);

/*Ingresando los posibles cargos del personal*/
insert into CARGO values (0,'Supervisor');
insert into CARGO values (1,'Auxiliar');
insert into CARGO values (2,'Medico');
insert into CARGO values (3,'Secretaria/o');

/*Ingresando algunos Empleados encargados*/
insert into TRABAJADOR values (0,0,0,131354896,'Rufina','Merchan','Lic. Educacion inicial',1235648531,'rufi@gmail.com');
insert into TRABAJADOR values (1,0,0,131354896,'Estefania','Placencia','Lic. Enfermera',1235468531,'ester@gmail.com');
insert into TRABAJADOR values (2,0,0,131354896,'Khalid','Leon','Lic. Educacion fisica, nutriologo',1465648531,'khale@gmail.com');
insert into TRABAJADOR values (3,2,0,131354896,'Vera','Cabezas','Medico General',48956531,'VeraC@gmail.com');
insert into TRABAJADOR values (4,1,0,131354896,'Yanira','Ubeda','Estudiante universitaria',1235648531,'tyanira@gmail.com');
insert into TRABAJADOR values (5,1,0,131354896,'Esmeralda','Valiente','Trabajadora Social',89358531,'Emeva@gmail.com');
insert into TRABAJADOR values (6,0,0,145698453,'Adelina','Ruz','Profesora Parvularia',78954521,'Aderuz@gmail.com');
insert into TRABAJADOR values (7,0,0,145698453,'Justos','Quiroz','Lic. Secretariado ejecutivo',78564521,'Justosqui@gmail.com');

/*Añadiendo los grupos*/
insert into GRUPO values (1,0,'Lactantes','de 0 a 2 años');
insert into GRUPO values (6,1,'Infantes','de 2 a 6 años');
insert into GRUPO values (0,2,'Niños','de 6 a 11 años');
insert into GRUPO values (2,3,'Adolecentes','de 11 a 15 años');
insert into GRUPO values (7,4,'Fuera del orfanato','Sin rango');

/*Ingresando algunos niños*/
insert into HUERFANO values (12345,0,0,2,1,null,'Diego Luengo',null,'M','23-02-2019');
insert into HUERFANO values (12346,0,2,0,1,null,'Ruben','Casado','M','23-02-2013');
insert into HUERFANO values (12347,0,3,1,1,null,'Anna Maria',null,'F','23-02-2008');
insert into HUERFANO values (12348,0,2,3,1,null,'Saida','Ballesteros','F','23-02-2015');
insert into HUERFANO values (12349,0,0,4,1,null,'Alfredo Carlos',null,'M','23-02-2020');
insert into HUERFANO values (12350,0,1,5,1,null,'Juan','Montilla','M','23-02-2017');
insert into HUERFANO values (12351,0,2,6,1,null,'Ricardo','Zapata','M','13-05-2012');
insert into HUERFANO values (12352,0,3,7,1,null,'Ricardo Arjona',null,'M','18-07-2007');
insert into HUERFANO values (12344,0,4,8,3,null,'Juan Gabriel',null,'M','18-07-2000');
insert into HUERFANO values (12343,0,4,9,3,null,'Maria Beatriz','Cardenas','F','18-07-2004');

/*Citas y observaciones*/
insert into CITA values (0,12346,3,'El paciente ingresa con dificultades para respirar','17-05-2020');
insert into OBSERVACION values (0,0,0,'El paciente no suministro la cantidad adecuada del medicamento respiratorio, reponer medicamento');
insert into CITA values (1,12346,3,'El paciente ingresa con raspaduras a alturas del hombro derecho', '23-06-2020');
insert into OBSERVACION values (1,1,0,'El paciente sufrio una caida leve durante actividad fisica, se ha desinfectado la herida y vendado');
insert into CITA values (2,12349,3,'Paciente ingresa con fiebre y malestares generales en horas de la mañana', '27-07-2020');
insert into OBSERVACION values (2,2,4,'Paciente enfermo de gripe, se adjunta medicamento, se recomienda reposo de 5 a 7 dias');
insert into CITA values (3,12350,3,'Paciente ingresa con leves sintomas de mareo', '29-07-2020');
insert into OBSERVACION values (3,3,5,'Posible cuadro de anemia en el paciente, no tiene el peso adecuado para su edad, mayor control en su alimentacion');
insert into CITA values (4,12351,3,'Cita de control', '30-07-2020');
insert into OBSERVACION values (4,4,6,'Paciente en buenas condiciones de salud');
insert into CITA values (5,12345,3,'Cita de control', '02-08-2020');
insert into OBSERVACION values (5,5,2,'Los medicamentos recetados la ultima cita han mejorado en gran medidad el estado del paciente');

/*Actividades*/
insert into ACTIVIDAD values (0,2,'Actividad deportiva al aire libre FUTBOL','25-01-2020');
insert into ACTIVIDAD values (1,3,'Clase interacctiva IMPORTANCIA DE LA ACTIVIDAD FISICA','30-01-2020');
insert into ACTIVIDAD values (2,4,'Recuentro con ex-compañeros del orfanato','01-02-2020');
insert into ACTIVIDAD values (3,1,'Actividades practicas, manualidades para el control motriz','05/02/2020');
insert into ACTIVIDAD values (4,2,'Orientacion psicologica y educacion en valores','07/02/2020');
insert into ACTIVIDAD values (5,0,'Actividades para el desarrollo motriz','08-02-2020');

/*Actividad_trabajador*/
insert into ACTIVIDAD_TRABAJADOR values (2,0);
insert into ACTIVIDAD_TRABAJADOR values (4,0);
insert into ACTIVIDAD_TRABAJADOR values (2,1);
insert into ACTIVIDAD_TRABAJADOR values (2,2);
insert into ACTIVIDAD_TRABAJADOR values (4,2);
insert into ACTIVIDAD_TRABAJADOR values (5,2);
insert into ACTIVIDAD_TRABAJADOR values (6,3);
insert into ACTIVIDAD_TRABAJADOR values (0,4);
insert into ACTIVIDAD_TRABAJADOR values (1,5);
insert into ACTIVIDAD_TRABAJADOR values (4,5);

/*Adoptantes*/
insert into ADOPTANTE values (0,1454541248,'Joseph','Acosta',094789612,'josh@gmail.com');
insert into ADOPTANTE values (1,1454648948,'Martina','Barrio',095889612,'BarrioM@gmail.com');
insert into ADOPTANTE values (2,1489575648,'Gerard','Bernave',097456423,'Berna@gmail.com');

/*ADOPCION y huerfanos adoptados*/
insert into ADOPCION values (0,0,7,0,'05/06/2015');
insert into ADOPCION values (1,0,7,1,'07/08/2016');
insert into ADOPCION values (2,0,7,2,'05/09/2017');

insert into HUERFANO values (12210,0,4,10,2,0,'Jose Iganacio','Acosta','M','18-07-2015');
insert into HUERFANO values (12211,0,4,11,2,0,'Juan Miguel','Acosta','M','08-09-2014');
insert into HUERFANO values (12212,0,4,12,2,0,'Aitor','Acosta','M','20-01-2016');
insert into HUERFANO values (12213,0,4,13,2,1,'Paola','Barrio','F','08-12-2012');
insert into HUERFANO values (12214,0,4,14,2,2,'Cecilia','Bernave','F','17-03-2009');
