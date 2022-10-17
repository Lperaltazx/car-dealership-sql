
create table my_service(
	service_id SERIAL PRIMARY KEY,
    service_invoice INTEGER,
    service_history VARCHAR(260), 
    mechanic_id INTEGER, 
    car_id INTEGER
);

create table customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
    phone INTEGER(10),
    email VARCHAR(20),
    did_Buy boolean,
    service_id type,
    FOREIGN KEY (service_id) REFERENCES my_service(service_id)
);

create table salesperson(
	salesperson_id SERIAL PRIMARY KEY,
	first_name VARCHAR(20),
	last_name VARCHAR(20)
);

create table car(
	car_id SERIAL PRIMARY KEY,
    used_car INTEGER,
    new_car INTEGER
);

create table invoice (
	invoice_id SERIAL PRIMARY KEY,
    isPaid boolean,
	customer_id INTEGER NOT NULL,
	salesperson_id INTEGER NOT NULL,
	car_id INTEGER NOT NULL,
    service_id INTEGER NOT NULL,
	FOREIGN KEY	(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY	(salesperson_id) REFERENCES salesperson(salesperson_id),
	FOREIGN KEY	(car_id) REFERENCES car(car_id),
    FOREIGN KEY (service_id) REFERENCES my_service(service_id)
);