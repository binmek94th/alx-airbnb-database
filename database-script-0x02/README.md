# 🧪 Airbnb Clone Sample Data

This directory contains SQL scripts for populating the **alx-airbnb-database** with realistic sample data to support testing and development.

---

## 📄 Files

- `seed.sql`: Inserts sample data into each table
- `README.md`: Describes the purpose and usage

---

## 📦 Seed Data Overview

The `seed.sql` file inserts the following records:

- **Users**: 4 users (hosts and guests)
- **Properties**: 2 properties listed by hosts
- **Bookings**: 2 bookings by guests
- **Payments**: 1 confirmed payment
- **Reviews**: 2 user reviews of properties
- **Messages**: 2 private messages between users

---

## 🚀 Usage

Run the script in your PostgreSQL environment after creating the schema:

```bash
psql -U user -d airbnb -f seed.sql
