CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    OrderDate DATE,
    Quantity INT,
    PaymentStatus VARCHAR(10),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Customers VALUES (1, 'ABC Ltd'), (2, 'XYZ Pvt'), (3, 'Test Inc');
INSERT INTO Products VALUES (1, 'Widget', 120.00), (2, 'Gadget', 80.00), (3, 'Doodad', 50.00);
INSERT INTO Orders VALUES (1, 1, 1, '2024-06-10', 5, 'Paid');
INSERT INTO Orders VALUES (2, 2, 2, '2024-06-11', 2, 'Unpaid');
INSERT INTO Orders VALUES (3, 3, 3, '2024-06-12', 8, 'Paid');
INSERT INTO Orders VALUES (4, 1, 2, '2024-06-13', 3, 'Unpaid');
