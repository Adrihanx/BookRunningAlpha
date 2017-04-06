	drop database if exists BookRunning;

	create database BookRunning;
		use BookRunning;
		create table Bitacora(
			Id_Bitacora int NOT NULL AUTO_INCREMENT,
			NombredeUsuario varchar(30) default 'no root',
			Fecha DATETIME DEFAULT CURRENT_TIMESTAMP,
			Accion varchar(20),
			ValorActualizado int null,
			ValorEliminado varchar(30) null,
			TablaAccion varchar(30) null,
			PRIMARY KEY (Id_Bitacora)
		);
		create table Usuario(
			id_Usuario int,
			Nombre_Usuario varchar(30),
			Correo varchar(60),
			Edad int,
			Pais varchar(30),
			Estado varchar(30),
			surs_Imagen varchar(30) default './default.jpg',
			Peso int,
			Contrasenia char(32),
			primary key (id_Usuario)
		);

		create table Historia(
			id_Historia int NOT NULL AUTO_INCREMENT,
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
			id_Registro int NOT NULL AUTO_INCREMENT,
			id_Usuario int,
			Fecha date,
			Km_recoridos int,
			No_Nivel int,
			Vel_Min int,
			Vel_Max int,
			Cal_Quemadas int,
			primary key(id_Registro),
			foreign key (id_Usuario) references Usuario(id_Usuario)
		);

    delimiter //
    CREATE TRIGGER trInstH AFTER INSERT ON Historia
           FOR EACH ROW BEGIN
                insert into Bitacora (Fecha,Accion,ValorActualizado,TablaAccion) values (NOW(),'Insertar',NOW.id_Historia,'Historia');
           END;//
    delimiter ;
    delimiter //
    CREATE TRIGGER trUpdH AFTER UPDATE ON Historia
           FOR EACH ROW
           BEGIN
                insert into Bitacora (Fecha,Accion,ValorActualizado,TablaAccion) values (NOW(),'Actualizar',NOW.id_Historia,'Historia');
           END;//
    delimiter ;

    delimiter //
    CREATE TRIGGER trDelH AFTER DELETE ON Historia
           FOR EACH ROW
           BEGIN
                insert into Bitacora (Fecha,Accion,ValorActualizado,TablaAccion) values (NOW(),'Eliminar',OLD.id_Historia,'Historia');
           END; //
    delimiter ;
    delimiter //
    CREATE TRIGGER trInstU AFTER INSERT ON Usuario
           FOR EACH ROW BEGIN
                insert into Bitacora (Fecha,Accion,ValorActualizado,TablaAccion) values (NOW(),'Insertar',NOW.id_Usuario,'Usuario');
           END;//
    delimiter ;
    delimiter //
    CREATE TRIGGER trUpdU AFTER UPDATE ON Usuario
           FOR EACH ROW
           BEGIN
                insert into Bitacora (Fecha,Accion,ValorActualizado,TablaAccion) values (NOW(),'Actualizar',NOW.id_Usuario,'Usuario');
           END;//
    delimiter ;

    delimiter //
    CREATE TRIGGER trDelU AFTER DELETE ON Usuario
           FOR EACH ROW
           BEGIN
                insert into Bitacora (Fecha,Accion,ValorActualizado,TablaAccion) values (NOW(),'Eliminar',OLD.id_Usuario,'Usuario');
           END; //
    delimiter ;

    delimiter //
    CREATE TRIGGER trInstR AFTER INSERT ON Registro
           FOR EACH ROW BEGIN
                insert into Bitacora (Fecha,Accion,ValorActualizado,TablaAccion) values (NOW(),'Insertar',NOW.id_Registro,'Historia');
           END;//
    delimiter ;
    delimiter //
    CREATE TRIGGER trUpdR AFTER UPDATE ON Registro
           FOR EACH ROW
           BEGIN
                insert into Bitacora (Fecha,Accion,ValorActualizado,TablaAccion) values (NOW(),'Actualizar',NOW.id_Registro,'Historia');
           END;//
    delimiter ;

    delimiter //
    CREATE TRIGGER trDelR AFTER DELETE ON Registro
           FOR EACH ROW
           BEGIN
                insert into Bitacora (Fecha,Accion,ValorActualizado,TablaAccion) values (NOW(),'Eliminar',OLD.id_Registro,'Historia');
           END; //
    delimiter ;
	insert into Usuario values(1,'Tabo style','tabo_style@outlook',43,'M?ico','Qro',default,78,md5('Rammstein'));
	insert into Usuario values(2,'Laura Marin','Laura123@outlook',26,'M?ico','Qro',default,59,md5('potato'));
	insert into Usuario values(3,'Daniel Macotela','Daniel_117@outlook',19,'M?ico','Qro',default,80,md5('manco'));
	insert into Usuario values(4,'Adrihanx','Adrihanx@outlook',30,'M?ico','Qro',default,74,md5('anakaren'));
	insert into Usuario values(5,'Gerardo San','gerardo@outlook',22,'M?ico','Qro',default,78,md5('daniela'));
		insert into Historia (id_Historia) values(3743);
	insert into Historia values(3743,'3:31','Terror','Guillermo.G','esto es una Sinopsis',default,0,0,'superar la velosidad minima');
	insert into Historia values(4152,'10:02','Suspenso','Andre.R','esto es una Sinopsis',default,0,0,'superar la velosidad minima');
	insert into Historia values(5248,'8:32','Suspenso','Roberto.D','esto es una Sinopsis',default,0,0,'superar la velosidad minima');
	insert into Historia values(3409,'12:50','Romantica','Angelica.M','esto es una Sinopsis',default,0,0,'superar la velosidad minima');
	insert into Historia values(3710,'13:09','terror','Emilio.C','esto es una Sinopsis',default,0,0,'superar la velosidad minima');

	insert into Registro values(15345,1,'03-03-2017',3,4,1.3,10,300);
	insert into Registro values(13784,2,'12-03-2017',2,7,1.5,8.5,320);
	insert into Registro values(13783,3,'21-01-2017',5,2,2.35,9.5,200);
	insert into Registro values(13782,4,'15-03-2017',1,3,2.07,7.92,100);
	insert into Registro values(15344,5,'08-02-2017',6,6,3.42,12,300);

