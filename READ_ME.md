# Supply Chain Performance & Inefficiency Analysis — Just In Time

## Project Overview

Analysis of **sales, inventory, fulfillment, and shipment data** for Just In Time, an e-commerce company.

The objective was to identify the reasons behind changes in business performance and uncover supply chain issues related to **inventory, product availability, and shipment delays**.

**Tools:** Python, SQL, Power BI

## Dashboard Preview

![Dashboard 1](https://github.com/hoshigan/Supply-Chain-Analytic---Just-In-Time-Company/assets/139525944/4641de54-2350-4a3a-a9f4-b490094328ce)

![Dashboard 2](https://github.com/hoshigan/Supply-Chain-Analytic---Just-In-Time-Company/assets/139525944/c1f801eb-da1f-408a-972e-6b8ffee3398c)

![Dashboard 3](https://github.com/hoshigan/Supply-Chain-Analytic---Just-In-Time-Company/assets/139525944/79d782c2-d00c-429d-9de5-9601710af2ce)

![Dashboard 4](https://github.com/hoshigan/Supply-Chain-Analytic---Just-In-Time-Company/assets/139525944/7d770135-d211-4c80-89d0-835ea0c585db)

## Business Questions

- What caused the decline in sales and order volume?
- Which products and departments drive revenue?
- Where are inventory and storage-cost inefficiencies?
- Which products have high value and volatile demand?
- Which markets, warehouses, and shipping modes have high delays?
- Is the shipment problem local or widespread?

## Data

The project uses three datasets:

- `orders_and_shipments.csv` — 30,871 records
- `inventory.csv` — 4,200 records
- `fulfillment.csv` — 118 products

Data preparation included datatype correction, missing/duplicate checks, anomaly detection, and validation of shipment dates.

## Analysis

### Business Performance
Analyzed sales, profit, orders, customers, product mix, and performance trends.

### Inventory
Applied **ABC-XYZ segmentation** using net-sales contribution and demand variability (CV) to identify high-value and difficult-to-plan products.

### Shipment
Analyzed shipping time and late-shipment rates across warehouses, markets, product departments, and shipping modes.

### Root Cause
Used **SCQ analysis and a hypothesis issue tree** to investigate the sharp Q4 2017 decline.

The data suggests a possible **supply-side disruption**, but supplier-level data is not available to confirm the exact cause.

## Key Findings

- Approximately **$5.5M net sales** and nearly **$4M profit** during the analyzed period.
- Major product departments such as Apparel, Fan Shop, Footwear, and Golf saw a sharp decline in activity.
- Inventory reached roughly **30% above demand** during some periods.
- Average late-shipment rate remained around **40%** over a prolonged period.
- Shipment delays appeared to be a broader delivery-system issue rather than being concentrated in one market.

## Recommendations

- Investigate supply risk for high-value products and review alternative sourcing.
- Improve demand-based inventory planning using forecasting, reorder points, and safety stock.
- Reduce low-demand and irregular inventory to control storage costs.
- Investigate transportation routes, warehouse strategy, and shipment-mode selection.
- Validate supplier and logistics hypotheses with additional operational data.

## Project Approach

```text
Data → KPI Analysis → Pattern Identification
     → Hypothesis → Root Cause → Business Action
```

**Methods:** EDA, diagnostic analysis, SCQ, hypothesis analysis, ABC-XYZ segmentation.

