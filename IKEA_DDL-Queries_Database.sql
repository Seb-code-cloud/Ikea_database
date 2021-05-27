# Statement <CREATE DATABASE IKEA_Gruppe1;> Opretter en database med navnet "IKEA_Gruppe1"
CREATE DATABASE IKEA_Gruppe1;

# <USE IKEA_Gruppe1;> Gør det muligt at operere i databasen "IKEA_Gruppe1"
USE IKEA_Gruppe1;

# <CREATE TABLE CUSTOMER> Opretter tabellen 
# I parantesen tilføjes kolonner/attributter
# <VARCHAR(55)> betyder at værdien der insættes er bogstaver og kan holde op til 55 bogstaver
# <INT> betyder at værdien der insættes er tal
# <PRIMARY KEY (Customer_ID> betyder vi gør kollonen "Customer_ID" til primær nøgel i tabellen
CREATE TABLE Customer (
  Customer_ID INT NOT NULL AUTO_INCREMENT,
  Email VARCHAR(55),
  Reg_date  varchar(55),
  First_name VARCHAR(55),
  Last_name VARCHAR(55),
  Phone_number VARCHAR(55),
  Password VARCHAR(55),
  Country VARCHAR (55),
  Default_Shipping_Address VARCHAR(55),
  PRIMARY KEY (Customer_ID)
);

# Her oprettes tabellen IKEA_Stock. Her er ingen statements, som ikke allerede er beskrevet. 
CREATE TABLE IKEA_Stock (
  IKEA_Stock_ID INT,
  Address VARCHAR(55),
  City VARCHAR(55),
  PRIMARY KEY (IKEA_Stock_ID)
);

# Her oprettes tabellen Category. Her er ingen statements, som ikke allerede er beskrevet. 
CREATE TABLE Category (
  Category_ID INT,
  Name VARCHAR(55),
  Description VARCHAR(255),
  PRIMARY KEY (Category_ID)
);

# Her oprettes tabellen Orders.
# Statement <FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)> Betyder at kollonen "Customer_ID" tilføjes som fremmednøgle -->
# Fremmednøglen refererer til tabellen Customer, hvorfra den "henter" fremmednøglen "Customer_ID"
CREATE TABLE Orders (
 Order_ID INT,
 Customer_ID INT,
 Ammount VARCHAR(55),
 Shipping_Address VARCHAR(55),
 Order_Date VARCHAR(55),
 Order_Email VARCHAR(55),
 PRIMARY KEY (Order_ID),
 FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID)
);

# Her tilføjes 2 fremmednøgler. Nøglerne tilføjes på samme måde som beskrevet før. 
CREATE TABLE Products (
 Product_ID INT,
 Category_ID INT,
 IKEA_Stock_ID INT,
 Article_Number VARCHAR(55),
 Product_Name VARCHAR(55),
 Product_Description VARCHAR(255),
 Conditions INT,
 Stock INT,
 Price INT,
 PRIMARY KEY (Product_ID),
 FOREIGN KEY (Category_ID) REFERENCES Category(Category_ID),
 FOREIGN KEY (IKEA_Stock_ID) REFERENCES IKEA_Stock(IKEA_Stock_ID)
 );
 
# Orders_Details er en tabel bestående af de 2 primære nøgler fra tabellen "Orders" og "Products"
# Tabellen får derved 2 primære nøgler som tilføjes ved statement <PRIMARY KEY (Order_ID, Product_ID)
CREATE TABLE Orders_Details (
 Order_ID INT,
 Product_ID INT,
 SKU Varchar(55),
 PRIMARY KEY (Order_ID, Product_ID),
 FOREIGN KEY (Order_ID) REFERENCES Orders(Order_ID),
 FOREIGN KEY (Product_ID) REFERENCES Products(Product_ID)
);

# Her oprettes tabellen Sales. Her er ingen statements, som ikke allerede er beskrevet. 
CREATE TABLE Sales (
 Customer_ID INT,
 IKEA_Stock_ID INT,
 Article_Number VARCHAR(55),
 Sales_Condition INT,
 Lifetime_Functionality VARCHAR(55),
 PRIMARY KEY (Customer_ID, IKEA_Stock_ID)
);

# <ALTER TABLE Products> betyder at vi ønsker at tilføje en ændring i tabellen "Products"
# State ment < ALTER TABLE Products <ADD CONSTRAINT Conditions CHECK (Conditions >=6 AND Conditions <=10);> -->
# Betyder at vi ønsker at tilføje en begrænsning. Begrænsningen er i kolonnen "Conditions". 
# Kolonnen begrænses til kun at kunne være 6,7,8,9 eller 10.
ALTER TABLE Products
ADD CONSTRAINT Conditions CHECK (Conditions >=6 AND Conditions <=10);
