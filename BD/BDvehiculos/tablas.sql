-- CREAR BASE DE DATOS
CREATE SCHEMA AlquilerVehiculos;
USE AlquilerVehiculos;
-- CREAR TABLAS
CREATE TABLE Parkings (
    id_parking INT PRIMARY KEY,
    name_parking VARCHAR(50),
    ciudad VARCHAR(50),
    location_parking VARCHAR(100),
    nombre VARCHAR(50),
    telefono VARCHAR(15)
);
CREATE TABLE Vehicles (
    id_vehicle INT PRIMARY KEY,
    model VARCHAR(50),
    brand VARCHAR(50),
    license_plate VARCHAR(10),
    nombre_tipo VARCHAR(50),
);
CREATE TABLE Distribucion (
    id_parking INT,
    id_vehicle INT,
    cant INT,
    FOREIGN KEY (id_parking) REFERENCES Parkings(id_parking),
    FOREIGN KEY (id_vehicle) REFERENCES Vehicles(id_vehicle)
);
CREATE TABLE rentals (
    id_rental INT PRIMARY KEY,
    id_vehicle INT,
    id_customer INT,
    rental_start_date DATE,
    rental_end_date DATE,
    start_parking_id INT,
    end_parking_id INT,
    FOREIGN KEY (id_vehicle) REFERENCES Vehicles(id_vehicle),
    FOREIGN KEY (id_customer) REFERENCES Customers(id_customer),
    FOREIGN KEY (start_parking_id) REFERENCES Parkings(id_parking),
    FOREIGN KEY (end_parking_id) REFERENCES Parkings(id_parking)
);
CREATE TABLE Customers (
    id_customer INT PRIMARY KEY,
    name_customer VARCHAR(50),
    email VARCHAR(50),
    pass VARCHAR(20),
    phone_number VARCHAR(15),
    domicilio VARCHAR(50)
);
-- Insertar datos clientes
INSERT INTO `Customers`(1,'Ryan García','RyanBoxer@gmail.com','123456789','Madrid','Gervonta28');
INSERT INTO `Customers`(2,'Armando Torres','Armandito777@gmail.com','637456378','Madrid','Klkbb09');
INSERT INTO `Customers`(3,'cliente 3','cliente3@gmail.com','333333333','Barcelona','Tres333');
INSERT INTO `Customers`(4,'cliente 4','cliente4@gmail.com','444444444','Valencia','Cuatro444');
INSERT INTO `Customers`(5,'cliente 5','cliente5@gmail.com','555555555','Córdoba','Cinco555');
-- Insertar datos vehiculos
INSERT INTO Vehicles (id_vehicle, model, brand, license_plate, nombre_tipo) VALUES 
(1, 'C3', 'Citroen', 'FDR2334', 'coche'),
(2, 'Golf', 'Volkswagen', 'CBA4443', 'coche'),
(3, 'Clio', 'Renault', 'KDS7588', 'coche'),
(4, 'Clio', 'Renault', 'HDA9304', 'coche'),
(5, 'Touareg', 'Volkswagen', 'LOA8271', '4x4'),
(6, 'X5', 'BMW', 'AOD6668', '4x4'),
(7, 'Qashqai', 'Nissan', 'FSD3243', '4x4'),
(8, 'Monster', 'Ducati', 'JDE9391', 'moto'),
(9, 'R15', 'Yamaha', 'GZB5628', 'moto'),
(10, 'CBR 600', 'Honda', 'LKA1112', 'moto'),
(11, 'Transit', 'Ford', 'QWE4455', 'furgoneta'),
(12, 'Vito', 'Mercedes-Benz', 'PSW8933', 'furgoneta'),
(13, 'Berlingo', 'Citroen', 'RDK1234', 'furgoneta'),
(14, 'Transit', 'Ford', 'KJB6666', 'furgoneta'),
(15, 'C4 Picasso', 'Citroen', 'CVB4567', 'coche'),
(16, '911', 'Porsche', 'PDA2736', 'coche'),
(17, 'Civic', 'Honda', 'JHK1234', 'coche'),
(18, 'Clio', 'Renault', 'ZXC6789', 'coche'),
(19, 'Golf', 'Volkswagen', 'JKL4321', 'coche'),
(20, 'Fiesta', 'Ford', 'QWE4321', 'coche'),
(21, 'X5', 'BMW', 'UIO6543', '4x4'),
(22, 'Qashqai', 'Nissan', 'ASD0987', '4x4'),
(23, 'Outlander', 'Mitsubishi', 'QWE5643', '4x4'),
(24, 'Touareg', 'Volkswagen', 'JHG3456', '4x4'),
(25, 'R15', 'Yamaha', 'TYU2345', 'moto'),
(26, 'Harley Davidson', 'Harley Davidson', 'FGH5432', 'moto'),
(27, 'Monster', 'Ducati', 'KLO9087', 'moto'),
(28, 'Sprinter', 'Mercedes-Benz', 'WES6789', 'furgoneta'),
(29, 'Transit', 'Ford', 'GFT4567', 'furgoneta'),
(30, 'Berlingo', 'Citroen', 'WER5432', 'furgoneta'),
(31, 'C5', 'Citroen', 'HJK7890', 'coche'),
(32, 'Astra', 'Opel', '2378HJG', 'Coche'),
(33, 'Golf', 'Volkswagen', '9245KLJ', 'Coche'),
(34, 'Sprinter', 'Mercedes-Benz', '7439KDF', 'Furgoneta'),
(35, 'Transit', 'Ford', '4632GHJ', 'Furgoneta'),
(36, 'Clio', 'Renault', '3721JHN', 'Coche'),
(37, 'Panda', 'Fiat', '6732JKL', 'Coche'),
(38, 'Berlingo', 'Citroen', '5238DFG', 'Furgoneta'),
(39, 'Panda', 'Fiat', '8942HGF', 'Coche'),
(40, 'Qashqai', 'Nissan', '6342KLO', '4x4'),
(41, 'Touareg', 'Volkswagen', '4589GFD', '4x4'),
(42, 'Vito', 'Mercedes-Benz', '4621JFK', 'Furgoneta'),
(43, 'Expert', 'Peugeot', '3247DFG', 'Furgoneta'),
(44, 'Corsa', 'Opel', '5378HKL', 'Coche'),
(45, 'Fiesta', 'Ford', '8561KLO', 'Coche'),
(46, 'Qashqai', 'Nissan', '7482GFD', '4x4'),
(47, 'Range Rover', 'Land Rover', '3719JFG', '4x4');

--Rellenar parkings

INSERT INTO Parkings (id_parking, name_parking, ciudad, location_parking, responsable, telefono) 
VALUES (1, 'Parking Gran Vía', 'Madrid', 'Calle Gran Vía, 1', 'Juan Pérez', '+34 911 111 111');

INSERT INTO Parkings (id_parking, name_parking, ciudad, location_parking, responsable, telefono) 
VALUES (2, 'Parking Plaza de España', 'Barcelona', 'Plaza de España, 1', 'María García', '+34 922 222 222');

INSERT INTO Parkings (id_parking, name_parking, ciudad, location_parking, responsable, telefono) 
VALUES (3, 'Parking Catedral', 'Sevilla', 'Calle Mateos Gago, 10', 'Manuel López', '+34 933 333 333');

INSERT INTO Parkings (id_parking, name_parking, ciudad, location_parking, responsable, telefono) 
VALUES (4, 'Parking Plaza Mayor', 'Valencia', 'Plaza Mayor, 1', 'Laura Martínez', '+34 944 444 444');

INSERT INTO Parkings (id_parking, name_parking, ciudad, location_parking, responsable, telefono) 
VALUES (5, 'Parking Oviedo', 'Asturias', 'Calle Uría, 5', 'Marta Sánchez', '+34 955 555 555');

INSERT INTO Parkings (id_parking, name_parking, ciudad, location_parking, responsable, telefono) 
VALUES (6, 'Parking Granada', 'Granada', 'Calle Navas, 1', 'Pedro García', '+34 966 666 666');

-- rellenar distribucion

INSERT INTO Distribucion (id_parking, id_vehicle)
VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (1, 4),
    (1, 5),
    (1, 6),
    (1, 7),
    (1, 8),
    (2, 9),
    (2, 10),
    (2, 11),
    (2, 12),
    (2, 13),
    (2, 14),
    (2, 15),
    (3, 16),
    (3, 17),
    (3, 18),
    (3, 19),
    (3, 20),
    (3, 21),
    (3, 22),
    (3, 23),
    (3, 24),
    (4, 25),
    (4, 26),
    (4, 27),
    (4, 28),
    (4, 29),
    (4, 30),
    (4, 31),
    (4, 32),
    (5, 33),
    (5, 34),
    (5, 35),
    (5, 36),
    (5, 37),
    (5, 38),
    (5, 39),
    (5, 40),
    (5, 41),
    (6, 42),
    (6, 43),
    (6, 44),
    (6, 45),
    (6, 46),
    (6, 47);
