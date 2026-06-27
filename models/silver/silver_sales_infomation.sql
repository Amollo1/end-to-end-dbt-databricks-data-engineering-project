WITH sales AS (

    SELECT
        sales_id,
        product_sk,
        {{ multiplication('quantity', 'unit_price') }} AS calculated_gross_amount,
        customer_sk,
        gross_amount,
        payment_method
    FROM {{ ref('bronze_sales') }}

),

products AS (

    SELECT
        product_sk,
        category
    FROM {{ ref('bronze_product') }}

),

customer AS (

    SELECT
        customer_sk,
        gender
    FROM {{ ref('bronze_customer') }}

),

joined_query as (
SELECT
    sales.sales_id,
    sales.calculated_gross_amount,
    sales.payment_method,
    products.category,
    customer.gender

FROM sales

JOIN products
    ON sales.product_sk = products.product_sk

JOIN customer
    ON sales.customer_sk = customer.customer_sk
)

SELECT
    category,
    gender,
    SUM(calculated_gross_amount) AS total_sales
FROM 
    joined_query
GROUP BY
    category,
    gender
ORDER BY
    total_sales DESC