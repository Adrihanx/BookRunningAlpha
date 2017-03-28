drop database if exists BookRunning;
create database BookRunning;
	use BookRunning;
	create table Usuario(
		Nombre_Usuario varchar(30),
		Correo varchar(60),
		Edad int,
		Pais varchar(30),
		Estado varchar(30),
		surs_Imagen varchar(30) default './default.jpg',
		Peso int,
		primary key (Nombre_Usuario)
	);

	create table Historia(
		id_Historia int,
		Duracion time,
		Genero varchar(30),
		Autor varchar(30),
		Sinopsis text,
		src_Audio varchar(20)default './default.mp3',
		primary key (id_Historia)
	);


	create table Nivel(
		No_Nivel int,
		Vel_Minima int,
		Objetivo text,
		id_Historia int,
		primary key (No_Nivel),
		foreign key(id_Historia) references Historia(id_Historia)
	);

	create table Rejistro(
		id_Registro int,
		Nombre_Usuario varchar(30),
		Fecha date,
		Km_recoridos int,
		No_Nivel int,
		Vel_Min int,
		Vel_Max int,
		Cal_Quemadas int,
		primary key(id_Registro),
		foreign key (Nombre_Usuario) references Usuario(Nombre_Usuario),
		foreign key (No_Nivel) references Juego(No_Nivel)
	);

	create table Gratis(
		Id_Historia int,
		Regalo varchar(30),
		Foreign key(Id_Historia) references Historia(id_Historia)
	);

	create table Pago(
		Id_Historia int,
		Precio varchar(30),
		Foreign key(Id_Historia) references Historia(id_Historia)
	);
	create table Bitacora(
		Id_Bitacora varchar(20)
	);
insert into Usuario values('Tabo style','tabo_style@outlook',43,'México','Qro',default,78);
insert into Usuario values('Laura Marin','Laura123@outlook',26,'México','Qro',default,59);
insert into Usuario values('Daniel Macotela','Daniel_117@outlook',19,'México','Qro',default,80);
insert into Usuario values('Adrihanx','Adrihanx@outlook',30,'México','Qro',default,74);
insert into Usuario values('Gerardo San','gerardo@outlook',22,'México','Qro',default,78);

insert into Historia values(3743,'3:31','Terror','Guillermo.G',default,default);
insert into Historia values(4152,'10:02','Suspenso','Andre.R',default,default);
insert into Historia values(5248,'8:32','Suspenso','Roberto.D',default,default);
insert into Historia values(3409,'12:50','Romantica','Angelica.M',default,default);
insert into Historia values(3710,'13:09','terror','Emilio.C',default,default);

insert into Juego values(4,1.3,default,3743);
insert into Juego values(7,1.5,default,4152);
insert into Juego values(2,2.25,default,5248);
insert into Juego values(3,2.07,default,3409);
insert into Juego values(6,3.47,default,3710);

insert into Rejistro values(15345,'Tabo style','03-03-2017',3,4,1.3,10,300);
insert into Rejistro values(13784,'Laura Marin','12-03-2017',2,7,1.5,8.5,320);
insert into Rejistro values(13783,'Daniel Macotela','21-01-2017',5,2,2.35,9.5,200);
insert into Rejistro values(13782,'Adrihanx','15-03-2017',1,3,2.07,7.92,100);
insert into Rejistro values(15344,'Gerardo San','08-02-2017',6,6,3.42,12,300);