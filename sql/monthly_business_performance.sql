USE jit_supply_chain;

SELECT
    `Order Year`,
    `Order Month`,
    COUNT(DISTINCT `Order ID`) AS total_orders,
    SUM(`Order Quantity`) AS units_ordered,
    ROUND(SUM(`Gross Sales`), 2) AS gross_sales,
    ROUND(SUM(`Profit`), 2) AS profit
FROM orders_and_shipments
GROUP BY `Order Year`, `Order Month`
ORDER BY `Order Year`, `Order Month`;
