drop database if exists BookRunning;

create database BookRunning;
	use BookRunning;
	create table Bitacora(
		Id_Bitacora int,
		NombredeUsuario varchar(30) default 'no root',
		Fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
		Accion varchar(20),
		ValorActualizado varchar(30) null,
		ValorEliminado varchar(30) null
	);
	create table Usuario(
		Nombre_Usuario varchar(30),
		Correo varchar(60),
		Edad int,
		Pais varchar(30),
		Estado varchar(30),
		surs_Imagen varchar(30) default './default.jpg',
		Peso int,
		Contrasenia char(32),
		primary key (Nombre_Usuario)
	);

	create table Historia(
		id_Historia int,
		Duracion time,
		Genero varchar(30),
		Autor varchar(30),
		Sinopsis text,
		src_Audio varchar(20)default './default.mp3',
		No_Nivel int default 0,
		Vel_Minima int,
		Objetivo text,
		primary key (id_Historia)
	);

	

	create table Registro(
		id_Registro int,
		Nombre_Usuario varchar(30),
		Fecha date,
		Km_recoridos int,
		No_Nivel int,
		Vel_Min int,
		Vel_Max int,
		Cal_Quemadas int,
		primary key(id_Registro),
		foreign key (Nombre_Usuario) references Usuario(Nombre_Usuario)
	);

DELIMITER |

CREATE TRIGGER tr_update_Bitacora 
BEFORE 
INSERT 
ON 
Usuario
FOR EACH ROW
BEGIN

    update Bitacora set NombredeUsuario = '';
	insert into Bitacora set Fecha DEFAULT; 
	update Bitacora set Accion = 'Se actualiso';
	update Bitacora set ValorActualizado = new.Nombre_Usuario;
END;

|

DELIMITER ;

<--- gfgfgfgfg --->