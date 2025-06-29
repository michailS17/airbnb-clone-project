![460349295-12c4d40a-94f0-4931-b04c-cfe0a5d4d3c8](https://github.com/user-attachments/assets/b97c2092-20fa-4962-b64a-e476ad7b672a)


<h1 style="color:white">📦 ALX Airbnb Clone – Database Schema</h1>

<p><span style="color:white">
This folder contains the SQL schema definition for the <strong>Airbnb Clone</strong> project, focusing on the backend database structure that supports user accounts, properties, bookings, payments, reviews, and messages.
</span></p>

---

---

## 🧠 <span style="color:white">Schema Overview</span>

### 1. 🧍 <span style="color:white">`users`</span>

| Field           | Type              | Constraints                     |
|----------------|-------------------|---------------------------------|
| `user_id`       | UUID              | PK, Indexed                     |
| `first_name`    | VARCHAR(100)      | NOT NULL                        |
| `last_name`     | VARCHAR(100)      | NOT NULL                        |
| `email`         | VARCHAR(255)      | UNIQUE, NOT NULL                |
| `password_hash` | VARCHAR(255)      | NOT NULL                        |
| `phone_number`  | VARCHAR(15)       | NULL                            |
| `role`          | ENUM              | ('guest', 'host', 'admin') NOT NULL |
| `created_at`    | TIMESTAMP         | Default CURRENT_TIMESTAMP       |

---

### 2. 🏡 <span style="color:white">`properties`</span>

| Field           | Type              | Constraints                             |
|----------------|-------------------|-----------------------------------------|
| `property_id`   | UUID              | PK, Indexed                             |
| `host_id`       | UUID              | FK → users(user_id)                     |
| `name`          | VARCHAR(100)      | NOT NULL                                |
| `description`   | TEXT              | NOT NULL                                |
| `location`      | VARCHAR(255)      | NOT NULL                                |
| `pricepernight` | DECIMAL(10, 2)    | NOT NULL                                |
| `created_at`    | TIMESTAMP         | Default CURRENT_TIMESTAMP               |
| `updated_at`    | TIMESTAMP         | ON UPDATE CURRENT_TIMESTAMP             |

---

### 3. 📅 <span style="color:white">`bookings`</span>

| Field           | Type              | Constraints                             |
|----------------|-------------------|-----------------------------------------|
| `booking_id`    | UUID              | PK, Indexed                             |
| `property_id`   | UUID              | FK → properties(property_id)            |
| `user_id`       | UUID              | FK → users(user_id)                     |
| `start_date`    | DATE              | NOT NULL                                |
| `end_date`      | DATE              | NOT NULL                                |
| `total_price`   | DECIMAL(10, 2)    | NOT NULL                                |
| `status`        | ENUM              | ('pending', 'confirmed', 'canceled')    |
| `created_at`    | TIMESTAMP         | Default CURRENT_TIMESTAMP               |

---

### 4. 💳 <span style="color:white">`payments`</span>

| Field           | Type              | Constraints                             |
|----------------|-------------------|-----------------------------------------|
| `payment_id`    | UUID              | PK, Indexed                             |
| `booking_id`    | UUID              | FK → bookings(booking_id)               |
| `amount`        | DECIMAL(10, 2)    | NOT NULL                                |
| `payment_date`  | TIMESTAMP         | Default CURRENT_TIMESTAMP               |
| `payment_method`| ENUM              | ('credit_card', 'paypal', 'stripe')     |

---

### 5. ⭐ <span style="color:white">`reviews`</span>

| Field           | Type              | Constraints                             |
|----------------|-------------------|-----------------------------------------|
| `review_id`     | UUID              | PK, Indexed                             |
| `property_id`   | UUID              | FK → properties(property_id)            |
| `user_id`       | UUID              | FK → users(user_id)                     |
| `rating`        | INTEGER           | NOT NULL, CHECK (1–5)                   |
| `comment`       | TEXT              | NOT NULL                                |
| `created_at`    | TIMESTAMP         | Default CURRENT_TIMESTAMP               |

---

### 6. 💬 <span style="color:white">`messages`</span>

| Field           | Type              | Constraints                             |
|----------------|-------------------|-----------------------------------------|
| `message_id`    | UUID              | PK, Indexed                             |
| `sender_id`     | UUID              | FK → users(user_id)                     |
| `recipient_id`  | UUID              | FK → users(user_id)                     |
| `message_body`  | TEXT              | NOT NULL                                |
| `sent_at`       | TIMESTAMP         | Default CURRENT_TIMESTAMP               |

---

## 🔗 <span style="color:white">Entity Relationships</span>

- One `user` can be a `host` of many `properties`
- One `property` can have many `bookings` and `reviews`
- One `booking` is linked to one `payment`
- One `user` can send and receive many `messages`
- One `review` is authored by a `user` and belongs to a `property`

---

## 📈 <span style="color:white">Indexes & Optimization</span>

- Indexed all Primary Keys (`UUID`)
- Indexed Foreign Keys for fast JOINs:
  - `host_id`, `property_id`, `user_id`, `booking_id`
- Optimized enums and constraints for data integrity

---

## 🚀 <span style="color:white">Next Steps</span>

- Add mock data for testing queries
- Create database migration files
- Automate backups and versioning

---

<span style="color:white">📂 Path: <code>database-script-0x01/</code>  
📄 Author: ALX Airbnb Clone Project Team</span>

  
