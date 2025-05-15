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

