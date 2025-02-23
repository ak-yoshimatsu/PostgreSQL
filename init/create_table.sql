-- 顧客テーブル
CREATE TABLE customers (
    customer_id VARCHAR(10),             -- 顧客ID
    customer_type VARCHAR(20),           -- 顧客区分
    customer_name VARCHAR(50),           -- 顧客名
    region VARCHAR(20),                  -- 地域
    prefecture VARCHAR(20),              -- 都道府県
    city VARCHAR(20),                    -- 市区町村
    first_contract_date DATE,            -- 初回契約日
    employee_id INT,                     -- 社員ID
    satisfaction INT                     -- 顧客満足度
);


-- 売上テーブル
CREATE TABLE sales (
    sales_id VARCHAR(10),               -- 売上ID
    customer_id VARCHAR(10),            -- 顧客ID
    contract_id VARCHAR(10),            -- 契約ID
    sales_date DATE,                    -- 売上日
    sales_amount INT                    -- 売上
);
