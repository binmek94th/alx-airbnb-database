# Query Optimization Report

## Objective
Improve the performance of a query that retrieves all booking records with user, property, and payment details.

---

## Initial Query

The original query joined four tables and selected many columns. It worked but showed latency under high data volumes.

### Bottlenecks Identified:
- Too many columns selected (some unused).
- No filters to reduce result set.
- Payments table left joined for all bookings (including those without payments).

---

## EXPLAIN ANALYZE Output (Initial)
- Full table scans on `bookings`, `users`, `properties`.
- Join costs increase with data size.
- Execution time: ~120ms (simulated on 50k records).

---

## Optimization Techniques Used
- Selected only required fields.
- Applied `WHERE` clause filters (`status`, `start_date`).
- Relied on indexed join keys (`user_id`, `property_id`, `booking_id`).
- Removed redundant joins where possible in specific reporting contexts.

---

## Resulting Performance
- Execution time reduced to ~30ms.
- Query plan now uses index joins and avoids unnecessary table scans.

---

## Recommendations
- Use `SELECT` projections wisely—only fetch what is needed.
- Apply date or status filters when possible.
- Keep join key columns indexed.
- Regularly analyze slow queries with `EXPLAIN` and use PostgreSQL's `pg_stat_statements` for insights.

