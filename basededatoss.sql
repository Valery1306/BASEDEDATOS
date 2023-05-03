create database AgendamientoCitas;

use AgendamientoCitas;

create table historiaclinica(
 descripgeneralmedica bigint unsigned primary key not null auto_increment ,
 ultimacita varchar (50),
 datosgeneralespac varchar (200) not null);
 
 
 insert into historiaclinica() values (" 1452", "jueves", "Pepito perez");
 insert into historiaclinica() values (" 1492", "miercoles", "Alejandra Gomez 34 años");
 insert into historiaclinica() values (" 4563", "martes", "Sandra Lucia 17 años");
 insert into historiaclinica() values (" 4785", "viernes", "Constansa Ramirez 54 años");
 insert into historiaclinica() values ("2503", "martes", "Karla Lopez  65 años");
 insert into historiaclinica() values ("4775 ", "Viernes", "Pancha Berrantes 24 años");
insert into historiaclinica() values ("7852", "jueves ", "Sergio Diaz 17 años");
insert into historiaclinica() values ("7854", "miercoles", "Pily Barbosa 75 años");
insert into historiaclinica() values ("4778 ", "lunes ", "Yeimi Barbosa 30 años");
insert into historiaclinica() values ("785", "lunes ", "Camilo Perez 30 años");
 select * from historiaclinica;
 
 
 
create table paciente(
 numeroid bigint unsigned  not null primary key  auto_increment, 
 nombrecomple varchar (20) not null,
 correo  varchar (20) not null, 
 telefono int not null,
 descripgeneralmedicafk bigint unsigned not null, foreign key (descripgeneralmedicafk) references historiaclinica(descripgeneralmedica)
 );
  insert into paciente(nombrecomple, correo, telefono, descripgeneralmedicafk) values ( "Tatiana Perez Gomez", "tatiaoplo@gmail.com",7590182, "4778");
  insert into paciente() values ("Carolina Gomez Escobar", "caroescoba@gmail.com", "785");
  insert into paciente() values ( "Camilo Pancho Ramirez Rincon", "caramire@gmail.com", "3006995263");
  insert into paciente() values ( "Dylan Perez Gomez", "dydyperez@gmail.com", "3005669825");
  insert into paciente() values ( "Diego Stiven Pamplona Gomez", "diegostivv@gmail.com", "3215442058");
  insert into paciente() values ( "Luisa Sofia Pacheco Berrantes", "luisaapa@gmail.com", "354614368463");
  insert into paciente() values ( "Isabella Valentina Gomez", "vslertt@gmail.com", "3007814524");
  insert into paciente() values ( "Stefania Perez ", "bujoso@gmail.com", "1204522452");
  insert into paciente() values ( "Anastasia Hilton ", "hanastishilton@gmail.com", "123452134");
  insert into paciente() values ( "Camilo dniop Fernandez", "camildni@gmail.com", "3000887652");
  insert into paciente() values ("Tatiana Perez Gomez", "tatiaoplo@gmail.com", "3000887652");
 
 
 create table medico(
 docid bigint unsigned not null primary key   auto_increment, 
 correo varchar (20) not null,
 telefono int not null,
 nombrecomple varchar (30)
);
insert into medico() values ("1234", "adrelopp@gmail.com", "23445678", "Adriana Lucia Gomez Escobar");
insert into medico() values ("9876", "valerypamplona13@gmail.com", "89098765", "Valery Tatiana Pamplona Gomez");
insert into medico() values ("75643", "valentinasaave@gmail.com", "7564323", "Valentina Saavedra Gonzales");
insert into medico() values ("54676", "andrajise@gmail.com", "65783930", "Andra Jiseth Sanchez");
insert into medico() values ("53455", "mairaperez@gmail.com", "11129093", "Maira Perez");
insert into medico() values ("65456", "lauraaleja@gmail.com", "345676543", "Laura Alejandra Alonso");
insert into medico() values ("98876", "ginnaalexa@gmail.com", "66675858", "Ginna Alexandra Gomez");
insert into medico() values ("87960", "analuciagomez@gmail", "45237383", "Ana Lucia Escobar");
insert into medico() values ("90877", "mercedees@gmail.com", "88899933", "Mercedes Gutierrez Lemus");
insert into medico() values ("33455", "juangome@gmail.com", "65656567", "Juan Carlos Martinez");

 create table cita( 
descripcitapk bigint unsigned primary key not null  auto_increment, 
fecha date not null,
hora time,
costo int not null,
numeroidfk bigint unsigned not null, foreign key (numeroidfk) references paciente(numeroid),
docidfk bigint unsigned not null, foreign key (docidfk) references medico(docid)); 
insert into cita() values ("6/08/22", "7:00am", "10.000");
insert into cita() values ("2/08/22", "8:00am", "20.000");
insert into cita() values ("5/08/22", "6:00am", "2.500");
insert into cita() values ("3/09/22", "7:30am", "15.000");
insert into cita() values ("5/05/22", "8:45am", "14.300");
insert into cita() values ("5/12/22", "9:30am", "25.000");
insert into cita() values ("4/08/22", "6:55am", "7.300");
insert into cita() values ("8/08/22", "8:56am", "10.600");
insert into cita() values ("15/12/22", "10:00am", "45.000");
insert into cita() values ("23/1/22", "11:00am", "32.000");
insert into cita() values ("13/02/22", "10:30am", "6.000");


 create table horario(
 fecha date not null,
 hora time,
 docidfk bigint unsigned not null, foreign key (docidfk) references medico(docid)); 
  insert into horario() values ("4/08/22", "8:00am");
 insert into horario() values ("3/08/22", "9:00am");
 insert into horario() values ("5/08/22", "10:00am");
 insert into horario() values ("7/08/22", "6:00am");
 insert into horario() values ("3/07/22", "7:30am");
 insert into horario() values ("4/07/22", "7:40am");
 insert into horario() values ("5/06/22", "8:30am");
 insert into horario() values ("6/06/22", "8:45am");
 insert into horario() values ("13/06/22", "6:55am");
 insert into horario() values ("6/10/22", "11:11am");
 
 
 create table centromedico(
 direccion bigint unsigned primary key not null  auto_increment,
 nombre varchar (20) not null,
 docidfk bigint unsigned not null, foreign key (docidfk) references medico(docid)); 
 insert into centromedico() values ("Cra 122 #45 b", "Emaus");
  insert into centromedico() values ("Cra 133 #56 a", "San Jorge");
   insert into centromedico() values ("Cra 121 #78 s", "San Lucas");
    insert into centromedico() values ("Cra 34 #32 d", "Clinica Colombia");
     insert into centromedico() values ("Cra 133 #65 e", "San Cristobal");
      insert into centromedico() values ("Cra 12 #187 d", "San Martis");
       insert into centromedico() values ("Cra 45 #235 b", "Hospital central");
        insert into centromedico() values ("Cra 65 #4 g", "Henry sur ");
         insert into centromedico() values ("Cra 165 #78 t", "Hospital Guadalupe");
          insert into centromedico() values ("Cra 45 #67 h", "San Lopez");
 
 select fecha as Fecha, hora as Horas,docidFk as Medico from horario;
 
 select * from horario limit 5;
 
 select count(*) from medico where docid=2 or docid=4 or docid=6 or docid=8;
 
 select * from horario inner join medico;
           
 
 

 



