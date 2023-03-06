CREATE TABLE org (id bigint(20) DEFAULT 1,org_ref int(11) DEFAULT 1,company_ref int(11),order_number varchar(255),order_date date,order_customer_code varchar(64),order_item_code varchar(64),order_batch_name varchar(128),order_batch_expiry date,order_qty decimal(10,3),order_rate decimal(10,2),order_amount decimal(10,2),order_disc_percent decimal(10,3),order_disc_amount decimal(10,2),order_total_amount decimal(10,2));