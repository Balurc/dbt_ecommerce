-- create olist_customers table and load csv data
create or replace table raw_brazilian_ecommerce.commercial.olist_customers(
    customer_id varchar,
    customer_unique_id varchar,
    customer_zip_code_prefix varchar,
    customer_city varchar,
    customer_state varchar
);

-- create olist_order_items table and load csv data
create or replace table raw_brazilian_ecommerce.commercial.olist_order_items(
    order_id varchar,
    order_item_id varchar,
    product_id varchar,
    seller_id varchar,
    shipping_limit_date timestamp,
    price float,
    freight_value float
);

-- create olist_order_payments table and load csv data
create or replace table raw_brazilian_ecommerce.commercial.olist_order_payments(
    order_id varchar,
    payment_sequential number,
    payment_type varchar,
    payment_installments number,
    payment_value float
);

-- create olist_order_reviews table and load csv data
create or replace table raw_brazilian_ecommerce.commercial.olist_order_reviews(
	review_id varchar,
    order_id varchar,
    review_score number,
    review_comment_title varchar,
    review_comment_message varchar,
    review_creation_date timestamp,
    review_answer_timestamp timestamp
);

-- create olist_orders table and load csv data
create or replace table raw_brazilian_ecommerce.commercial.olist_orders(
	order_id varchar,
    customer_id varchar,
    order_status varchar,
    order_purchase_timestamp timestamp,
    order_approved_at timestamp,
    order_delivered_carrier_date timestamp,
    order_delivered_customer_date timestamp,
    order_estimated_delivery_date timestamp
);

-- create olist_products table and load csv data
create or replace table raw_brazilian_ecommerce.commercial.olist_products(
	product_id varchar,
    product_category_name varchar,
    product_name_lenght number,
    product_description_lenght number,
    product_photos_qty number,
    product_weight_g number,
    product_length_cm number,
    product_height_cm number,
    product_width_cm number
);

-- create olist_sellers table and load csv data
create or replace table raw_brazilian_ecommerce.commercial.olist_sellers (
	seller_id varchar,
    seller_zip_code_prefix varchar,
    seller_city varchar,
    seller_state varchar
);