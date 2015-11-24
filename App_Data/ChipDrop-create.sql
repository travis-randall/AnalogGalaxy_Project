BEGIN TRANSACTION;
CREATE SEQUENCE producer_id_aux AS INT
	START WITH 1
	INCREMENT BY 1
;
CREATE SEQUENCE map_id_aux AS INT
	START WITH 1
	INCREMENT BY 1
;

 CREATE SEQUENCE customer_id_aux AS INT
	START WITH 1
	INCREMENT BY 1
;

CREATE SEQUENCE disp_req_id_aux AS INT
	START WITH 1
	INCREMENT BY 1
;

CREATE TABLE ChipQty (
	qty_id INTEGER PRIMARY KEY,
	description VARCHAR(10)
);
INSERT INTO ChipQty VALUES (1,'Small'), (2,'Medium'), (3, 'Large');

CREATE TABLE Producer (
	producer_id		INTEGER PRIMARY KEY DEFAULT(NEXT VALUE FOR producer_id_aux),
	name		VARCHAR NOT NULL,
	address		VARCHAR,
	city		VARCHAR NOT NULL,
	state		VARCHAR NOT NULL,
	zip			VARCHAR,
	phone		VARCHAR NOT NULL,
);

CREATE TABLE ChipDisposal ( -- sell chips
	disposal_id 	INTEGER PRIMARY KEY DEFAULT(NEXT VALUE FOR disp_req_id_aux),
	producer_id		INTEGER NOT NULL,
	qty_id			INTEGER NOT NULL,
	price 			DECIMAL NOT NULL
	date_available	DATE NOT NULL,
	date_expire		DATE,
	CONSTRAINT ChipDisposal_qty_id_fk FOREIGN KEY (qty_id)
			REFERENCES ChipQuantity (qty_id),
	CONSTRAINT ChipDisposal_producer_id_fk FOREIGN KEY (producer_id) 
			REFERENCES Producer (producer_id)
);

CREATE TABLE Customer (
	customer_id		INTEGER PRIMARY KEY DEFAULT(NEXT VALUE FOR customer_id_aux),
	name			VARCHAR NOT NULL,
	address			VARCHAR NOT NULL,
	city			VARCHAR NOT NULL,
	state			VARCHAR NOT NULL,
	zip				VARCHAR NOT NULL,
	phone			VARCHAR NOT NULL
);

CREATE TABLE ChipRequest( -- buy chips
	request_id INTEGER PRIMARY KEY DEFAULT(NEXT VALUE FOR disp_req_id_aux),
	customer_id		INTEGER NOT NULL,
	qty				DECIMAL NOT NULL,
	date_available	DATE    NOT NULL,
	date_expire		DATE    NOT NULL,
	CONSTRAINT ChipRequest_customer_id_fk FOREIGN KEY (customer_id)
			REFERENCES Customer (customer_id),
);

CREATE TABLE ChipDisposalCompleteMap ( -- this table is the mapping for chip disposal listing filled by Customers
	map_id INTEGER PRIMARY KEY DEFAULT(NEXT VALUE FOR map_id_aux),
	disposal_id		INTEGER NOT NULL,
	customer_id		INTEGER NOT NULL FOREIGN KEY REFERENCES Customer (customer_id),
	qty				INTEGER NOT NULL,
	date_reqeusted	DATE NOT NULL,
	date_delivered	DATE
	CONSTRAINT ChipDisposalCompleteMap_disposal_id_fk FOREIGN KEY (disposal_id)
			REFERENCES ChipDisposal (disposal_id),
	CONSTRAINT ChipDisposalCompleteMap_customer_id_fk FOREIGN KEY (customer_id)
			REFERENCES Customer (customer_id)
);

CREATE TABLE ChipRequestCompleteMap ( -- this table is the mapping for chip disposal listing filled by Customers
	map_id INTEGER PRIMARY KEY DEFAULT(NEXT VALUE FOR map_id_aux),
	request_id		INTEGER NOT NULL,
	producer_id		INTEGER NOT NULL,
	qty				INTEGER NOT NULL,
	date_reqeusted	DATE NOT NULL,
	date_delivered	DATE
	CONSTRAINT ChipRequestCompleteMap_disposal_id_fk FOREIGN KEY (request_id)
			REFERENCES ChipRequest (request_id),
	CONSTRAINT ChipRequestCompleteMap_producer_id_fk FOREIGN KEY (producer_id)
			REFERENCES Producer (producer_id)
);

COMMIT;