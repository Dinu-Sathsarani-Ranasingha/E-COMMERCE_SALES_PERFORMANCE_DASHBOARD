query = """
SELECT
    product_name,
    ROUND(SUM(sales), 2) AS total_revenue
FROM sales
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 10;
"""

top_products = pd.read_sql(query, conn)

top_products