
# 📦 Property Rental Platform Database

This database schema supports a property rental platform where users can list properties, book stays, make payments, leave reviews, and exchange messages. It follows **Third Normal Form (3NF)** for data integrity and efficient querying.

---

## 📐 Schema Overview

The database contains the following key entities:

### 🧑‍💼 Users
Stores platform user information, including guests, hosts, and admins.

- `user_id` (UUID, Primary Key)
- `first_name`, `last_name`, `email`, `password_hash`, `role`, etc.
- Indexed by `email` for quick lookups

### 🏠 Properties
Represents properties listed by hosts for booking.

- `property_id` (UUID, Primary Key)
- Foreign key: `host_id → users.user_id`
- Contains description, location, and price info

### 📅 Bookings
Captures reservations made by users on properties.

- `booking_id` (UUID, Primary Key)
- Foreign keys: `property_id`, `user_id`
- Tracks booking period, status, and total price

### 💳 Payments
Logs payment transactions related to bookings.

- `payment_id` (UUID, Primary Key)
- Foreign key: `booking_id`
- Includes amount, payment date, and method

### 🌟 Reviews
Allows users to leave feedback on properties.

- `review_id` (UUID, Primary Key)
- Foreign keys: `property_id`, `user_id`
- Includes rating (1–5) and a comment

### 💬 Messages
Enables user-to-user messaging.

- `message_id` (UUID, Primary Key)
- Foreign keys: `sender_id`, `recipient_id`
- Stores message content and timestamp

---

## 🎯 Design Goals

- ✅ **Normalized to 3NF** for consistency and flexibility
- ✅ **Efficient indexing** on foreign keys and emails
- ✅ **Scalable with UUIDs** for distributed environments
- ✅ **Safe cascading deletes** to manage data lifecycle

---

## 🚀 Getting Started

You can create the database tables using the SQL schema provided in `schema.sql`.

```bash
psql -U user -d airbnb -f schema.sql
