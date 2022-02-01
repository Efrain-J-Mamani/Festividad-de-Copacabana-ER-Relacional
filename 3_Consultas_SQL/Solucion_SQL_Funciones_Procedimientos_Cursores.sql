

         ------------------------------------------------------------
         ---    Consultas SQL "FESTIVIDAD DE COPACABANA"      -----
         ------------------------------------------------------------

	 
		 
-----------------------------		 
----> 	    FIESTAS:		 
-----------------------------


-- 1. (2)	Desplegar el tiempo de duración de estas festividades.


-- Funciones:

if object_id ('dbo.obt_nombre_festividad') is not null
	drop function dbo.obt_nombre_festividad;
go
create function obt_nombre_festividad(@xid_festividad int)
returns varchar(50)
begin
	declare @xnombre varchar(50)
	
	select @xnombre = nombre
	from festividad
	where id_festividad = @xid_festividad
	
	return @xnombre
end


-- principal:

select distinct id_festividad, dbo.obt_nombre_festividad(id_festividad) Festividad, DAY(fecha_fin) - DAY(fecha_ini) + 1 Duracion_dias
from es_pasante





-- 2. (3)	¿Quiénes son los prestes o pasantes de cada una de estas fiestas?


declare @t_anio int

declare c_fiestas cursor for
	select distinct YEAR(fecha_ini)
	from es_pasante

print '		FESTIVIDADES POR AÑO'
print '===================================='
	
open c_fiestas
	fetch c_fiestas into @t_anio
	
	while @@fetch_status = 0
		begin
			print 'AÑO: '+cast(@t_anio as varchar)
			print '-------------------------------------------------------'
			print '		ID			FIESTA				PASANTE'
			print '		----------------------------------------------'
			
			declare @t_id_festividad int
			declare @t_nombreFest varchar(50)
			declare @t_nombrePasante varchar(50)
			
			declare c_pasante cursor for
				select id_festividad, dbo.obt_nombre_festividad(id_festividad), dbo.obt_nombre_persona(ci)
				from es_pasante
				where YEAR(fecha_ini) = @t_anio
			
			open c_pasante
				fetch c_pasante into @t_id_festividad, @t_nombreFest, @t_nombrePasante
				
				while @@fetch_status = 0
					begin
						print '		'+cast(@t_id_festividad as varchar)+'	'+@t_nombreFest+'	'+@t_nombrePasante
						
						fetch c_pasante into @t_id_festividad, @t_nombreFest, @t_nombrePasante
					end
			close c_pasante
			deallocate c_pasante
			
			
			print '===================================='
			print ' '
			fetch c_fiestas into @t_anio
		end
close c_fiestas
deallocate c_fiestas

select *
from festividad


--otra manera de resolver:

declare @t_id_festividad int
declare @t_nombreFest varchar(50)

declare c_festividad cursor for
	select id_festividad, nombre
	from festividad

print '			FESTIVIDADES DE COPACABANA'
print '=============================================='	
	
open c_festividad
	fetch c_festividad into @t_id_festividad, @t_nombreFest 
	
	while @@fetch_status = 0
		begin
			print 'ID: '+cast(@t_id_festividad as varchar)+'		NOMBRE: '+@t_nombreFest
			print '-------------------------------------------------'
			print '	PASANTES:'
			print '			  NOMBRE				  FECHA'
			print '			-------------------------------------'
			
			declare @t_pasante varchar(50)
			declare @t_fecha date
			declare c_pasante cursor for
				select dbo.obt_nombre_persona(ci), fecha_ini
				from es_pasante
				where id_festividad = @t_id_festividad
			
			open c_pasante
				fetch c_pasante into @t_pasante, @t_fecha
				
				while @@fetch_status = 0
					begin
						print '		- '+@t_pasante+'			'+cast(@t_fecha as varchar)
						
						fetch c_pasante into @t_pasante, @t_fecha
					end
			close c_pasante
			deallocate c_pasante
			
			print '=============================================='
			print ' '
			fetch c_festividad into @t_id_festividad, @t_nombreFest
		end
close c_festividad
deallocate c_festividad





-----------------------------
---->    DIVERSIONES:
-----------------------------


-- 3. (7)	¿Quiénes son los encargados de ofrecer estas diversiones?


-- Funciones:

if object_id('dbo.obt_nombre_persona') is not null
	drop function dbo.obt_nombre_persona;
go
create function obt_nombre_persona(@xci int)
returns varchar (50)
begin
	declare @xnombre varchar(50)
	select @xnombre = P.paterno+' '+P.materno+' '+P.nombres
	from persona P
	where P.ci = @xci;
	return @xnombre;
end;


--ejecutar:

select dbo.obt_nombre_persona(8764538) Nombre_completo;


-- principal:

select d.nombre Diversion,dbo.obt_nombre_persona(e.ci_encargado) Encargado_de_diversion
from encargado e, diversion d
where e.id_diversion = d.id_diversion





-- 4. (10)	¿Cuáles son las diversiones en las cuales pueden ingresar menores de 12 años?


declare c_diversion cursor for 
	select d.nombre
	from diversion d
	where edad_min <= 12;
declare
	@t_nombre varchar(50),
	@contador int;
	set @contador = 1;
	print '	DIVERSIONES EN LAS QUE PUEDEN ENTRAR MENORES DE 12';
	print '=====================================================';
open c_diversion;
	fetch c_diversion into @t_nombre;
	while (@@fetch_status = 0)
		begin
			print (cast(@contador as varchar)+'		'+@t_nombre);
			set @contador = @contador + 1;
			fetch c_diversion into @t_nombre;
		end;
close c_diversion;
deallocate c_diversion;





-----------------------------
---->  LUGARES TURISTICOS:
-----------------------------


-- 5. (20)	Desplegar la cantidad de visitantes por lugar turístico.


-- Funciones:

if object_id ('dbo.nro_visitas_x_lugarTur') is not null
	drop function dbo.nro_visitas_x_lugarTur;
go
create function nro_visitas_x_lugarTur(@xid_lugar int)
returns int
begin
	declare @xcantidad int
	set @xcantidad = 0
	
	select @xcantidad = count(*)
	from visita V
	where V.id_lugar = @xid_lugar
	group by V.id_lugar
	
	return @xcantidad
end


-- principal:

select id_lugar ID, nombre LUGAR_TURISTICO, dbo.nro_visitas_x_lugarTur(id_lugar) NRO_VISITAS
from lugar_turistico





-- 6. (26)	Desplegar los museos que existen en Copacabana. Horarios, características del museo, objetos que se exponen en el museo y otros.


declare @codigo_mu integer
declare @nom varchar(50)
declare @nom_Obj varchar(50)

declare c_museo cursor for
select id_museo,nombre from museo

open c_museo
	fetch c_museo into @codigo_mu, @nom
	print'				LISTA DE MUSEOS '
	print'============================================='
	while @@fetch_status=0
	begin
		print'CODIGO: '+cast(@codigo_mu as varchar)+'	'+'MUSEO: '++@nom
		print'---------------------------------------------'
		print'	   OBJETOS A EXPOSICION'
		print '	--------------------------'
		
		declare c_objeto cursor for
			select o.nombre
			from objeto o
			where o.id_museo=@codigo_mu
			
		open c_objeto
			fetch c_objeto into @nom_Obj
			while @@fetch_status=0
			begin
				print '		'+@nom_Obj
				fetch c_objeto into @nom_Obj
			end
		close c_objeto
		deallocate c_objeto
		print ' '
		fetch c_museo into @codigo_mu, @nom
		print'=========================================='
	end
close c_museo
deallocate c_museo





---------------------------------
---->     HOTELES O ALBERGUES
---------------------------------


-- 7. (28)	Listar los hoteles según categoría.


declare @t_categoria varchar(50)

declare c_categoria cursor for 
	select distinct categoria
	from infraestructura_hospedaje
	
print '			LISTA DE LOS HOTELES';
print '=============================================';

open c_categoria;
	fetch c_categoria into @t_categoria;
	while (@@fetch_status = 0)
		begin
			print 'CATEGORIA: '+@t_categoria;
			print '------------------------------------------------';
			print '	INFRAESTRUCTURAS:'
			print '		ID			NOMBRE'
			print '		-----------------------------'
			
			declare @t_id_infra int
			declare @t_nombreHotel varchar(50)
			
			declare c_hotel cursor for
				select id_infra, nombre
				from infraestructura_hospedaje
				where categoria = @t_categoria;
			
			open c_hotel
				fetch c_hotel into @t_id_infra, @t_nombreHotel
				
				while @@fetch_status = 0
					begin
						print '		'+cast(@t_id_infra as varchar)+'	'+@t_nombreHotel;
						
						fetch c_hotel into @t_id_infra, @t_nombreHotel
					end
			close c_hotel
			deallocate c_hotel
			
			print '		-----------------------------'
			print ' '			
			print '=============================================';
			print ' ';
			fetch c_categoria into @t_categoria;
		end;
close c_categoria;
deallocate c_categoria;





-- 8. (30)	Desplegar la cantidad de personas hospedadas por hotel.


-- Funciones:

if object_id ('dbo.obt_nombre_infraestructura') is not null
	drop function dbo.obt_nombre_infraestructura;
go
create function obt_nombre_infraestructura(@xid_infra int)
returns varchar(50)
begin
	declare @xnombre varchar(50)
	
	select @xnombre = nombre
	from infraestructura_hospedaje
	where id_infra = @xid_infra
	
	return @xnombre
end


---

if object_id ('dbo.nro_hospedados_x_infra') is not null
	drop function dbo.nro_hospedados_x_infra;
go
create function nro_hospedados_x_infra(@xid_infra int)
returns varchar(50)
begin
	declare @xcantidad int
	set @xcantidad = 0
	
	select @xcantidad = COUNT(*)
	from se_hospeda
	where id_infra = @xid_infra
	group by id_infra
	
	return @xcantidad
end


-- principal:

select id_infra, nombre, dbo.nro_hospedados_x_infra(id_infra) Nro_Hospedados
from INFRAESTRUCTURA_HOSPEDAJE





-----------------------------
---->     RESTAURANTE:
-----------------------------

-- 9. (38)	Listar los restaurantes que ofrecen platos típicos.


select *
from restaurante R
where R.id_restaurante in ( select O.id_restaurante
							from ofrece O, plato P
							where O.id_plato = P.id_plato and P.tipo_plato = 'Nacional')




	
-- 10. (40)	A partir de que horario abren los restaurantes.

select id_restaurante, nombre, hora_apertura
from restaurante





-----------------------------
----> IGLESIA
-----------------------------


-- 11. (47)	Desplegar el detalle de los párrocos encargados de las iglesias.


declare c_iglesia cursor for
select nombre,id_iglesia
from iglesia
declare @nom varchar(50),@id int, @cont int
open c_iglesia
	fetch c_iglesia into @nom,@id
	set @cont=0
	print '				Parrocos de Iglesia'
	print '========================================================='
	while(@@FETCH_STATUS=0)
	begin	
		set @cont=@cont+1
		print  cast(@cont as varchar)+':  Iglesia '+@nom
		declare c_parroco cursor for
		select pe.ci,(pe.nombres+' '+pe.paterno+' '+pe.materno) as nomc, pe.fecha_nac, p.fecha_consagracion
		from iglesia i inner join PARROCO p on i.id_iglesia=p.id_iglesia
		inner join PERSONA pe on p.ci_parroco=pe.ci
		where i.id_iglesia=@id
		declare @ci int,@nomp varchar(100),@fec date,@fecc date
		open c_parroco
			fetch c_parroco into @ci ,@nomp ,@fec ,@fecc
			while(@@FETCH_STATUS=0)
			begin
				print '		Nombre Completo: '+@nomp
				print '		CI:'+cast(@ci as varchar)+'      Fecha Nac: '+cast(@fec as varchar)+'    Fecha Consagracion: '+cast(@fecc as varchar)
				fetch c_parroco into @ci ,@nomp ,@fec ,@fecc
			end
		close c_parroco
		deallocate c_parroco
		print ' '
		
		fetch c_iglesia into @nom,@id
	end
	close c_iglesia
deallocate c_iglesia










