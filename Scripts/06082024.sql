

CREATE TABLE Categoria (
CategoriaId int NOT NULL IDENTITY,
Nombre nvarchar(120) NOT NULL,
);

ALTER TABLE Categoria
ADD Constraint PK_Categoria PRIMARY KEY (CategoriaId);

CREATE TABLE Marca (
MarcaId int NOT NULL IDENTITY,
Nombre nvarchar(120) NOT NULL,
);

ALTER TABLE Marca
ADD Constraint PK_Marca PRIMARY KEY (MarcaId);

CREATE TABLE Producto(
ProductoID int NOT NULL IDENTITY,
NombreProducto nvarchar(120) NOT NULL,
Precio numeric (7,2) NOT NULL,
Costo numeric (7,2) NOT NULL,
CategoriaId int NOT NULL,
MarcaId int NOT NULL,
);

ALTER TABLE Producto
ADD CONSTRAINT PK_Producto PRIMARY KEY (ProductoId);

ALTER TABLE Producto
ADD CONSTRAINT FK_Producto_Categoria_CategoriaID FOREIGN KEY(CategoriaId)
REFERENCES Categoria (CategoriaId) ON DELETE CASCADE;

ALTER TABLE Producto
ADD CONSTRAINT FK_Producto_Marca_MarcaID FOREIGN KEY(MarcaId)
REFERENCES Marca (MarcaId) ON DELETE CASCADE;

INSERT INTO Categoria (Nombre)
Values ('Computadoras');

INSERT INTO Categoria (Nombre)
Values ('Impresoras');

INSERT INTO Marca (Nombre)
Values ('HP');

INSERT INTO Marca (Nombre)
Values ('Apple');
