-- create olist_customers table and load csv data
CREATE TABLE raw_brazilian_ecommerce.commercial.olist_customers(
    customer_id varchar,
    customer_unique_id varchar,
    customer_zip_code_prefix varchar,
    customer_city varchar,
    customer_state varchar
);

COPY raw_brazilian_ecommerce.commercial.olist_customers
FROM '/your-path-to-downloaded-data/olist_customers_dataset.csv'
DELIMITER ','
CSV HEADER;


-- create olist_order_items table and load csv data
CREATE TABLE raw_brazilian_ecommerce.commercial.olist_order_items(
    order_id varchar,
    order_item_id varchar,
    product_id varchar,
    seller_id varchar,
    shipping_limit_date timestamp,
    price float,
    freight_value float
);

COPY raw_brazilian_ecommerce.commercial.olist_order_items
FROM '/your-path-to-downloaded-data/olist_order_items_dataset.csv'
DELIMITER ','
CSV HEADER;


-- create olist_order_payments table and load csv data
CREATE TABLE raw_brazilian_ecommerce.commercial.olist_order_payments(
    order_id varchar,
    payment_sequential numeric,
    payment_type varchar,
    payment_installments numeric,
    payment_value float
);

COPY raw_brazilian_ecommerce.commercial.olist_order_payments
FROM '/your-path-to-downloaded-data/olist_order_payments_dataset.csv'
DELIMITER ','
CSV HEADER;


-- create olist_order_reviews table and load csv data
CREATE TABLE raw_brazilian_ecommerce.commercial.olist_order_reviews(
	  review_id varchar,
    order_id varchar,
    review_score numeric,
    review_comment_title varchar,
    review_comment_message varchar,
    review_creation_date timestamp,
    review_answer_timestamp timestamp
);

COPY raw_brazilian_ecommerce.commercial.olist_order_reviews
FROM '/your-path-to-downloaded-data/olist_order_reviews_dataset.csv'
DELIMITER ','
CSV HEADER;


-- create olist_orders table and load csv data
CREATE TABLE raw_brazilian_ecommerce.commercial.olist_orders(
	  order_id varchar,
    customer_id varchar,
    order_status varchar,
    order_purchase_timestamp timestamp,
    order_approved_at timestamp,
    order_delivered_carrier_date timestamp,
    order_delivered_customer_date timestamp,
    order_estimated_delivery_date timestamp
);

COPY raw_brazilian_ecommerce.commercial.olist_orders
FROM '/your-path-to-downloaded-data/olist_orders_dataset.csv'
DELIMITER ','
CSV HEADER;


-- create olist_products table and load csv data
CREATE TABLE raw_brazilian_ecommerce.commercial.olist_products(
	  product_id varchar,
    product_category_name varchar,
    product_name_lenght numeric,
    product_description_lenght numeric,
    product_photos_qty numeric,
    product_weight_g numeric,
    product_length_cm numeric,
    product_height_cm numeric,	
    product_width_cm numeric
);

COPY raw_brazilian_ecommerce.commercial.olist_products
FROM '/your-path-to-downloaded-data/olist_products_dataset.csv'
DELIMITER ','
CSV HEADER;


-- create olist_sellers table and load csv data
create table raw_brazilian_ecommerce.commercial.olist_sellers (
	  seller_id varchar,
    seller_zip_code_prefix varchar,
    seller_city varchar,
    seller_state varchar
);

COPY raw_brazilian_ecommerce.commercial.olist_sellers
FROM '/your-path-to-downloaded-data/olist_sellers_dataset.csv'
DELIMITER ','
CSV HEADER;