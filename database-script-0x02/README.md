
# 📦 ALX Airbnb Clone – Sample SQL Data

This file contains realistic SQL `INSERT` statements used to populate the Airbnb Clone database for testing and demonstration purposes.

The sample data reflects real-world usage, including host and guest accounts, property listings, actual booking dates, payment flows, guest reviews, and message exchanges.

---

## 📁 File: `sample_data.sql`

### 🧾 Purpose

This script populates six main tables in the Airbnb Clone database:

1. **Users** – Hosts and guests
2. **Properties** – Listings hosted by users
3. **Bookings** – Reservations made by guests
4. **Payments** – Linked to bookings
5. **Reviews** – Left by guests after stays
6. **Messages** – Conversations between guests and hosts

---

## 📋 Sample Data Summary

| Table        | Description                                   | Sample Records |
|--------------|-----------------------------------------------|----------------|
| `users`      | 2 guests and 1 host with Kenyan phone numbers | 3              |
| `properties` | Hosted by one user (Michael) in Kenya         | 2              |
| `bookings`   | One confirmed, one canceled                   | 2              |
| `payments`   | Payment for one completed booking             | 1              |
| `reviews`    | Positive guest feedback after stay            | 1              |
| `messages`   | Realistic guest-host conversations            | 3              |

---

## 🧍 Users (Guests & Hosts)

- **Alice Kamau** (Guest): Books a forest cabin in Nanyuki
- **John Mutua** (Guest): Cancels a Nairobi booking
- **Michael Otieno** (Host): Owns both listed properties

---

## 🏡 Properties

- **Rustic Forest Cabin**: Near Mt. Kenya, bonfire area  
- **City Loft Apartment**: Overlooks Nairobi CBD

Both properties are hosted by **Michael Otieno**.

---

## 📅 Bookings & Payments

- Alice books the **Rustic Forest Cabin** from Aug 16–18, 2025  
  → Paid Ksh 12,400 by credit card  
- John cancels the **City Loft Apartment** before payment

---

## ⭐ Review

- Alice leaves a 5-star review:  
  _"Absolutely loved the stay! Quiet, clean, and the bonfire was perfect."_

---

## 💬 Messages

Simulated real-time chat:
- Alice asks about availability
- Michael confirms the booking
- John inquires about cancellation

---

## ✅ How to Use

1. Ensure your database schema (`schema.sql`) is set up.
2. Run `sample_data.sql` in your SQL database engine (e.g., MySQL, PostgreSQL).
3. Use this populated data to test queries, views, or front-end functionality.

---

## 🔗 Related Files

| File             | Description                       |
|------------------|-----------------------------------|
| `schema.sql`     | Defines the database structure    |
| `sample_data.sql`| Populates the tables with entries |

---

**Author:** ALX Airbnb Clone Team  
**Use Case:** Development testing, demo environments, database validation
