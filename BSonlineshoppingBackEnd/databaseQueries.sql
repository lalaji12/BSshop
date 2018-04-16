

CREATE TABLE category (
 id IDENTITY,
 name VARCHAR(50),
 description VARCHAR(255),
 image_url VARCHAR(50),
 is_active BOOLEAN,

 CONSTRAINT pk_category_id PRIMARY KEY(id)


);
INSERT INTO category (name,description,image_url,is_active) VALUES ('Laptop','This is description for Laptop Category!','CAT_1.png',true);
INSERT INTO category (name,description,image_url,is_active) VALUES ('Television','This is description for Television Category!','CAT_2.png',true);
INSERT INTO category (name,description,image_url,is_active) VALUES ('Mobile','This is description for Mobile Category!','CAT_3.png',true);

CREATE TABLE user_detail(
  id IDENTITY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  role VARCHAR(50),
  enabled BOOLEAN,
  password VARCHAR(50),
  email VARCHAR(50),
  contact_number VARCHAR(50),
  CONSTRAINT pk_user_id PRIMARY KEY(id),
);

INSERT INTO user_detail
(first_name, last_name, role, enabled, password, email, contact_number)
VALUES('bala', 'rajen', 'ADMIN', 'true', 'admin', 'bala@gmail.com', '9987776655');

INSERT INTO user_detail
(first_name, last_name, role, enabled, password, email, contact_number)
VALUES('vishnu', 'vishal', 'SUPPLIER', 'true', '1111', 'vishnu@gmail.com', '99189923344');

INSERT INTO user_detail
(first_name, last_name, role, enabled, password, email, contact_number)
VALUES('sathish', 'seon', 'SUPPLIER', 'true', '1111', 'sathish@gmail.com', '9999778899');

CREATE TABLE product (
id IDENTITY,
code VARCHAR(20),
name VARCHAR(50),
brand VARCHAR(50),
description VARCHAR(255),
unit_price DECIMAL(10,2),
quantity INT,
is_active BOOLEAN,
category_id INT,
supplier_id INT,
purchases INT DEFAULT 0,
views INT DEFAULT 0,
CONSTRAINT pk_product_id PRIMARY KEY (id),
CONSTRAINT fk_product_category_id FOREIGN KEY (category_id) REFERENCES category (id),
CONSTRAINT fk_product_supplier_id FOREIGN KEY (supplier_id) REFERENCES user_detail(id),
);

INSERT INTO product(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
VALUES('PRDABC12345', 'iPhone 7', 'Apple', 'This is one of the best android smart phone available in the market right now!', '75000','3', 'true', 3,2);

INSERT INTO product(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
VALUES('PRDABC12346', 'Samsung J7 pro', 'Samsung', 'This is one of the best android smart phone available in the market right now!', '22000','2', 'true', 3,3);

INSERT INTO product(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
VALUES('PRDABC12347', 'GOOGLE PIXEL', 'google', 'This is one of the best android smart phone available in the market right now!', '65000','4', 'true', 3,3);

INSERT INTO product(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
VALUES('PRDPQR11111', 'dell inspiron 5000 series', 'dell', 'This is one of the best Laptop available in the market right now!', '56000','2', 'true', 1,2);

INSERT INTO product(code, name, brand, description, unit_price, quantity, is_active, category_id, supplier_id)
VALUES('PRDMNO22222', 'Sony HD wave', 'sony', 'This is one of the best television  available in the market right now!', '80000','5', 'true', 2,3);
