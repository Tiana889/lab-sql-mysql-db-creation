CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

-- Creación de la tabla 'Cars'
CREATE TABLE Cars (
    VIN VARCHAR(17) PRIMARY KEY,  -- Clave primaria (VIN del automóvil)
    Manufacturer VARCHAR(50) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    Year INT NOT NULL,
    Color VARCHAR(20) NOT NULL
);

-- Creación de la tabla 'Customers'
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,  -- Clave primaria autoincremental
    Name VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100),
    Address VARCHAR(255),
    City VARCHAR(50),
    State_Province VARCHAR(50),
    Country VARCHAR(50),
    ZipCode VARCHAR(10)
);

-- Creación de la tabla 'Salespersons'
CREATE TABLE Salespersons (
    SalespersonID INT AUTO_INCREMENT PRIMARY KEY,  -- Clave primaria autoincremental
    Name VARCHAR(100) NOT NULL,
    Store VARCHAR(100) NOT NULL
);

-- Creación de la tabla 'Invoices'
CREATE TABLE Invoices (
    InvoiceNumber INT AUTO_INCREMENT PRIMARY KEY,  -- Clave primaria autoincremental
    InvoiceDate DATE NOT NULL,
    VIN VARCHAR(17),  -- Clave foránea que referencia la tabla 'Cars'
    CustomerID INT,  -- Clave foránea que referencia la tabla 'Customers'
    SalespersonID INT,  -- Clave foránea que referencia la tabla 'Salespersons',
    FOREIGN KEY (VIN) REFERENCES Cars(VIN),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (SalespersonID) REFERENCES Salespersons(SalespersonID)
);
