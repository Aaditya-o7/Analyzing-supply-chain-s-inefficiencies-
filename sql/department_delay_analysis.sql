USE jit_supply_chain;

WITH shipments AS (
    SELECT
        `Product Department`,
        `Shipment Days - Scheduled`,
        DATEDIFF(
            STR_TO_DATE(
                CONCAT(`Shipment Year`, '-', `Shipment Month`, '-', `Shipment Day`),
                '%Y-%m-%d'
            ),
            STR_TO_DATE(
                CONCAT(`Order Year`, '-', `Order Month`, '-', `Order Day`),
                '%Y-%m-%d'
            )
        ) AS actual_days
    FROM orders_and_shipments
)

SELECT
    `Product Department`,
    COUNT(*) AS total_shipments,
    SUM(actual_days > `Shipment Days - Scheduled`) AS delayed_shipments,
    ROUND(
        100 * SUM(actual_days > `Shipment Days - Scheduled`) / COUNT(*),
        2
    ) AS delay_rate_pct
FROM shipments
GROUP BY `Product Department`
ORDER BY delay_rate_pct DESC;
