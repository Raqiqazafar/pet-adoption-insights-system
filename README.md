# 🐾 Pet Adoption & Insights System

## Problem
An animal shelter running on spreadsheets or ad-hoc records struggles to
answer basic operational questions — which breeds get adopted fastest, who
the top donors are, which pets have been waiting longest — without a proper
relational database.

## Method
Designed a normalized (3NF) relational schema across 5 tables — `PET`,
`PERSON`, `Donation`, `ORGANIZATION`, `lost_or_found_animals` — with
foreign-key integrity, then built stored procedures (e.g. pet count by
adoption status, lookups by city/species), views (donor totals, adopted
pets, interested-adopter matches), and scalar functions on top.

## Findings

| Query / Object | Result |
|---|---|
| `GetPetCountByAdoptionStatus` procedure | **Available: 15, Adopted: 8, Pending: 7** |
| Species of adopted pets | **All 8 currently-adopted pets are Cats** — 0 Dogs have completed adoption yet, despite Dogs and Cats being seeded equally (15 each) |
| `Donor_Donations` view — top donors | **Brittany Rogers ($230)**, Ashley Green ($220), Emily Wilson ($200), Kimberly Morris ($180), Stephanie Lopez ($175) |
| Total donations | **$3,057.00** across 30 donor records |
| Species split (all pets) | Dog: 15, Cat: 15 — evenly seeded |
| Pet size distribution | Medium: 12, Small: 9, Large: 9 |
| `PERSON.Adoption_Status` split | Adopter: 10, Interested: 10, Not Interested: 10 |
| `Interested_People_Pets_Organizations` view | 10 interested-person → pet → organization matches |
| Organizations | 30 organizations across 23 unique cities |
| Medical history tags | Vaccinated: 9, Spayed: 6, Healthy: 6, None: 6, Arthritis: 3 |

> ℹ️ This is seed/sample data included directly in the `.sql` script (not a
> live shelter's real records) — the queries and schema are fully real and
> reproducible, but the underlying data is illustrative rather than an
> actual shelter's operations.

## Recommendation
The species imbalance in `Adopted` status (8/8 Cats, 0/15 Dogs) is the one
result worth flagging even in illustrative data — if this pattern held in a
real shelter, it would suggest Dog listings need a closer look (photos,
descriptions, or placement in the adoption pipeline) rather than assuming
Dogs are simply less in demand.

## Tools
SQL Server (T-SQL) — Tables, Foreign Keys, Stored Procedures, Views,
Scalar Functions

## Database Structure
- **PET** — name, gender, age, colour, size, species, medical history, adoption status
- **PERSON** — name, login, adoption interest status, linked donation/lost-found IDs
- **Donation** — donor name, purpose, date, amount
- **ORGANIZATION** — shelter/org name, services, city, address, hours
- **lost_or_found_animals** — species, description, location, date, investigator

## Sample Query
```sql
-- Pet count by adoption status (stored procedure in this repo)
CREATE PROCEDURE GetPetCountByAdoptionStatus
AS
BEGIN
    SELECT Adoption_Status, COUNT(*) AS Total_Pets
    FROM PET
    GROUP BY Adoption_Status;
END;
```
