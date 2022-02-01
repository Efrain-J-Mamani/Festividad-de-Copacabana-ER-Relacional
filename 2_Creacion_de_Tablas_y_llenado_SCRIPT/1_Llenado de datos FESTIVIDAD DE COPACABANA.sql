

                    ---------------------------------------------------------
                    --   LLENADO DE TABLAS de "FESTIVIDAD DE COPACABANA"   --
                    ---------------------------------------------------------

----------------------------------------------
-- 				  ATENCION					--
-- 											--
-- 	Los datos solo son ALGUNOS como ejemplo --
-- 	para el presente proyecto.				--
--											--
----------------------------------------------

		
						
-- Tabla PERSONA:

-- insert into persona values (ci, nombres, paterno, materno, fecha_nac, sexo);

insert into persona values (8456373, 'Lucas', 'Veles','Lupe','1983-08-23','Masculino' );
insert into persona values (8734658, 'Mariela','Cardenas', 'Sony','1970-08-24','Femenino');
insert into persona values (9837463, 'Carlos','Chambi','Ramos','1987-04-23','Masculino');
insert into persona values (8659302, 'Martin','Valencia','Dell','2001-09-24', 'Masculino');
insert into persona values (9837465, 'Pedro','Castro','Vaio','1999-04-07', 'Masculino');

insert into persona values (3457829, 'Carla','Lopez','Sql','2000-06-23','Femenino');
insert into persona values (8364528, 'Javier','Chipana','Martin','1988-07-24','Masculino');
insert into persona values (2938466, 'Maribel','Marquez','Pancho','2000-02-26','Femenino');
insert into persona values (8384742, 'Julio','Quispe','Pavon','2001-08-23', 'Masculino');
insert into persona values (2836462, 'Juan Pedro','Quisbert','Tube','1986-06-05','Masculino');



------------------------------------------------------------------------------------
--                            Tablas de FIESTAS:                                  --
------------------------------------------------------------------------------------

-- FESTIVIDAD

-- insert into festividad values (id_festividad, nombre, fecha_fest, lugar)

insert into festividad values (10, 'Fiesta de La Candelaria','02-02','Copacabana');
insert into festividad values (20, 'Fiesta de la cruz','05-03','Copacabana');
insert into festividad values (30, 'Semana Santa','04-16','Copacabana');
insert into festividad values (50, 'Koya Raymi','09-21','Isla de Coati-Luna');
insert into festividad values (60, 'Fiesta Copacabana','08-04','Plaza 2 de Febrero');
insert into festividad values (70, 'Festejo de la Policía','12-05','Plaza 2 de Febrero');



-- LOCAL_FIESTA

-- insert into local_fiesta values (id_local,nombre,direccion)

insert into local_fiesta values (100, 'Salon Candelaria','Av. Michael  Perez #100');
insert into local_fiesta values (101, 'Salon Titikaka','Av. 16 de Julio #1120');
insert into local_fiesta values (102, 'Salon Del Lago','Calle Pando #700');
insert into local_fiesta values (103, 'Salon Inca','Calle 3 de mayo  Perez #230');
insert into local_fiesta values (104, 'Salon Sucre','Av. Maule mejia #452');



-- CONJUNTO_MUSICAL

-- insert into conjunto_musical values (id_musical, nombre, tipo)

insert into conjunto_musical values (200,'Mulata','Orquesta');
insert into conjunto_musical values (201,'Los Flamencos','Banda');
insert into conjunto_musical values (202,'Potencia Juvenil','Banda');
insert into conjunto_musical values (203,'Maracumbia','Orquesta');
insert into conjunto_musical values (204,'Internacionales','Banda');



-- ES_PASANTE

-- insert into es_pasante values (ci, id_festividad, id_local, id_musical, fecha_ini, fecha_fin)

insert into es_pasante values (4431106,10,101,200,'2010-02-02','2010-02-07');
insert into es_pasante values (4587467,20,103,205,'2010-05-03','2010-05-06');
insert into es_pasante values (5437463,20,106,210,'2013-05-03','2013-05-06');
insert into es_pasante values (4556373,10,109,215,'2010-02-02','2010-02-27');
insert into es_pasante values (5433722,50,112,203,'2010-09-21','2010-09-22');

insert into es_pasante values (5465702,60,102,206,'2010-08-04','2010-08-06');
insert into es_pasante values (4573712,70,104,209,'2010-12-05','2010-12-06');
insert into es_pasante values (3487772,10,106,212,'2011-02-02','2011-02-07');
insert into es_pasante values (6490722,20,108,215,'2011-05-03','2011-05-06');
insert into es_pasante values (4434792,30,110,205,'2012-04-16','2012-04-23');



---------------------------------------------------------------------------------------
--                            Tablas de DIVERSIONES:                                 --
---------------------------------------------------------------------------------------

-- DIVERSION

-- insert into diversion values(id_diversion, nombre, costo, edad_max, edad_min)

insert into diversion values(1,'paseo canoa',20,40,10);           
insert into diversion values(2,'motos',15,45,10);   
insert into diversion values(3,'canchitas',4,80,5);   
insert into diversion values(4,'pezca',9,80,8);   
insert into diversion values(5,'paseo bote',20,50,6);   
insert into diversion values(6,'wally de playa',30,60,10);
insert into diversion values(7,'paseo barco',30,55,5);


-- ENCARGADO

-- insert into encargado values(ci_encargado, sueldo, id_diversion)

insert into encargado values(9123463,1000,3);           
insert into encargado values(8456302,1500,1);   
insert into encargado values(9789465,1200,2);   
insert into encargado values(3123829,1100,4);   
insert into encargado values(8456528,2000,7);   
insert into encargado values(2123466,1800,6);
insert into encargado values(8876742,1600,5);


-- SE_DIVIERTE

-- insert into Se_divierte values(ci, id_diversion)

insert into Se_divierte values(2938466,2);           
insert into Se_divierte values(9485893,3);   
insert into Se_divierte values(2891387,1);   
insert into Se_divierte values(9285374,7);   
insert into Se_divierte values(1234121,5);

insert into Se_divierte values(8463797,4);
insert into Se_divierte values(1231115,7);   
insert into Se_divierte values(1231116,4);   
insert into Se_divierte values(1231148,2);   
insert into Se_divierte values(1231146,1);



-- EQUIPAMIENTO

-- insert into equipamiento values(id_equip, nombre)

insert into equipamiento values(1,'salvavidas pequenos');           
insert into equipamiento values(2,'gasolina');   
insert into equipamiento values(3,'trapo de limpieza');   
insert into equipamiento values(4,'balon');   
insert into equipamiento values(5,'remos');
 


-- TIENE_EQUIP

-- insert into tiene_equip values(id_diversion, id_equip)

insert into tiene_equip values(1,1);           
insert into tiene_equip values(2,6);   
insert into tiene_equip values(3,3);   
insert into tiene_equip values(4,7);   
insert into tiene_equip values(4,8);
   
insert into tiene_equip values(6,4);
insert into tiene_equip values(7,9);   
insert into tiene_equip values(1,5);   
insert into tiene_equip values(2,3);
insert into tiene_equip values(5,1);


-- CONFITURA

-- insert into confitura values(id_confi, nombre, precio)

insert into confitura values(1,'pasancalla dulce',5);           
insert into confitura values(2,'aba seca',3);   
insert into confitura values(3,'higo seco',6);   
insert into confitura values(4,'pasas',5);  
insert into confitura values(5,'chancaca',4);   


-- insert into confitura values(9,'algodon de azucar',5);
-- insert into confitura values(10,'pudin de chocolate',8);

-- PUESTO_VENTA

-- insert into puesto_venta values(id_puesto, nombre, dirección)

insert into puesto_venta values(1,'tienda milagritos','calle junin #33');           
insert into puesto_venta values(2,'supermarket pepe grillo','calle mercedez #187');   
insert into puesto_venta values(3,'expendio mediterraneo','calle aurora #536');   
insert into puesto_venta values(4,'tienda amiga copacabana','calle gomes #321');   
insert into puesto_venta values(5,'supermarket pepe grillo','calle venegas #456');   



-- SE_VENDE

-- insert into se_vende values(id_confi, id_puesto)

insert into se_vende values(1,2);           
insert into se_vende values(8,3);   
insert into se_vende values(5,1);   
insert into se_vende values(4,7);   
insert into se_vende values(5,5);   



-- COMPRA

-- insert into compra values(ci, id_confi , id_puesto, cantidad)

insert into compra values(8659302,2,4,12);          
insert into compra values(8364528,5,5,3);   
insert into compra values(9837573,4,4,6);   
insert into compra values(1228263,7,3,15);   
insert into compra values(2213545,1,1,11);



-- BOTE

-- insert into bote values(id_bote, nombre, disponibilidad, capacidad, costo_alquiler, id_diversion, ci_propietario)

insert into bote values(1,'juan III','disponible',20,30,5,2143462);           
insert into bote values(2,'copacabana tour','no disponible',15,20,7,9999893);   
insert into bote values(3,'el salpicon','disponible',10,35,5,2888429);   
insert into bote values(4,'dorado','no disponible',15,40,7,9777322);   
insert into bote values(5,'gloria','disponible',10,20,5,2666382);


------------------------------------------------------------------------------------
--                       Tablas de HOTELES O ALBERGUES:                           --
------------------------------------------------------------------------------------

-- INFRAESTRUCTURA_HOSPEDAJE

-- insert into INFRAESTRUCTURA_HOSPEDAJE values (id_infra, nombre, dirección, tipo_albergue, categoria, h_atencion)

insert into INFRAESTRUCTURA_HOSPEDAJE values (111,'Hotel Gloria','Av. 16 de Julio Nro 67','Hotel','3 estrellas',24);
insert into INFRAESTRUCTURA_HOSPEDAJE values (112,'Hotel Utama','Calle Michel Perez Nro 40','Hotel','2 estrellas',24);
insert into INFRAESTRUCTURA_HOSPEDAJE values (113,'Hotel Wendy Mar','Av. 16 de Julio SN','Hotel','2 estrellas',24);
insert into INFRAESTRUCTURA_HOSPEDAJE values (114,'Hotel Lago Azul','Av. Costanera Nro 13','Hotel','3 estrellas',24);
insert into INFRAESTRUCTURA_HOSPEDAJE values (115,'Hotel Onkel Inn Torres de Copacabana','Av. Costanera Nro 257','Hotel','3 estrellas',24);


-- HABITACION

-- insert into HABITACION values (id_hab, tipo, costo, estado, id_infra)

--hotel 1
insert into HABITACION values (222,'SINGLE',300,'LIBRE',111);
insert into HABITACION values (223,'SINGLE',300,'LIBRE',111);
insert into HABITACION values (224,'SINGLE',300,'LIBRE',111);
insert into HABITACION values (225,'SINGLE',300,'LIBRE',111);
insert into HABITACION values (226,'SINGLE',300,'LIBRE',111);

insert into HABITACION values (237,'DOBLE',500,'OCUPADO',111);
insert into HABITACION values (238,'TWIN',550,'OCUPADO',111);
insert into HABITACION values (239,'TRIPLE',650,'LIBRE',111);
insert into HABITACION values (240,'CUADRUPLE',1000,'LIBRE',111);
insert into HABITACION values (241,'OTROS',1500,'LIBRE',111);


-- SE_HOSPEDA

-- insert into SE_HOSPEDA values (id_infra,id_hab,ci, fecha_ingreso)

--h1
insert into SE_HOSPEDA values (111,227,8463792,'07-10-2015');
insert into SE_HOSPEDA values (111,228,8345267,'02-10-2015');
insert into SE_HOSPEDA values (111,229,4536279,'03-11-2015');
insert into SE_HOSPEDA values (111,230,8764538,'01-10-2015');
insert into SE_HOSPEDA values (111,235,7239173,'05-10-2015');

insert into SE_HOSPEDA values (111,236,9384325,'18-10-2015');
insert into SE_HOSPEDA values (111,237,8456373,'10-10-2015');
insert into SE_HOSPEDA values (111,237,8734658,'10-10-2015');

--h2
insert into SE_HOSPEDA values (112,245,9837463,'01-10-2015');
insert into SE_HOSPEDA values (112,246,8659302,'22-10-2015');



-- RESERVA

-- insert into RESERVA values (id_infra,id_hab,ci, fecha_reserva)  falta ci

--h1
insert into RESERVA values (111,222,7847501,'06-10-2015');
insert into RESERVA values (111,223,7847502,'01-10-2015');
insert into RESERVA values (111,226,7847503,'02-11-2015');
insert into RESERVA values (111,231,7847504,'01-10-2015');
insert into RESERVA values (111,235,7239173,'04-10-2015');

insert into RESERVA values (111,236,9384325,'18-10-2015');
insert into RESERVA values (111,237,8456373,'10-10-2015');
insert into RESERVA values (111,237,8734658,'10-10-2015');
insert into RESERVA values (111,238,7847505,'10-10-2015');

--h2
insert into RESERVA values (112,245,9837463,'01-10-2015');



--  SERVICIO

-- insert into SERVICIO values (id_servicio, nombre, costo, tipo_servicio)

insert into SERVICIO values (1,'Desayuno',10,'Alimentos & Bebidas');
insert into SERVICIO values (2,'Desayuno y alzo o cena',20,'Alimentos & Bebidas');
insert into SERVICIO values (3,'Desayuno, alzo y cena',30,'Alimentos & Bebidas');
insert into SERVICIO values (4,'Otros alimentos cafe, jugos...',10,'Alimentos & Bebidas');
insert into SERVICIO values (5,'Servicios de comunicacion',50,'Centro de negocios');



-- UTILIZA_SER

-- insert into UTILIZA_SER values (id_servicio, id_hab, horas, fecha_ser)

--h1
insert into UTILIZA_SER values (1,227,0,'07-10-2015');
insert into UTILIZA_SER values (3,229,0,'04-11-2015');
insert into UTILIZA_SER values (1,230,0,'02-10-2015');
insert into UTILIZA_SER values (4,227,0,'08-10-2015');
insert into UTILIZA_SER values (5,229,2,'04-11-2015');

insert into UTILIZA_SER values (6,230,2,'02-10-2015');
insert into UTILIZA_SER values (2,236,0,'18-10-2015');
insert into UTILIZA_SER values (3,237,0,'10-10-2015');
insert into UTILIZA_SER values (4,236,0,'19-10-2015');
insert into UTILIZA_SER values (5,237,1,'11-10-2015');



-- OFRECE_SERVICIO

-- insert into OFRECE_SERVICIO values (id_infra, id_servicio)

--h1
insert into OFRECE_SERVICIO values (111,1);
insert into OFRECE_SERVICIO values (111,2);
insert into OFRECE_SERVICIO values (111,3);
insert into OFRECE_SERVICIO values (111,4);
insert into OFRECE_SERVICIO values (111,5);

insert into OFRECE_SERVICIO values (111,6);
insert into OFRECE_SERVICIO values (111,7);
insert into OFRECE_SERVICIO values (111,8);
insert into OFRECE_SERVICIO values (111,9);
insert into OFRECE_SERVICIO values (111,10);



--  FACTURA 

-- insert into FACTURA values (id_factura, fecha_fac, id_hab)

--h1
insert into FACTURA values (1111,'10-10-2015',227);
insert into FACTURA values (1112,'05-10-2015',228);
insert into FACTURA values (1113,'04-11-2015',229);
insert into FACTURA values (1114,'02-10-2015',230);
insert into FACTURA values (1115,'26-10-2015',235);

insert into FACTURA values (1117,'16-10-2015',237);

--h2
insert into FACTURA values (1119,'07-10-2015',245);
insert into FACTURA values (1120,'24-10-2015',246);
insert into FACTURA values (1121,'05-11-2015',247);
insert into FACTURA values (1125,'19-10-2015',257);



------------------------------------------------------------------------------------
--                         Tablas de LUGARES TURISTICOS:                          --
------------------------------------------------------------------------------------

-- LUGAR_TURISTICO

-- insert into Lugar_Turistico values (id_lugar, nombre, direccion)

insert into Lugar_Turistico values (2100,'plaza mayor','Copacabana');
insert into Lugar_Turistico values (2101,'lago titicaca','Copacabana');
insert into Lugar_Turistico values (2102,'bahia copacabana','Copacabana');
insert into Lugar_Turistico values (2103,'Basilica de copacabana','Copacabana');
insert into Lugar_Turistico values (2104,'Sahuiña','Sur de Copacabana');



-- VISITA

-- insert into Visita values (ci, id_lugar, fecha_v)

insert into Visita values (1231010, 2101, '25/09/15');
insert into Visita values (1231102, 2102,'25/09/15');
insert into Visita values (1231103, 2103,'25/09/15');
insert into Visita values (1231104, 2101,'25/10/15');
insert into Visita values (1231105, 2102,'15/09/15');

insert into Visita values (1231106, 2103,'25/07/15');
insert into Visita values (1231107, 2101,'05/09/15');
insert into Visita values (1231108, 2102,'15/09/15');
insert into Visita values (1231109, 2103,'5/09/15');
insert into Visita values (1231111, 2101,'5/09/15');



-- AGENCIA_TURISTICA

-- insert into AGENCIA_TURISTICA values(id_agencia, nombre, direccion, telefono)

insert into AGENCIA_TURISTICA values(121,'Andes Amazonia Internacional','Av.6 de agosto-Copacabana',71946911);
insert into AGENCIA_TURISTICA values(122,'Colectur Touristic Transportation','Av.16 de Julio-Copacabana',86225540);
insert into AGENCIA_TURISTICA values(123,'The cupula','Copacabana',74634657);
insert into AGENCIA_TURISTICA values(124,'Lago titicaca','copacabana',7936579);
insert into AGENCIA_TURISTICA values(125,'Hostal la cupula','Michel Perez-copacaban',28622029);



-- PAQUETE_TURISTICO

-- insert into paquete_turistico values(id_paquete, nombre, categoria, id_agencia)

insert into paquete_turistico values(201,'Paseo calvario','premium',121);
insert into paquete_turistico values(202,'viajes combinados','Normal',127);
insert into paquete_turistico values(203,'Larga distancia a pie','premium',124);
insert into paquete_turistico values(204,'Larga distancia en bus','premium',121);
insert into paquete_turistico values(205,'paseo terrestre','estandar',122);



-- OFRECE_LUGAR

-- insert into Ofrece_lugar values(id_paquete, id_lugar)

insert into Ofrece_lugar values(205, 2100);

insert into Ofrece_lugar values(206, 2101);
insert into Ofrece_lugar values(210, 2101);
insert into Ofrece_lugar values(212, 2101);

insert into Ofrece_lugar values(209, 2102);
insert into Ofrece_lugar values(206, 2102);
insert into Ofrece_lugar values(210, 2102);
insert into Ofrece_lugar values(212, 2102);

insert into Ofrece_lugar values(201, 2103);
insert into Ofrece_lugar values(211, 2103);



-- TIENE_SERVICIO

-- insert into Tiene_servicio values(id_paquete, id_servicio)

insert into Tiene_servicio values(201,1);
insert into Tiene_servicio values(203,1);
insert into Tiene_servicio values(207,1);
insert into Tiene_servicio values(203,2);
insert into Tiene_servicio values(207,2);



-- LUGAR_AGENCIA_GUIA

-- insert into Lugar_agencia_guia values (ci_guia, id_lugar, id_agencia, fecha, hora)

insert into Lugar_agencia_guia values (8112401,2103, 121,'01/03/15', '10:00');
insert into Lugar_agencia_guia values (8112402,2105, 121,'01/03/15', '10:00');
insert into Lugar_agencia_guia values (8112403,2107, 121,'01/03/15', '10:00');
insert into Lugar_agencia_guia values (8112404,2112, 121,'01/03/15', '08:00');
insert into Lugar_agencia_guia values (8112405,2103, 121,'01/03/15', '08:00');

insert into Lugar_agencia_guia values (8112406,2107, 121,'05/03/15', '10:00');
insert into Lugar_agencia_guia values (8112407,2100, 122,'05/07/15', '10:00');
insert into Lugar_agencia_guia values (8112408,2100, 122,'07/09/15', '10:00');
insert into Lugar_agencia_guia values (8112409,2102, 123,'27/06/15', '13:00');
insert into Lugar_agencia_guia values (8112410,2102, 123,'27/06/15', '10:00');



-- TIENE_INFRA

-- insert into Tiene_infra  values (id_lugar, id_infra)

insert into Tiene_infra  values (2100, 111);
insert into Tiene_infra  values (2100,112);
insert into Tiene_infra  values (2100,113);

insert into Tiene_infra  values (2113,114);
insert into Tiene_infra  values (2113,115);



-- CENTRO_SALUD

-- insert into Centro_salud  values (id_centro, nombre, direccion, telefono, tipo_nosoc, id_lugar)

insert into Centro_salud  values (1,'Centro de Salud Pacasa','copacabana', 2234567,'Puesto de salud',2102);
insert into Centro_salud  values (2,'Virgen de copacabna','copacabana', 2234569,'Centro de salud',2100);
insert into Centro_salud  values (3,'Calvario','Calvario', 2235496,'Puesto de salud',2105);
insert into Centro_salud  values (4,'Cazani','Sur de Copacabana ', 2235496,'Puesto de salud',2113);



-- LUGAR_BENDICION

-- insert into Lugar_bendicion values (id_bendicion, nombre_lug,  disponibilidad, ci_yatiri, id_lugar) falta

insert into Lugar_bendicion values (101,'Don Manuel','Libre', 8112401, 2105);
insert into Lugar_bendicion values (102,'Don Ciprico','Libre', 8112402, 2105);
insert into Lugar_bendicion values (103,'Ritos','Ocupado', 8112403, 2105);
insert into Lugar_bendicion values (104,'Leyendas','Ocupado', 8112404, 2105);
insert into Lugar_bendicion values (105,'Mitos','Libre', 8112405, 2105);



-- MUSEO

-- insert into Museo values (id_mueso, nombre,horario_apertura, direccion, id_lugar)

insert into Museo values (01, 'Virgen de copacabana', '8:00-12:00 a.m.y 2:30-5:30 p.m.', 'centro-copacabana',2100);
insert into Museo values (02, 'museo del poncho', '10:30a.m.-17:00p.m.', 'este-copacabana',2102);
insert into Museo values (03, 'Arqueologico Regional', '8:00-12:00 a.m.y 2:30-5:30 p.m.','Norte-copacabana',2110);
insert into Museo values (04, 'arqueologia', '8:00-12:00 a.m.y 2:30-5:30 p.m.', 'Sur-copacabana',2102);



-- OBJETO

-- insert into objeto  values (id_objeto, nombre, id_museo)

insert into objeto  values (1001,'cuadros',01);
insert into objeto  values (1002,'crucifijo',01);
insert into objeto  values (1003,'calices',01);
insert into objeto  values (1004,'vestidos de la virgen',01);
insert into objeto  values (1005,'pieza de ceramica',02);



-- UTILIZA_PAQUETE

-- insert into UTILIZA_PAQUETE values (ci, id_paquete, fecha)

insert into UTILIZA_PAQUETE values (1231010,201,'25/09/15');
insert into UTILIZA_PAQUETE values (1231102,202,'25/09/15');
insert into UTILIZA_PAQUETE values (1231103,203,'25/09/15');
insert into UTILIZA_PAQUETE values (1231103,201,'25/10/15');
insert into UTILIZA_PAQUETE values (1231107,202,'15/09/15');

insert into UTILIZA_PAQUETE values (1231106,203,'25/07/15');
insert into UTILIZA_PAQUETE values (1231107,204,'05/09/15');
insert into UTILIZA_PAQUETE values (1231111,204,'15/09/15');
insert into UTILIZA_PAQUETE values (1231109,205,'5/09/15');
insert into UTILIZA_PAQUETE values (1231111,205,'5/09/15');



-- TIENE_REL (esta relacion es parte de HOTELES)

-- insert into TIENE_REL values (id_paquete,id_infra)

insert into TIENE_REL values (202,111);
insert into TIENE_REL values (202,121);
insert into TIENE_REL values (203,113);
insert into TIENE_REL values (204,114);
insert into TIENE_REL values (204,120);



------------------------------------------------------------------------------------
--                         Tablas de RESTAURANTES:                                --
------------------------------------------------------------------------------------

-- RESTAURANTE

-- INSERT INTO RESTAURANTE VALUES (id_restaurante, nombre, direccion, hora_apertura, hora_cierre, telefono, id_infra)

INSERT INTO RESTAURANTE VALUES (1, 'El Cóndor & The Eagle Café', 'Av. 16 de Julio  # 67', '7:00', '14:30', 24728352, 111)
INSERT INTO RESTAURANTE (id_restaurante, nombre, direccion, hora_apertura, hora_cierre, telefono) VALUES (2, 'Mankha Uta', 'Av. 6 de Agosto  # 102', '8:00', '18:00', 77769515)
INSERT INTO RESTAURANTE (id_restaurante, nombre, direccion, hora_apertura, hora_cierre, telefono) VALUES (3, 'Pacha Café Restaurant Bar', 'c. Bolivar  # 221', '7:00', '19:00', 86222060)
INSERT INTO RESTAURANTE VALUES (4, 'Copacabana Café Bistrot', 'Av. Manuel Mejia  # 53', '7:30', '21:00', 71518310, 123)
INSERT INTO RESTAURANTE (id_restaurante, nombre, direccion, hora_apertura, hora_cierre, telefono) VALUES (5, 'Kala Uta', 'Av. 6 de Agosto  # 54', '9:00', '20:00', 86223845)



-- PLATO:

-- INSERT INTO PLATO VALUES (id_plato, nombre, tipo_plato)

INSERT INTO PLATO VALUES (1, 'Sillpancho', 'Nacional')
INSERT INTO PLATO VALUES (2, 'Pique Macho', 'Nacional')
INSERT INTO PLATO VALUES (3, 'Chicharron de Pollo', 'Nacional')
INSERT INTO PLATO VALUES (4, 'Asado de Cordero', 'Nacional')
INSERT INTO PLATO VALUES (5, 'Trucha a la Mantequilla', 'Nacional')

INSERT INTO PLATO VALUES (16, 'Solomillo Roquefort', 'Internacional')
INSERT INTO PLATO VALUES (17, 'Lomo Saltado', 'Internacional')
INSERT INTO PLATO VALUES (18, 'Tortilla Española', 'Internacional')
INSERT INTO PLATO VALUES (19, 'Revuelto de Espárragos', 'Internacional')
INSERT INTO PLATO VALUES (20, 'Jamón Serrano', 'Internacional')



-- OFRECE:

-- INSERT INTO OFRECE (id_restaurante, id_plato)

INSERT INTO OFRECE VALUES (1, 1)
INSERT INTO OFRECE VALUES (1, 2)
INSERT INTO OFRECE VALUES (1, 3)
INSERT INTO OFRECE VALUES (1, 4)
INSERT INTO OFRECE VALUES (1, 16)

INSERT INTO OFRECE VALUES (1, 17)
INSERT INTO OFRECE VALUES (1, 18)
INSERT INTO OFRECE VALUES (2, 5)
INSERT INTO OFRECE VALUES (2, 6)
INSERT INTO OFRECE VALUES (2, 1)


----------------------------------------------------------------------------
--                       Tabla de TRANSPORTES:                           --
----------------------------------------------------------------------------

-- EMP_TRANSPORTE:

-- INSERT INTO EMP_TRANSPORTE (id_empresa, nombre, direccion, telefono)

INSERT INTO EMP_TRANSPORTE VALUES (1001, 'VIKINGO', 'c. Gral. Pando  # 146', 44364427)
INSERT INTO EMP_TRANSPORTE VALUES (1002, 'TRANS DANAIN', 'Av. Blanco Galindo  # 5412', 44263577)
INSERT INTO EMP_TRANSPORTE VALUES (1003, 'HERMES Trans S.R.L.', 'Av. Irala  # 223', 33145560)
INSERT INTO EMP_TRANSPORTE VALUES (1004, 'TRAFIC CARGO S.R.L.', 'Av. 20 de Octubre  # 254', 32434043)
INSERT INTO EMP_TRANSPORTE VALUES (1005, 'VIRGEN DE COPACABANA', 'c. Sucre  # 9854', 44510981)



-- TRANSPORTE:

-- INSERT INTO TRANSPORTE (id_trans, tipo_trans, id_empresa)

INSERT INTO TRANSPORTE VALUES (1, 'Bus ', 1001)
INSERT INTO TRANSPORTE VALUES (2, 'Bus', 1001)
INSERT INTO TRANSPORTE VALUES (3, 'Bus', 1001)
INSERT INTO TRANSPORTE VALUES (4, 'Bus', 1001)
INSERT INTO TRANSPORTE VALUES (5, 'Bus', 1002)

INSERT INTO TRANSPORTE VALUES (6, 'Bus', 1002)
INSERT INTO TRANSPORTE VALUES (7, 'Bus', 1002)
INSERT INTO TRANSPORTE VALUES (8, 'Bus', 1003)
INSERT INTO TRANSPORTE VALUES (9, 'Bus', 1003)
INSERT INTO TRANSPORTE VALUES (10, 'Bus', 1003)



-- HORARIO:

-- INSERT INTO HORARIO (id_horario, hora_salida)

INSERT INTO HORARIO VALUES (111, '6:00')
INSERT INTO HORARIO VALUES (112, '7:30')
INSERT INTO HORARIO VALUES (113, '9:00')
INSERT INTO HORARIO VALUES (114, '10:00')
INSERT INTO HORARIO VALUES (115, '12:00')



-- TIENE_HOR:

-- INSERT INTO TIENE_HOR VALUES (id_trans, id_horario)

INSERT INTO TIENE_HOR VALUES (1, 111)
INSERT INTO TIENE_HOR VALUES (2, 112)
INSERT INTO TIENE_HOR VALUES (3, 114)
INSERT INTO TIENE_HOR VALUES (4, 113)
INSERT INTO TIENE_HOR VALUES (5, 116)

INSERT INTO TIENE_HOR VALUES (6, 115)
INSERT INTO TIENE_HOR VALUES (7, 117)
INSERT INTO TIENE_HOR VALUES (8, 111)
INSERT INTO TIENE_HOR VALUES (9, 118)
INSERT INTO TIENE_HOR VALUES (10, 112)


-- SINDICATO:

-- INSERT INTO SINDICATO VALUES (id_sindicato, nombre, id_empresa)

INSERT INTO SINDICATO VALUES (1, 'Villa Victoria', 1006)
INSERT INTO SINDICATO VALUES (2, 'A. J. de Sucre', 1004)
INSERT INTO SINDICATO VALUES (3, 'Arco Iris', 1003)
INSERT INTO SINDICATO VALUES (4, 'Horizontes', 1010)
INSERT INTO SINDICATO VALUES (5, 'Nuevo Amanecer', 1001)



-- DIRECTORIO:

-- INSERT INTO DIRECTORIO VALUES (id_directorio, nombre, id_sindicato)

INSERT INTO DIRECTORIO VALUES (301, 'LOZADA', 1)
INSERT INTO DIRECTORIO VALUES (302, 'MADENO', 2)
INSERT INTO DIRECTORIO VALUES (303, 'SAMBOL', 3)
INSERT INTO DIRECTORIO VALUES (304, 'REMBOL', 4)
INSERT INTO DIRECTORIO VALUES (305, 'DAMARCRUZ', 5)



-- DETALLE_DIRECTORIO:

-- INSERT INTO DETALLE_DIRECTORIO VALUES (id_directorio, ci, cargo)

--'Presidente'
--'Vice presidente'
--'Vocal'
--'Strio. Actas'
--'Strio. Deportes'
--'Strio. Hacienda'

INSERT INTO DETALLE_DIRECTORIO VALUES (301, 7847501, 'Presidente')
INSERT INTO DETALLE_DIRECTORIO VALUES (301, 7847502, 'Vice presidente')
INSERT INTO DETALLE_DIRECTORIO VALUES (301, 7847503, 'Vocal')
INSERT INTO DETALLE_DIRECTORIO VALUES (301, 7847504, 'Strio. Actas')
INSERT INTO DETALLE_DIRECTORIO VALUES (301, 7847505, 'Strio. Deportes')

INSERT INTO DETALLE_DIRECTORIO VALUES (302, 7847506, 'Presidente')
INSERT INTO DETALLE_DIRECTORIO VALUES (302, 7847507, 'Vocal')
INSERT INTO DETALLE_DIRECTORIO VALUES (302, 7847508, 'Strio. Actas')
INSERT INTO DETALLE_DIRECTORIO VALUES (302, 7847509, 'Strio. Deportes')



-- VIAJA_POR:

-- INSERT INTO VIAJA_POR VALUES (ci, id_trans, fecha_viaje)

INSERT INTO VIAJA_POR VALUES (1231137, 1, '1/05/2015')
INSERT INTO VIAJA_POR VALUES (1228263, 1, '21/10/2015')
INSERT INTO VIAJA_POR VALUES (1231137, 1, '1/05/2015')
INSERT INTO VIAJA_POR VALUES (1231102, 1, '4/05/2015')
INSERT INTO VIAJA_POR VALUES (1231103, 3, '3/05/2015')

INSERT INTO VIAJA_POR VALUES (1231102, 3, '3/05/2015')
INSERT INTO VIAJA_POR VALUES (1231105, 4, '16/05/2015')
INSERT INTO VIAJA_POR VALUES (1231111, 4, '16/05/2015')
INSERT INTO VIAJA_POR VALUES (1231010, 4, '3/05/2015')
INSERT INTO VIAJA_POR VALUES (1231010, 4, '3/05/2015')



--------------------------------------------------------------------------
--                       Tablas de IGLESIA:                             --
--------------------------------------------------------------------------

-- IGLESIA

-- insert into iglesia values (id_iglesia, nombre, dirección)

insert into iglesia values (300,'Catedral Copacabana','Av. 6 de agosto');
insert into iglesia values (301,'Señor de la Cruz de Colquepata','Calle Oruro');
insert into iglesia values (302,'San Calixto','Av. Sucre');
insert into iglesia values (303,'San Sebastian','Pza. Alonso de Mendoza');
insert into iglesia values (304,'Señor de la Exaltacion','Pza. 16 de Julio');



-- PARROCO

-- insert into PARROCO values (id_parroco,fecha_consagracion,id_iglesia)

insert into parroco values (4565430,'1999-05-06',303);
insert into parroco values (5434567,'2007-07-06',306);
insert into parroco values (4586787,'2013-01-07',300);
insert into parroco values (5456765,'1992-03-13',302);
insert into parroco values (5654129,'1975-07-22',301);



-- ACTIVIDAD

-- insert into actividad values (id_actividad,nombre)

insert into actividad values (400,'Reuniones jovenes');
insert into actividad values (401,'Misa San Pedro');
insert into actividad values (402,'Ensayos de Alavanza');
insert into actividad values (403,'Escuela Dominical');
insert into actividad values (404,'Misa Dominical');



-- PREPARA

-- insert into prepara values (id_iglesia ,idactividad, fecha, hora)

insert into prepara values (300,407,'2015-02-11','07:00');
insert into prepara values (300,409,'2015-07-11','20:00');
insert into prepara values (305,413,'2015-02-12','15:00');
insert into prepara values (300,407,'2015-02-12','17:00');
insert into prepara values (302,415,'2015-07-23','20:00');



-- CUADRO

--insert into cuadro values (idcuadro,descripción, id_iglesia)

insert into cuadro values (500,'Virgen Copacabana',300);
insert into cuadro values (501,'Señor Gran poder',306);
insert into cuadro values (502,'Apostol Pablo',300);
insert into cuadro values (503,'Crucificion de Pedro',302);
insert into cuadro values (504,'Arcangel Miguel de la Guardia',301);

