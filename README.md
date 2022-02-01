# Festividad de Copacabana - E-R y Relacional


En este proyecto se realiza la creación de un modelo **Entidad-Relación** y un modelo **Relacional**, para luego implementarlo al gestor de base de datos: **Microsoft SQL Server** a través de _Scripts_, y que además se tienen ejemplos de consultas **SQL**.

<p align="center">
  <img src="./images/copacabana.jpg" />
</p>

Para el desarrollo e implementación del proyecto se tienen las siguientes fases o etapas a considerar:
* Modelado ER
* Modelo Relacional
* Creación de Scripts SQL: tablas y datos
* Consultad SQL, como ejemplos de la implementación


## Modelo Entidad-Relación
Para diseñar el modelo Entidad-Relación se consideró las siguientes áreas o campos de estudio, tales como:

- _Fiestas_
- _Diversiones_
- _Lugares turísticos_
- _Hoteles o albergues_
- _Restaurantes_
- _Transporte_
- _Iglesias_

En primera instancia se diseñó el modelo Entidad-Relación a lápiz y papel, para luego implementarlo a un software de diseño de diagramas, denominado **Dia**.

<p align="center">
  <img src="./images/er.png" height="300" />
</p>

Ingresar a la carpeta **"0_Modelo_ER"**, para ver el diseño completo del modelo Entidad-Relación.


## Modelo Relacional
En esta fase se construyó el modelo Relacional a partir del modelo Entidad-Relación, considerando las ENTIDADES (_en forma de rectángulo_) y RELACIONES (_en forma de rombo_), donde se abstraen los siguientes campos:

- Llave primaria
- Atributo
- Llave foránea

Como ejemplo tenemos el área de Fiestas:



<font color="0D4CC0">Este texto está en azul</font>



<FONT COLOR="red">Texto ROJO </FONT>

- _**Fiestas**_

PERSONA (ci, nombres, paterno, materno, fecha_nac, sexo)
FESTIVIDAD (id_festividad, nombre, fecha_fest, lugar)
LOCAL_FIESTA (id_local, nombre, direccion)
CONJUNTO_MUSICAL (id_musical, nombre, tipo)
Es_pasante (ci, id_festividad, id_local, id_musical, fecha_ini, fecha_fin)

asd










