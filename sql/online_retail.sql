CREATE SCHEMA IF NOT EXISTS retail;

CREATE TABLE IF NOT EXISTS retail.online_retail(
    InvoiceNo       VARCHAR(20),
    StockCode       VARCHAR(20),
    Description     TEXT,
    Quantity        INTEGER,
    InvoiceDate     TIMESTAMP,
    UnitPrice       NUMERIC(10,2),
    CustomerID      VARCHAR(20),
    Country         VARCHAR(100)
);
