# Index Performance Analysis

This document captures performance measurements before and after adding indexes to optimize queries in the `alx-airbnb-database`.

## Tables and Indexed Columns

| Table      | Indexed Columns                 | Reason for Index                     |
|------------|----------------------------------|--------------------------------------|
| `users`    | `email`, `user_id`               | Lookup, JOIN, authentication, filters |
| `bookings` | `user_id`, `property_id`, `status`, `start_date` | Frequent JOINs and filters         |
| `properties` | `host_id`, `location`          | JOINs, location-based filtering      |

---

## Sample Query Performance: Bookings by Status

### Without Index:
```sql
EXPLAIN ANALYZE 
SELECT * FROM bookings WHERE status = 'confirmed';
