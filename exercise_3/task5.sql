create table Employees(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255)

);
create Table Customers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255)
);

create table Orders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    sold_by INT REFERENCES Employees (id) ON DELETE SET NULL ON UPDATE CASCADE,
    buyer INT REFERENCES Customers (id) ON DELETE RESTRICT ON UPDATE CASCADE

);