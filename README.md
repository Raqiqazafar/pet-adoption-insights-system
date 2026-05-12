# 🐾 Pet Adoption & Insights System

A relational database project built with SQL to manage pet adoption 
records, adopter information, and donation tracking.

## 📌 Project Overview
This system was designed to demonstrate real-world database management 
using normalized relational schema and complex SQL queries.

## 🛠️ Technologies Used
- SQL Server (Queries, Joins, Normalization)
- ERD Design
- Microsoft Excel (data validation)

## 📂 Database Structure
- **Pets Table** — breed, age, availability status
- **Adopters Table** — adopter details and contact info
- **Adoptions Table** — adoption records with dates
- **Donations Table** — donation tracking per adopter
- **Staff Table** — staff managing the shelter

## 🔍 Key Features
- Complex SQL queries with JOINs across 5+ tables
- Normalized schema (3NF) to eliminate redundancy
- Aggregation queries for insights (most adopted breeds, top donors)
- Data integrity maintained through foreign key constraints

## 📊 Sample Query
```sql
-- Top 3 most adopted pet breeds
SELECT breed, COUNT(*) as total_adoptions
FROM Pets p
JOIN Adoptions a ON p.pet_id = a.pet_id
GROUP BY breed
ORDER BY total_adoptions DESC
LIMIT 3;
```

## 👩‍💻 Author
**Raqiqa Zafar** — CS Undergraduate, Superior University Lahore
[LinkedIn](https://www.linkedin.com/in/raqiqa-zafar)
