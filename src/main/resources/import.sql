/* Populate tables */
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Andres', 'Guzman', 'profesor@bolsadeideas.com', '2017-08-01','');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('John', 'Doe', 'john.doe@gmail.com', '2017-08-02','');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Linus', 'Torvalds', 'linus.torvalds@gmail.com', '2017-08-03','');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Jane', 'Doe', 'jane.doe@gmail.com', '2017-08-04','');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Rasmus', 'Lerdorf', 'rasmus.lerdorf@gmail.com', '2017-08-05','');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Erich', 'Gamma', 'erich.gamma@gmail.com', '2017-08-06','');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Richard', 'Helm', 'richard.helm@gmail.com', '2017-08-07','');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Ralph', 'Johnson', 'ralph.johnson@gmail.com', '2017-08-08','');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('John', 'Vlissides', 'john.vlissides@gmail.com', '2017-08-09','');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('James', 'Gosling', 'james.gosling@gmail.com', '2017-08-010','');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Bruce', 'Lee', 'bruce.lee@gmail.com', '2017-08-11','');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Johnny', 'Doe', 'johnny.doe@gmail.com', '2017-08-12','');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('John', 'Roe', 'john.roe@gmail.com', '2017-08-13','');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Jane', 'Roe', 'jane.roe@gmail.com', '2017-08-14','');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Richard', 'Doe', 'richard.doe@gmail.com', '2017-08-15','');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Janie', 'Doe', 'janie.doe@gmail.com', '2017-08-16','');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Phillip', 'Webb', 'phillip.webb@gmail.com', '2017-08-17','');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Stephane', 'Nicoll', 'stephane.nicoll@gmail.com', '2017-08-18','');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Sam', 'Brannen', 'sam.brannen@gmail.com', '2017-08-19','');  
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Juergen', 'Hoeller', 'juergen.Hoeller@gmail.com', '2017-08-20',''); 
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Janie', 'Roe', 'janie.roe@gmail.com', '2017-08-21','');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('John', 'Smith', 'john.smith@gmail.com', '2017-08-22','');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Joe', 'Bloggs', 'joe.bloggs@gmail.com', '2017-08-23','');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('John', 'Stiles', 'john.stiles@gmail.com', '2017-08-24','');
INSERT INTO clientes (nombre, apellido, email, create_at, foto) VALUES('Richard', 'Roe', 'stiles.roe@gmail.com', '2017-08-25','');


/* importar datos a tabla producti*/
insert into productos (nombre, precio, create_at) values ('Acer Aspire, i5', 300000, NOW());
insert into productos (nombre, precio, create_at) values ('Lenovo IdealPad, i7', 120000, NOW());
insert into productos (nombre, precio, create_at) values ('Asus Rog, i5', 400000, NOW());
insert into productos (nombre, precio, create_at) values ('HP Pavilion 5, AMD athlon', 250000, NOW());

/* crear factura dato tabla facturas*/
INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) values ('comprar computadora, oficina', 'null',1, NOW());
insert into facturas_items (cantidad, factura_id, producto_id) values (2,1,1);
insert into facturas_items (cantidad, factura_id, producto_id) values (4,1,1);
insert into facturas_items (cantidad, factura_id, producto_id) values (3,1,1);

/* crear datos tabla proveedores*/

insert into proveedores (nombre,apellido,correo, telefono, ciudad, empresa, foto) values('Carlos', 'Bravo', 'cbravo4@gmail.com', 87673717, 'La Serena', 'Bravo S.A', '');
insert into proveedores (nombre,apellido,correo, telefono, ciudad, empresa, foto) values('Rocio', 'Manzano', 'rmanzanov@gmail.com', 54656435, 'Ovashe', 'Gemelas S.A','');
insert into proveedores (nombre,apellido,correo, telefono, ciudad, empresa, foto) values('Alvaro', 'Fonseca', 'afonseca4@pluralcapacita.com', 36764346, 'La Serena', 'PhotoFonseca S.A','');
insert into proveedores (nombre,apellido,correo, telefono, ciudad, empresa, foto) values('Enis', 'Manzano', 'Emanzanov@gmail.com', 356466646, 'Ovashe', 'Gemelas S.A','');
insert into proveedores (nombre,apellido,correo, telefono, ciudad, empresa, foto) values('Karla', 'Galleguillos', 'kgalleguillos@gmail.com', 69188917, 'La Serena', 'GalleguillosK S.A','');