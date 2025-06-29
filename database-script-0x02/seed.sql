-- ========================
-- USERS
-- ========================
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES 
(1, 'Alice', 'Kamau', 'alice.kamau@gmail.com', 'hashed_pass_1', '0722000001', 'guest', CURRENT_TIMESTAMP),
(2, 'Michael', 'Otieno', 'michael.host@airclone.com', 'hashed_pass_2', '0711000002', 'host', CURRENT_TIMESTAMP),
(3, 'John', 'Mutua', 'john.mutua@gmail.com', 'hashed_pass_3', '0713000003', 'guest', CURRENT_TIMESTAMP);

-- ========================
-- PROPERTIES
-- ========================
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES 
(1, 2, 'Rustic Forest Cabin', 'Peaceful cabin near Mt. Kenya forest reserve with bonfire area.', 'Nanyuki, Kenya', 6200.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
(2, 2, 'City Loft Apartment', 'Modern apartment with balcony view of Nairobi CBD.', 'Nairobi, Kenya', 9200.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- ========================
-- BOOKINGS
-- ========================
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES 
(1, 1, 1, '2025-08-16', '2025-08-18', 12400.00, 'confirmed', CURRENT_TIMESTAMP),
(2, 2, 3, '2025-08-21', '2025-08-24', 27600.00, 'canceled', CURRENT_TIMESTAMP);

-- ========================
-- PAYMENTS
-- ========================
INSERT INTO payments (payment_id, booking_id, amount, payment_date, payment_method)
VALUES 
(1, 1, 12400.00, CURRENT_TIMESTAMP, 'credit_card');

-- ========================
-- REVIEWS
-- ========================
INSERT INTO reviews (review_id, property_id, user_id, rating, comment, created_at)
VALUES 
(1, 1, 1, 5, 'Absolutely loved the stay! Quiet, clean, and the bonfire was perfect.', CURRENT_TIMESTAMP);

-- ========================
-- MESSAGES
-- ========================
INSERT INTO messages (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES 
(1, 1, 2, 'Hi Michael, is your cabin available for Aug 16–18?', CURRENT_TIMESTAMP),
(2, 2, 1, 'Yes, Alice! I’ve just confirmed availability. Feel free to book.', CURRENT_TIMESTAMP),
(3, 3, 2, 'Hey, I might need to cancel the loft booking. Is that possible?', CURRENT_TIMESTAMP);
