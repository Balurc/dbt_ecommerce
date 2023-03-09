-- create olist_mql table and load csv data
create or replace table raw_brazilian_ecommerce.funnel.olist_mql(
	mql_id varchar,
    first_contact_date date,
    landing_page_id varchar,
    origin varchar
);

-- create olist_closed_deals table and load csv data
create or replace table raw_brazilian_ecommerce.funnel.olist_closed_deals(
	mql_id varchar,
    seller_id varchar,
    sdr_id varchar,
    sr_id varchar,
    won_date timestamp,
    business_segment varchar,
    lead_type varchar,
    lead_behaviour_profile varchar,
    has_company boolean,
    has_gtin boolean,
    average_stock varchar,
    business_type varchar,
    declared_product_catalog_size float,
    declared_monthly_revenue float
);