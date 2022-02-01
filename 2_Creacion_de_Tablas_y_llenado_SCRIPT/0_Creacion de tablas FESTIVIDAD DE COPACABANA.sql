
       -------------------------------------------------
       -- Creando tablas de FESTIVIDAD DE COPACABANA: --
       -------------------------------------------------

	   

-- creando la tabla PERSONA:

CREATE TABLE PERSONA(

	ci int not null,
	nombres varchar(50),
	paterno varchar(50),
	materno varchar(50),
	fecha_nac date,
	sexo varchar(50),
	
	CONSTRAINT ci_PK PRIMARY KEY(ci)
)
-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

---> Tablas de FIESTAS:

CREATE TABLE FESTIVIDAD(

	id_festividad int not null,
	nombre varchar(50),
	fecha_fest varchar(50),
	lugar varchar(50),
	
	CONSTRAINT id_festividad_PK PRIMARY KEY(id_festividad)
)

CREATE TABLE LOCAL_FIESTA(

	id_local int not null,
	nombre varchar(50),
	direccion varchar(50),
	
	CONSTRAINT id_local_PK PRIMARY KEY(id_local)
)

CREATE TABLE CONJUNTO_MUSICAL(

	id_musical int not null,
	nombre varchar(50),
	tipo varchar(50),
	
	CONSTRAINT id_musical_PK PRIMARY KEY(id_musical)
)

CREATE TABLE ES_PASANTE(

	ci int not null,
	id_festividad int not null,
	id_local int not null,
	id_musical int not null,
	fecha_ini date,
	fecha_fin date,
	
	CONSTRAINT ci_FK FOREIGN KEY(ci) REFERENCES PERSONA (ci),
	CONSTRAINT id_festividad_FK FOREIGN KEY(id_festividad) REFERENCES FESTIVIDAD (id_festividad),
	CONSTRAINT id_local_FK FOREIGN KEY(id_local) REFERENCES LOCAL_FIESTA (id_local),
	CONSTRAINT id_musical_FK FOREIGN KEY(id_musical) REFERENCES CONJUNTO_MUSICAL (id_musical)
)

-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

---> Tablas de DIVERSIONES:

CREATE TABLE DIVERSION(

	id_diversion int not null,
	nombre varchar(50),
	costo int,
	edad_max int,
	edad_min int,
	
	CONSTRAINT id_diversion_PK PRIMARY KEY(id_diversion)
)

CREATE TABLE ENCARGADO(

	ci_encargado int not null,
	sueldo int,
	id_diversion int,
	
	CONSTRAINT ci_encargado_PK PRIMARY KEY(ci_encargado),
	
	CONSTRAINT ci_FK_1 FOREIGN KEY(ci_encargado) REFERENCES PERSONA (ci),
	CONSTRAINT id_diversion_FK FOREIGN KEY(id_diversion) REFERENCES DIVERSION (id_diversion)
)

CREATE TABLE SE_DIVIERTE(

	ci int not null,
	id_diversion int not null,
	
	CONSTRAINT ci_FK_2 FOREIGN KEY(ci) REFERENCES PERSONA (ci),
	CONSTRAINT id_diversion_FK_1 FOREIGN KEY(id_diversion) REFERENCES DIVERSION (id_diversion)
)

CREATE TABLE EQUIPAMIENTO(

	id_equip int not null,
	nombre varchar(50),
	
	CONSTRAINT id_equip_PK PRIMARY KEY(id_equip)
)

CREATE TABLE TIENE_EQUIP(

	id_diversion int not null,
	id_equip int not null,
	
	CONSTRAINT id_diversion_FK_2 FOREIGN KEY(id_diversion) REFERENCES DIVERSION (id_diversion),
	CONSTRAINT id_equip_FK FOREIGN KEY(id_equip) REFERENCES EQUIPAMIENTO (id_equip)
)

CREATE TABLE CONFITURA(

	id_confi int not null,
	nombre varchar(50),
	precio int,
	
	CONSTRAINT id_confi_PK PRIMARY KEY(id_confi)
)

CREATE TABLE PUESTO_VENTA(

	id_puesto int not null,
	nombre varchar(50),
	direccion varchar(50),
	
	CONSTRAINT id_puesto_PK PRIMARY KEY(id_puesto)
)

CREATE TABLE SE_VENDE(

	id_confi int not null,
	id_puesto int not null,
	
	CONSTRAINT id_confi_FK FOREIGN KEY(id_confi) REFERENCES CONFITURA (id_confi),
	CONSTRAINT id_puesto_FK FOREIGN KEY(id_puesto) REFERENCES PUESTO_VENTA (id_puesto)
)

CREATE TABLE COMPRA(

	ci int not null,
	id_confi int not null,
	id_puesto int not null,
	cantidad int,
	
	CONSTRAINT ci_FK_3 FOREIGN KEY(ci) REFERENCES PERSONA (ci),
	CONSTRAINT id_confi_FK_1 FOREIGN KEY(id_confi) REFERENCES CONFITURA (id_confi),
	CONSTRAINT id_puesto_FK_1 FOREIGN KEY(id_puesto) REFERENCES PUESTO_VENTA (id_puesto)
)

CREATE TABLE BOTE(

	id_bote int not null,
	nombre varchar(50),
	disponibilidad varchar(30),
	capacidad int,
	costo_alquiler int,
	
	id_diversion int,
	ci_propietario int,
	
	CONSTRAINT id_bote_PK PRIMARY KEY(id_bote),
	
	CONSTRAINT id_diversion_FK_3 FOREIGN KEY(id_diversion) REFERENCES DIVERSION (id_diversion),
	CONSTRAINT ci_propietario_FK FOREIGN KEY(ci_propietario) REFERENCES PERSONA (ci)
)

-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

---> Tablas de HOTELES O ALBERGUES:

CREATE TABLE INFRAESTRUCTURA_HOSPEDAJE (

	id_infra int not null,
	nombre varchar(50),
	direccion varchar(50),
	tipo_albergue varchar(50),
	categoria varchar(50),
	h_atencion int,
	
	CONSTRAINT id_infra_PK PRIMARY KEY(id_infra)
)

CREATE TABLE HABITACION(

	id_hab int not null,
	tipo varchar(50),
	costo int,
	estado varchar(50),
	
	id_infra int,
	
	CONSTRAINT id_hab_PK PRIMARY KEY(id_hab),
	
	CONSTRAINT id_infra_FK_1 FOREIGN KEY(id_infra) REFERENCES INFRAESTRUCTURA_HOSPEDAJE (id_infra)
)

CREATE TABLE SE_HOSPEDA(

	id_infra int not null,
	id_hab int not null,
	ci int not null,
	fecha_ingreso date,
	
	CONSTRAINT id_infra_FK_2 FOREIGN KEY(id_infra) REFERENCES INFRAESTRUCTURA_HOSPEDAJE (id_infra),
	CONSTRAINT id_hab_FK FOREIGN KEY(id_hab) REFERENCES HABITACION (id_hab),
	CONSTRAINT ci_FK_4 FOREIGN KEY(ci) REFERENCES PERSONA (ci)
)

CREATE TABLE RESERVA(

	id_infra int not null,
	id_hab int not null,
	ci int not null,
	fecha_reserva date,
	
	CONSTRAINT id_infra_FK_3 FOREIGN KEY(id_infra) REFERENCES INFRAESTRUCTURA_HOSPEDAJE (id_infra),
	CONSTRAINT id_hab_FK_1 FOREIGN KEY(id_hab) REFERENCES HABITACION (id_hab),
	CONSTRAINT ci_FK_5 FOREIGN KEY(ci) REFERENCES PERSONA (ci)
)

CREATE TABLE SERVICIO(

	id_servicio int not null,
	nombre varchar(50),
	costo int,
	tipo_servicio varchar(50),
	
	CONSTRAINT id_servicio_PK PRIMARY KEY(id_servicio)
)

CREATE TABLE UTILIZA_SER(

	id_servicio int not null,
	id_hab int not null,
	horas int,
	fecha_ser date,
	
	CONSTRAINT id_servicio_FK FOREIGN KEY(id_servicio) REFERENCES SERVICIO (id_servicio),
	CONSTRAINT id_hab_FK_2 FOREIGN KEY(id_hab) REFERENCES HABITACION (id_hab)
)

CREATE TABLE OFRECE_SERVICIO(

	id_infra int not null,
	id_servicio int not null,
		
	CONSTRAINT id_infra_FK_4 FOREIGN KEY(id_infra) REFERENCES INFRAESTRUCTURA_HOSPEDAJE (id_infra),
	CONSTRAINT id_servicio_FK_1 FOREIGN KEY(id_servicio) REFERENCES SERVICIO (id_servicio)
)

CREATE TABLE FACTURA(

	id_factura int not null,
	fecha_fac date,
	
	id_hab int not null,
	
	CONSTRAINT id_factura_PK PRIMARY KEY(id_factura),
	
	CONSTRAINT id_hab_FK_3 FOREIGN KEY(id_hab) REFERENCES HABITACION (id_hab)
)

-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

---> Tablas de LUGARES TURÍSTICOS:

CREATE TABLE LUGAR_TURISTICO(

	id_lugar int not null,
	nombre varchar(50),
	direccion varchar(50),
	
	CONSTRAINT id_lugar_PK PRIMARY KEY(id_lugar)
)

CREATE TABLE VISITA(

	ci int not null,
	id_lugar int not null,
	fecha_v date,
	
	CONSTRAINT ci_FK_6 FOREIGN KEY(ci) REFERENCES PERSONA (ci),
	CONSTRAINT id_lugar_FK FOREIGN KEY(id_lugar) REFERENCES LUGAR_TURISTICO (id_lugar)
)

CREATE TABLE AGENCIA_TURISTICA(

	id_agencia int not null,
	nombre varchar(50),
	direccion varchar(50),
	telefono int not null,
	
	CONSTRAINT id_agencia_PK PRIMARY KEY(id_agencia)
)

CREATE TABLE PAQUETE_TURISTICO(

	id_paquete int not null,
	nombre varchar(50),
	categoria varchar(50),
	
	id_agencia int not null,

	CONSTRAINT id_paquete_PK PRIMARY KEY(id_paquete),
	
	CONSTRAINT id_agencia_FK FOREIGN KEY(id_agencia) REFERENCES AGENCIA_TURISTICA (id_agencia)
)

CREATE TABLE OFRECE_LUGAR(

	id_paquete int not null,
	id_lugar int not null,
	
	CONSTRAINT id_paquete_FK FOREIGN KEY(id_paquete) REFERENCES PAQUETE_TURISTICO (id_paquete),
	CONSTRAINT id_lugar_FK_1 FOREIGN KEY(id_lugar) REFERENCES LUGAR_TURISTICO (id_lugar)
)

CREATE TABLE TIENE_SERVICIO(

	id_paquete int not null,
	id_servicio int not null,
	
	CONSTRAINT id_paquete_FK_1 FOREIGN KEY(id_paquete) REFERENCES PAQUETE_TURISTICO (id_paquete),
	CONSTRAINT id_servicio_FK_2 FOREIGN KEY(id_servicio) REFERENCES SERVICIO (id_servicio)
)

CREATE TABLE LUGAR_AGENCIA_GUIA(

	ci_guia int not null,
	id_lugar int not null,
	id_agencia int not null,
	fecha date,
	hora varchar(50),
	
	CONSTRAINT ci_guia_FK FOREIGN KEY(ci_guia) REFERENCES PERSONA (ci), 
	CONSTRAINT id_lugar_FK_2 FOREIGN KEY(id_lugar) REFERENCES LUGAR_TURISTICO (id_lugar),
	CONSTRAINT id_agencia_FK_1 FOREIGN KEY(id_agencia) REFERENCES AGENCIA_TURISTICA (id_agencia)
)

CREATE TABLE TIENE_INFRA(

	id_lugar int not null,
	id_infra int not null,

	CONSTRAINT id_lugar_FK_3 FOREIGN KEY(id_lugar) REFERENCES LUGAR_TURISTICO (id_lugar),
	CONSTRAINT id_infra_FK_5 FOREIGN KEY(id_infra) REFERENCES INFRAESTRUCTURA_HOSPEDAJE (id_infra)
)

CREATE TABLE CENTRO_SALUD(

	id_centro int not null,
	nombre varchar(50),
	direccion varchar(50),
	telefono int not null,
	tipo_nosoc varchar(50),
	
	id_lugar int not null,
	
	CONSTRAINT id_centro_PK PRIMARY KEY(id_centro),

	CONSTRAINT id_lugar_FK_4 FOREIGN KEY(id_lugar) REFERENCES LUGAR_TURISTICO (id_lugar)
)

CREATE TABLE LUGAR_BENDICION(

	id_bendicion int not null,
	nombre_lug varchar(50),
	disponibilidad varchar(50),
	
	ci_yatiri int not null,
	id_lugar int not null,

	CONSTRAINT id_bendicion_PK PRIMARY KEY(id_bendicion),
	
	CONSTRAINT ci_yatiri_FK FOREIGN KEY(ci_yatiri) REFERENCES PERSONA (ci),
	CONSTRAINT id_lugar_FK_5 FOREIGN KEY(id_lugar) REFERENCES LUGAR_TURISTICO (id_lugar)
)

CREATE TABLE MUSEO(

	id_museo int not null,
	nombre varchar(50),
	horario_apertura varchar(50),
	direccion varchar(50),
	
	id_lugar int not null,

	CONSTRAINT id_museo_PK PRIMARY KEY(id_museo),
	
	CONSTRAINT id_lugar_FK_6 FOREIGN KEY(id_lugar) REFERENCES LUGAR_TURISTICO (id_lugar)
)

CREATE TABLE OBJETO(

	id_objeto int not null,
	nombre varchar(50),
	
	id_museo int not null,
	
	CONSTRAINT id_objeto_PK PRIMARY KEY(id_objeto),

	CONSTRAINT id_museo_FK FOREIGN KEY(id_museo) REFERENCES MUSEO (id_museo)
)

CREATE TABLE UTILIZA_PAQUETE(

	ci int not null,
	id_paquete int not null,
	fecha date,

	CONSTRAINT ci_FK_7 FOREIGN KEY(ci) REFERENCES PERSONA (ci),
	CONSTRAINT id_paquete_FK_2 FOREIGN KEY(id_paquete) REFERENCES PAQUETE_TURISTICO (id_paquete)
)

-------------------------------------------
-- esta tabla pertenece a "HOTEL"
CREATE TABLE TIENE_REL(

	id_paquete int not null,
	id_infra int not null,
		
	CONSTRAINT id_paquete_FK_3 FOREIGN KEY(id_paquete) REFERENCES PAQUETE_TURISTICO (id_paquete),	
	CONSTRAINT id_infra_FK_6 FOREIGN KEY(id_infra) REFERENCES INFRAESTRUCTURA_HOSPEDAJE (id_infra)
)
---------------------------------------------

-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

---> Tablas de RESTAURANTE:

CREATE TABLE RESTAURANTE(

	id_restaurante int not null,
	nombre varchar(50),
	direccion varchar(50),
	hora_apertura varchar(50),
	hora_cierre varchar(50),
	telefono int,
	
	id_infra int,
	
	CONSTRAINT id_restaurante_PK PRIMARY KEY(id_restaurante),
	
	CONSTRAINT id_infra_FK_7 FOREIGN KEY(id_infra) REFERENCES INFRAESTRUCTURA_HOSPEDAJE (id_infra)
)

CREATE TABLE PLATO(

	id_plato int not null,
	nombre varchar(50),
	tipo_plato varchar(50),
	
	CONSTRAINT id_plato_PK PRIMARY KEY(id_plato)
)

CREATE TABLE OFRECE(

	id_restaurante int not null,
	id_plato int not null,
	
	CONSTRAINT id_restaurante_FK FOREIGN KEY(id_restaurante) REFERENCES RESTAURANTE (id_restaurante),
	CONSTRAINT id_plato_FK FOREIGN KEY(id_plato) REFERENCES PLATO (id_plato)
)

-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

-- Tablas TRANSPORTE:

CREATE TABLE EMP_TRANSPORTE(

	id_empresa int not null,
	nombre varchar(50),
	direccion varchar(50),
	telefono int,
	
	CONSTRAINT id_empresa_PK PRIMARY KEY(id_empresa)
)

CREATE TABLE TRANSPORTE(

	id_trans int not null,
	tipo_trans varchar(50),
	
	id_empresa int,
	
	CONSTRAINT id_trans_PK  PRIMARY KEY(id_trans),
	
	CONSTRAINT id_empresa_FK FOREIGN KEY(id_empresa) REFERENCES EMP_TRANSPORTE (id_empresa)
)

CREATE TABLE HORARIO(

	id_horario int not null,
	hora_salida varchar(50),
	
	CONSTRAINT id_horario_PK PRIMARY KEY(id_horario)
)

CREATE TABLE TIENE_HOR(

	id_trans int not null,
	id_horario int not null,
	
	CONSTRAINT id_trans_FK FOREIGN KEY(id_trans) REFERENCES TRANSPORTE (id_trans),
	CONSTRAINT id_horario_FK FOREIGN KEY(id_horario) REFERENCES HORARIO (id_horario)
)

CREATE TABLE SINDICATO(

	id_sindicato int not null,
	nombre varchar(50),
	
	id_empresa int,
	
	CONSTRAINT id_sindicato_PK PRIMARY KEY(id_sindicato),
	
	CONSTRAINT id_empresa_FK_1 FOREIGN KEY(id_empresa) REFERENCES EMP_TRANSPORTE (id_empresa)
)

CREATE TABLE DIRECTORIO(

	id_directorio int not null,
	nombre varchar(50),
	
	id_sindicato int,
	
	CONSTRAINT id_directorio_PK PRIMARY KEY(id_directorio),
	
	CONSTRAINT id_sindicato_FK FOREIGN KEY(id_sindicato) REFERENCES SINDICATO (id_sindicato)
)

CREATE TABLE DETALLE_DIRECTORIO(

	id_directorio int not null,
	ci int not null,
	
	cargo varchar(50),
	
	CONSTRAINT id_directorio_FK FOREIGN KEY(id_directorio) REFERENCES DIRECTORIO (id_directorio),
	CONSTRAINT ci_FK_8 FOREIGN KEY(ci) REFERENCES PERSONA (ci)
)

CREATE TABLE VIAJA_POR(

	ci int not null,
	id_trans int not null,
	fecha_viaje date,
	
	CONSTRAINT ci_FK_9 FOREIGN KEY(ci) REFERENCES PERSONA (ci),
	CONSTRAINT id_trans_FK_1 FOREIGN KEY(id_trans) REFERENCES TRANSPORTE (id_trans)
)

-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------

-- Tablas de IGLESIA:

CREATE TABLE IGLESIA(

	id_iglesia int not null,
	nombre varchar(50),
	direccion varchar(50),
	
	CONSTRAINT id_iglesia_PK PRIMARY KEY(id_iglesia)
)

CREATE TABLE PARROCO(

	ci_parroco int not null,
	fecha_consagracion date,
	
	id_iglesia int,
	
	CONSTRAINT ci_parroco_PK PRIMARY KEY(ci_parroco),
	
	CONSTRAINT ci_parroco_FK FOREIGN KEY(ci_parroco) REFERENCES PERSONA (ci),
	CONSTRAINT id_iglesia_FK FOREIGN KEY(id_iglesia) REFERENCES IGLESIA (id_iglesia)
)

CREATE TABLE ACTIVIDAD(

	id_actividad int not null,
	nombre varchar(50),
	
	CONSTRAINT id_actividad_PK PRIMARY KEY(id_actividad)
)

CREATE TABLE PREPARA(

	id_iglesia int not null,
	id_actividad int not null,
	fecha date,
	hora varchar(50),
	
	CONSTRAINT id_iglesia_FK_1 FOREIGN KEY(id_iglesia) REFERENCES IGLESIA (id_iglesia),
	CONSTRAINT id_actividad_FK FOREIGN KEY(id_actividad) REFERENCES ACTIVIDAD (id_actividad)
)

CREATE TABLE CUADRO(

	id_cuadro int not null,
	descripcion varchar(50),
	
	id_iglesia int,
	
	CONSTRAINT id_cuadro_PK PRIMARY KEY(id_cuadro),
	
	CONSTRAINT id_iglesia_FK_2 FOREIGN KEY(id_iglesia) REFERENCES IGLESIA (id_iglesia)
)

