CREATE TABLE `PRODUCTILINE` (
  `productiline` int PRIMARY KEY,
  `TextDecription` text,
  `htmlDecription` tekt,
  `image` varchar(255)
);

CREATE TABLE `EMPLOYEES` (
  `employeesNumber` int PRIMARY KEY,
  `LastName` varchar(255),
  `firstName` varchar(255),
  `ektension` bool,
  `email` varchar(255),
  `officeCode` int,
  `reportTo` varchar(255),
  `jobTitle` varchar(255)
);

CREATE TABLE `PRODUCTS` (
  `productCode` int PRIMARY KEY,
  `producName` varchar(255),
  `productLine` varchar(255),
  `productScale` varchar(255),
  `producttableVendor` varchar(255),
  `productDescription` varchar(255),
  `quantitylnStock` varchar(255),
  `buyPrice` varchar(255),
  `MSRP` int
);

CREATE TABLE `OFFICES` (
  `officeCode` int PRIMARY KEY,
  `city` varchar(255),
  `phone` varchar(255),
  `addressLine1` varchar(255),
  `addressLine2` varchar(255),
  `state` varchar(255),
  `country` varchar(255),
  `postalCode` int,
  `territory` varchar(255)
);

CREATE TABLE `CUSTOMERS` (
  `customerNumber` int PRIMARY KEY,
  `customerName` varchar(255),
  `contactLastName` varchar(255),
  `contactFirstName` varchar(255),
  `phone` varchar(255),
  `addressLine1` varchar(255),
  `addressLine2` varchar(255),
  `city` varchar(255),
  `postalCode` int,
  `country` varchar(255),
  `salesRepEmloyeeNumber` varchar(255),
  `creditLimit` varchar(255)
);

CREATE TABLE `ORDERDETALIS` (
  `orderNumber` int PRIMARY KEY,
  `productCode` int,
  `quantityOrdered` varchar(255),
  `priceEach` varchar(255),
  `orderLineNumber` int
);

CREATE TABLE `ORDERS` (
  `orderNumber` int PRIMARY KEY,
  `orderDate` varchar(255),
  `requereDate` varchar(255),
  `shippedDate` varchar(255),
  `statuas` varchar(255),
  `comment` varchar(255),
  `custumerNumber` int
);

CREATE TABLE `PAYMENTS` (
  `custumerNumber` int PRIMARY KEY,
  `checkNumber` varchar(255),
  `paymentDate` varchar(255),
  `amount` varchar(255)
);

ALTER TABLE `ORDERS` ADD FOREIGN KEY (`custumerNumber`) REFERENCES `CUSTOMERS` (`customerNumber`);

ALTER TABLE `PAYMENTS` ADD FOREIGN KEY (`custumerNumber`) REFERENCES `CUSTOMERS` (`customerNumber`);

ALTER TABLE `ORDERDETALIS` ADD FOREIGN KEY (`productCode`) REFERENCES `PRODUCTS` (`productCode`);

ALTER TABLE `OFFICES` ADD FOREIGN KEY (`officeCode`) REFERENCES `EMPLOYEES` (`officeCode`);

ALTER TABLE `PRODUCTS` ADD FOREIGN KEY (`productLine`) REFERENCES `PRODUCTILINE` (`productiline`);

ALTER TABLE `ORDERS` ADD FOREIGN KEY (`orderNumber`) REFERENCES `ORDERDETALIS` (`orderNumber`);
