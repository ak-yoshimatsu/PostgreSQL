-- csvから顧客データをインサート
COPY customers (
    customer_id,
    customer_type,
    customer_name,
    region,
    prefecture,
    city,
    first_contract_date,
    employee_id,
    satisfaction
)
FROM '/docker-entrypoint-initdb.d/csv/customers.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', NULL '');

-- csvから売上データ2021をインサート
COPY sales (
    sales_id,
    customer_id,
    contract_id,
    sales_date,
    sales_amount
)
FROM '/docker-entrypoint-initdb.d/csv/sales_2021.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', NULL '');

-- csvから売上データ2022をインサート
COPY sales (
    sales_id,
    customer_id,
    contract_id,
    sales_date,
    sales_amount
)
FROM '/docker-entrypoint-initdb.d/csv/sales_2022.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', NULL '');
