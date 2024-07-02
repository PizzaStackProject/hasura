CREATE OR REPLACE VIEW last_week_orders AS
    SELECT DATE(o.created_at), SUM(sum_by_order(o)), COUNT(o.created_at)
    FROM orders o
    WHERE DATE(o.created_at) > now() - interval '1 week'
    GROUP BY DATE(o.created_at)
    ORDER BY DATE(o.created_at) DESC;
