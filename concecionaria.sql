drop database if exists BookRunning;

create database BookRunning;
	use BookRunning;
	create table Bitacora(
		Id_Bitacora int NOT NULL AUTO_INCREMENT,
		NombredeUsuario varchar(30) default 'no root',
		Fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
		Accion varchar(20),
		ValorActualizado varchar(30) null,
		ValorEliminado varchar(30) null,
		PRIMARY KEY (Id_Bitacora)
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

	
	<--- gfgfgfg --->


CREATE TRIGGER `tr_update_Bitacora` BEFORE INSERT ON `historia` FOR EACH ROW UPDATE bitacora set Accion = 'Se actualizo'
CREATE TRIGGER `tr_update_Bitacora` BEFORE INSERT ON `historia` FOR EACH ROW UPDATE bitacora set ValorActualizado = now.Nombre_Usuario
CREATE TRIGGER `tr_update_Bitacora` BEFORE INSERT ON `historia` FOR EACH ROW UPDATE `bitacora` SET `Fecha`= now.default;




insert into Usuario values('Tabo style','tabo_style@outlook',43,'México','Qro',default,78,'sha1');
insert into Usuario values('Laura Marin','Laura123@outlook',26,'México','Qro',default,59,'sha1');
insert into Usuario values('Daniel Macotela','Daniel_117@outlook',19,'México','Qro',default,80,'sha1');
insert into Usuario values('Adrihanx','Adrihanx@outlook',30,'México','Qro',default,74,'sha1');
insert into Usuario values('Gerardo San','gerardo@outlook',22,'México','Qro',default,78,'sha1');

insert into Historia values(3743,'3:31','Terror','Guillermo.G','esto es una Sinopsis',default,0,0,'superar la velosidad minima');
insert into Historia values(4152,'10:02','Suspenso','Andre.R','esto es una Sinopsis',default,0,0,'superar la velosidad minima');
insert into Historia values(5248,'8:32','Suspenso','Roberto.D','esto es una Sinopsis',default,0,0,'superar la velosidad minima');
insert into Historia values(3409,'12:50','Romantica','Angelica.M','esto es una Sinopsis',default,0,0,'superar la velosidad minima');
insert into Historia values(3710,'13:09','terror','Emilio.C','esto es una Sinopsis',default,0,0,'superar la velosidad minima');

insert into Registro values(15345,'Tabo style','03-03-2017',3,4,1.3,10,300);
insert into Registro values(13784,'Laura Marin','12-03-2017',2,7,1.5,8.5,320);
insert into Registro values(13783,'Daniel Macotela','21-01-2017',5,2,2.35,9.5,200);
insert into Registro values(13782,'Adrihanx','15-03-2017',1,3,2.07,7.92,100);
insert into Registro values(15344,'Gerardo San','08-02-2017',6,6,3.42,12,300);

