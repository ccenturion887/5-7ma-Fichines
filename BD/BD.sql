DROP DATABASE IF EXISTS Fichines;
CREATE DATABASE Fichines;
USE Fichines;

CREATE TABLE Fichin(
		idFichin SMALLINT NOT NULL,
		nombre VARCHAR(45) NOT NULL,
		anio YEAR NOT NULL,
		precio DECIMAL(7,2) NULL,
		PRIMARY KEY (idFichin)
);

CREATE TABLE Cliente(
		DNI INT UNSIGNED NOT NULL,
		nombre VARCHAR(45) NOT NULL,
		apellido VARCHAR(45) NOT NULL,
		mail VARCHAR(45) NOT NULL,
		tarjeta INT NOT NULL,
		saldo DECIMAL(7,2) NULL,
        contrasena CHAR(64) NOT NULL,
		PRIMARY KEY (DNI)
);

CREATE TABLE Recarga(
		fechaHora DATETIME,
		DNI INT UNSIGNED,
		monto DECIMAL(7,2) NOT NULL,
		PRIMARY KEY (fechaHora, DNI),
		FOREIGN KEY (DNI) references Fichines.Cliente (DNI)
);

CREATE TABLE Gasto(
		fechaHora DATETIME,
		DNI INT UNSIGNED,
		gasto DECIMAL(7,2) NOT NULL,
		idFichin SMALLINT,
        PRIMARY KEY (fechaHora, DNI),
        FOREIGN KEY (idFichin) references Fichines.Fichin (idFichin),
        FOREIGN KEY (DNI) references Fichines.Cliente (DNI)
);
