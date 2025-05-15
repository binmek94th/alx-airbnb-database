# SQL Joins - Advanced Queries

This file includes advanced SQL join queries written for the **alx-airbnb-database** project.

## File: joins_queries.sql

### Queries Included

1. **INNER JOIN**
   - Retrieves all bookings and the respective users who made those bookings.

2. **LEFT JOIN**
   - Retrieves all properties and their reviews, including properties that have no reviews.

3. **FULL OUTER JOIN**
   - Retrieves all users and all bookings, even if a user has no booking or a booking is not linked to a user.

## Schema Reference

The database includes the following tables:
- `users`
- `properties`
- `bookings`
- `payments`
- `reviews`
- `messages`

Each query demonstrates the usage of different SQL JOIN types using real table relationships.


# SQL Subqueries - Advanced Queries

This file contains advanced SQL subqueries for the **alx-airbnb-database** project.

## File: subqueries.sql

### Queries Included

1. **Non-Correlated Subquery**
   - Finds all properties with an average review rating greater than 4.0.
   - Utilizes an aggregate `HAVING` clause inside a subquery.

2. **Correlated Subquery**
   - Finds users who have made more than 3 bookings.
   - Uses a subquery that references the outer query (`u.user_id`).

## Schema Reference

Relevant tables used:
- `users`
- `bookings`
- `reviews`
- `properties`

Each query demonstrates subquery usage for data filtering and user-specific insights.


# SQL Aggregation and Window Functions

This file demonstrates SQL aggregation and window functions for the **alx-airbnb-database** project.

## File: aggregations_and_window_functions.sql

### Queries Included

1. **Aggregation with COUNT and GROUP BY**
   - Retrieves the total number of bookings each user has made.
   - Uses `LEFT JOIN` to include users with zero bookings.

2. **Window Function: RANK()**
   - Ranks properties based on the number of bookings received.
   - Uses `RANK()` over a window partitioned by no group (global rank).

## Schema Reference

Relevant tables:
- `users`
- `bookings`
- `properties`

These queries are useful for analytics such as leaderboards and usage metrics.

