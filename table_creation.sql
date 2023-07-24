-- Create database
create database car_dealership_sheel;

-- Car table creation
create table cars_s(
	car_vin VARCHAR(100) primary key, 
	car_status VARCHAR (100),
	car_maker VARCHAR(100),
	car_model VARCHAR(100),
	car_type VARCHAR(100),
	car_capacity VARCHAR(50),
	car_description VARCHAR(150),
	car_price VARCHAR (100)
);

-- Customer table creation 
create table customers_s(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(100),
	telephone VARCHAR(50),
	address VARCHAR(100)
);

-- Staff table creation 
create table staff_s(
	staff_id SERIAL primary key,
	staff_type VARCHAR(100),
	staff_email VARCHAR(100),
	staff_name VARCHAR(100)
);

-- Sales table creation 
create table sales_s(
	sales_id SERIAL primary key,
	car_vin VARCHAR(100),
	staff_id SERIAL,
	customer_id SERIAL,
	sale_date date,
	sale_price NUMERIC(10,2),
	sale_notes VARCHAR(100),
	foreign key (car_vin) references cars_s(car_vin),
	foreign key (staff_id) references staff_s(staff_id),
	foreign key (customer_id) references customers_S(customer_id)
);



-- Transactions table creation 
create table transactions_s(
	tx_id SERIAL primary key,
	sales_id SERIAL,
	staff_id SERIAL,
	tx_amount numeric (10,2),
	tx_type VARCHAR(100),
	tx_notes VARCHAR(100),
	foreign key (sales_id) references sales_s(sales_id),
	foreign key (staff_id) references staff_s(staff_id)
);


-- Appointment table creation 
create table appt_s(
	appt_id SERIAL primary key,
	customer_id SERIAL,
	staff_id SERIAL,
	appt_date date, 
	appt_notes VARCHAR(100),
	foreign key (customer_id) references customers_s(customer_id),
	foreign key (staff_id) references staff_s(staff_id)
);

-- Test Drive table creation 
create table test_drive_s(
	test_start date primary key, 
	car_vin VARCHAR(100),
	staff_id SERIAL,
	customer_id SERIAL, 
	appt_id SERIAL,
	test_end date, 
	test_notes VARCHAR(100),
	foreign key (car_vin) references cars_s (car_vin),
	foreign key (staff_id) references staff_s(staff_id),
	foreign key (customer_id) references customers_s(customer_id),
	foreign key(appt_id) references appt_s(appt_id)
);



