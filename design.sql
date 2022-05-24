

CREATE TABLE supplier (
	
    id int(100) unsigned AUTO_INCREMENT NOT NULL,
    name varchar(100) not null ,
    phone varchar(100) not null UNIQUE,
    email varchar(255)  NOT null UNIQUE,
    brief_data text NOT null ,
    PRIMARY KEY (id)
 );


CREATE TABLE product (
	
    id int(100) unsigned UNIQUE,
    name varchar(100) not null ,
    code varchar(100) not null ,
    discription varchar(255)  NOT null ,
    price DECIMAL(8,2) NOT NULL ,
    supplier_id INT unsigned AUTO_INCREMENT,
    FOREIGN KEY (supplier_id) REFERENCES supplier(id)
);


CREATE TABLE store (
	
    id int(100) unsigned UNIQUE,
    name varchar(100) not null ,
    addres varchar(255) not null ,
    product_id int(100) unsigned AUTO_INCREMENT NOT null ,
    PRIMARY KEY (id) ,
    FOREIGN KEY (product_id) REFERENCES product(id)
);

