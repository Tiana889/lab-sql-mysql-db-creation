-- Sembrar la tabla 'Cars'
INSERT INTO Cars (VIN, Manufacturer, Model, Year, Color)
VALUES 
('1HGCM82633A123456', 'Honda', 'Civic', 2022, 'Blue'),
('2T1BURHE4JC123456', 'Toyota', 'Corolla', 2021, 'White'),
('3VWDP7AJ9EM123456', 'Volkswagen', 'Jetta', 2020, 'Black'),
('1FAFP40401F123456', 'Ford', 'Mustang', 2019, 'Red'),
('5NPE24AF4GH123456', 'Hyundai', 'Sonata', 2023, 'Silver');

-- Sembrar la tabla 'Customers'
INSERT INTO Customers (Name, PhoneNumber, Email, Address, City, State_Province, Country, ZipCode)
VALUES
('John Doe', '555-1234', 'johndoe@example.com', '123 Main St', 'Los Angeles', 'CA', 'USA', '90001'),
('Jane Smith', '555-5678', 'janesmith@example.com', '456 Oak St', 'New York', 'NY', 'USA', '10001'),
('Carlos Ramirez', '555-9012', 'carlosr@example.com', '789 Pine St', 'Miami', 'FL', 'USA', '33101'),
('Maria Gonzalez', '555-3456', 'maria.g@example.com', '101 Maple St', 'Houston', 'TX', 'USA', '77001'),
('Akira Suzuki', '555-7890', 'akira.s@example.com', '202 Birch St', 'San Francisco', 'CA', 'USA', '94101');

-- Sembrar la tabla 'Salespersons'
INSERT INTO Salespersons (Name, Store)
VALUES
('Emily Johnson', 'Los Angeles Branch'),
('Michael Brown', 'New York Branch'),
('Sarah Lee', 'Miami Branch'),
('David Wilson', 'Houston Branch'),
('Laura Kim', 'San Francisco Branch');

-- Sembrar la tabla 'Invoices'
INSERT INTO Invoices (InvoiceDate, VIN, CustomerID, SalespersonID)
VALUES
('2023-09-15', '1HGCM82633A123456', 1, 1),  -- John Doe compra un Honda Civic de Emily Johnson
('2023-09-20', '2T1BURHE4JC123456', 2, 2),  -- Jane Smith compra un Toyota Corolla de Michael Brown
('2023-09-25', '3VWDP7AJ9EM123456', 3, 3),  -- Carlos Ramirez compra un Volkswagen Jetta de Sarah Lee
('2023-10-01', '1FAFP40401F123456', 4, 4),  -- Maria Gonzalez compra un Ford Mustang de David Wilson
('2023-10-05', '5NPE24AF4GH123456', 5, 5);  -- Akira Suzuki compra un Hyundai Sonata de Laura Kim
