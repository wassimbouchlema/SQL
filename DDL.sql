CREATE TABLE Product(
    Product_id VARCHAR2(20) PRIMARY KEY,
    Product_Name VARCHAR2(20) NOT NULL,
    Price NUMBER CHECK(Price>0)
);
CREATE TABLE Customer(
    Customer_id VARCHAR2(20) PRIMARY KEY,
    Customer_Name VARCHAR(20) NOT NULL,
    Customer_tel NUMBER 
);

CREATE TABLE Orders(
   Customer_id VARCHAR2(20),
    Product_id VARCHAR2(20),
    FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
    FOREIGN KEY (Product_id) REFERENCES Product(Product_id),
    Quantity NUMBER,
    Total_amount NUMBER,
    CONSTRAINT pk_primary PRIMARY KEY(Customer_id, Product_id)  
)
 ALTER TABLE Product ADD Category VARCHAR2(20);
  ALTER TABLE Orders ADD OrderDate DATE DEFAULT SYSDATE;