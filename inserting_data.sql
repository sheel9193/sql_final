-- Stored function to add staff_id

create or replace function add_staff_s(
	_staff_id INTEGER,
	_staff_type VARCHAR,
	_staff_email VARCHAR,
	_staff_name VARCHAR
)
returns void
as $MAIN$
begin 
	insert into staff_s(staff_id, staff_type, staff_email, staff_name)
	values (_staff_id, _staff_type, _staff_email, _staff_name);
end;
$MAIN$
language plpgsql;

-- Calling function to add data 
select add_staff_s('5986','Mechanic', 'james.worthy@bmw.com', 'James Worthy');


-- Creating stored function to customer
create or replace function add_customers_s(
	_customer_id INTEGER,
	_first_name VARCHAR,
	_last_name VARCHAR,
	_email VARCHAR,
	_telephone VARCHAR,
	_address VARCHAR
)
returns void 
as $MAIN$
begin 
	insert into customers_s(customer_id, first_name, last_name, email, telephone, address)
	values (_customer_id, _first_name, _last_name, _email, _telephone, _address);
end;
$MAIN$
language plpgsql;

-- Calling function to customer 
select add_customers_s ('20810234', 'Magic', 'Johnson', 'mjohnson@lakers.com', '879-845-7981', '53813 Los Angeles Road, Los Angeles, CA 69532');










-- Staff table creation 
create table staff_s(
	staff_id SERIAL primary key,
	staff_type VARCHAR(100),
	staff_email VARCHAR(100),
	staff_name VARCHAR(100)
);

