
INSERT INTO Customer (customer_id,first_name, last_name, address, city, state, zip, phone)
	VALUES (91,'John', 'Schmidt', '123 Main Street', 'Logan', 'UT', '84321', '(435) 123-4567'),
		   (99,'Daryl', 'Filbin', '345 South Sumak', 'Scranton', 'PA', '23456', '(123) 234-5687')
;

INSERT INTO Producer (producer_id,name, address, city, state, zip, phone)
	VALUES (91,'Schrute Farms', 'My Beet farm', 'Scranton', 'PA', '54321', '(756) 435-7345'),
		   (46,'Athlead', '765 Philly Way', 'Philadelphia', 'PA', '54326', '(555) 555-5555')
;

INSERT INTO ChipDisposal (producer_id, qty_id, date_available, date_expire)
	VALUES (
			(SELECT producer_id FROM Producer WHERE name LIKE 'Schrute Farms'),
			1,
			CAST('2015-12-12' AS DATE),
			CAST('2015-12-31' AS DATE)
			),
		   (
			(SELECT producer_id FROM Producer WHERE name LIKE 'Athlead'),
			3,
			CAST('2015-06-15' AS DATE),
			CAST('2015-07-15' AS DATE)
		   )
;

INSERT INTO ChipRequest (customer_id, qty_id, date_available, date_expire)
	VALUES (
			(SELECT customer_id FROM Customer WHERE first_name LIKE 'John'),
			1,
			CAST('2015-12-12' AS DATE),
			CAST('2015-12-31' AS DATE)
			),
		   (
			(SELECT customer_id FROM Customer WHERE first_name LIKE 'Athlead'),
			3,
			CAST('2015-06-15' AS DATE),
			CAST('2015-07-15' AS DATE)
		   )
;
