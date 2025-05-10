-- =======================
-- Seed Data: Users
-- =======================
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES 
  ('00000000-0000-0000-0000-000000000001', 'Alice', 'Walker', 'alice@example.com', '12345989', '123-456-7890', 'host'),
  ('00000000-0000-0000-0000-000000000002', 'Bob', 'Smith', 'bob@example.com', '146764131d', '321-654-0987', 'guest'),
  ('00000000-0000-0000-0000-000000000003', 'Carla', 'Brown', 'carla@example.com', 'adsfds342', NULL, 'guest'),
  ('00000000-0000-0000-0000-000000000004', 'David', 'Lee', 'david@example.com', 'asf32r5fsa', '555-123-4567', 'host');

-- =======================
-- Seed Data: Properties
-- =======================
INSERT INTO properties (property_id, host_id, name, description, location, price_per_night)
VALUES 
  ('10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000001', 'Sunny Cottage', 'A cozy cottage with a garden.', 'Los Angeles, CA', 120.00),
  ('10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000004', 'Downtown Loft', 'Modern loft in the heart of the city.', 'New York, NY', 200.00);

-- =======================
-- Seed Data: Bookings
-- =======================
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES 
  ('20000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000002', '2025-06-01', '2025-06-05', 480.00, 'confirmed'),
  ('20000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000003', '2025-07-10', '2025-07-12', 400.00, 'pending');

-- =======================
-- Seed Data: Payments
-- =======================
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES 
  ('30000000-0000-0000-0000-000000000001', '20000000-0000-0000-0000-000000000001', 480.00, 'stripe');

-- =======================
-- Seed Data: Reviews
-- =======================
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES 
  ('40000000-0000-0000-0000-000000000001', '10000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000002', 5, 'Absolutely loved the place! Very clean and peaceful.'),
  ('40000000-0000-0000-0000-000000000002', '10000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000003', 4, 'Nice location, a bit noisy at night.');

-- =======================
-- Seed Data: Messages
-- =======================
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES 
  ('50000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001', 'Hi, is the Sunny Cottage available next weekend?'),
  ('50000000-0000-0000-0000-000000000002', '00000000-0000-0000-0000-000000000001', '00000000-0000-0000-0000-000000000002', 'Yes, it is available. Feel free to book.');
