# 🎬 RETRO DVD Rental SQL Project

Welcome to the **DVD Rental SQL Database Project**, a comprehensive data analysis and querying project built on a relational schema used by a DVD rental store. This database is a great resource for practicing complex SQL queries, joins, subqueries, and database design concepts.

## 📂 Project Overview

This project showcases a normalized relational database system managing data for a fictional DVD rental business. It includes entities such as customers, films, staff, stores, payments, and rentals.

You can explore how different entities are related, perform deep data analysis, and write advanced SQL queries to extract insights for business decisions.

---


##📁 Folder Structure
```bash 
  DVD-Rental-Database/
├── README.md
├── data/
│   ├── Sql Tables Data/
│   └── Raw Data/
├── queries/
│   ├── all_queries.sql
│   ├── easy_queries.sql
│   ├── medium_queries.sql
│   └── hard_queries.sql
└── images/
    └── er_diagram.png
  ``` 

### Links

- [README.md](https://github.com/AbhishekKedarsethi/DvdRental-SQL-Queries/blob/b2d919c84ffc3d2e45011588beb4419d2a739669/README.md)
- [Sql Tables Data folder](https://github.com/AbhishekKedarsethi/DvdRental-SQL-Queries/blob/db36e5a6f0f8ebe60d456d2072a8f43b409554e6/Data/Tables_data.zip)
- [Raw Data folder](https://github.com/AbhishekKedarsethi/DvdRental-SQL-Queries/blob/db36e5a6f0f8ebe60d456d2072a8f43b409554e6/Data/dvdrental_raw.tar)
- [all_queries.sql](https://github.com/AbhishekKedarsethi/DvdRental-SQL-Queries/blob/3f49c77e0325a98f258c26cbe6410982615ee789/queries/all_queries.sql)
- [easy_queries.sql](https://github.com/AbhishekKedarsethi/DvdRental-SQL-Queries/blob/3f49c77e0325a98f258c26cbe6410982615ee789/queries/easy_queries.sql)
- [medium_queries.sql](https://github.com/AbhishekKedarsethi/DvdRental-SQL-Queries/blob/3f49c77e0325a98f258c26cbe6410982615ee789/queries/medium_queries.sql)
- [hard_queries.sql](https://github.com/AbhishekKedarsethi/DvdRental-SQL-Queries/blob/3f49c77e0325a98f258c26cbe6410982615ee789/queries/hard_queries.sql)
- [er_diagram.png](https://github.com/AbhishekKedarsethi/DvdRental-SQL-Queries/blob/3f49c77e0325a98f258c26cbe6410982615ee789/images/picture.png)

---

## 🗂️ Database Schema

The schema includes the following key tables:

- **customer** – Customer information including name, email, address, and store ID.
- **staff** – Employees working at various store locations.
- **store** – Physical store details including address and manager.
- **film** – Movie details including title, description, length, rental rate, etc.
- **actor** – Actor details with first and last names.
- **film_actor** – A many-to-many relationship between films and actors.
- **category** – Film categories (e.g., Action, Comedy).
- **film_category** – A many-to-many relationship between films and categories.
- **inventory** – Inventory management for films at different stores.
- **rental** – Rental transaction details including date, customer, inventory, and staff info.
- **payment** – Payment information associated with each rental.
- **address**, **city**, **country** – Normalized location data supporting customers, staff, and stores.
- **language** – Original language of the films.

---

## 🔧 Technologies Used

- **PostgreSQL** (schema-compatible with both)
- **SQL** (DDL and DML)
- **DB Design Tools**: pgAdmin

---

## 🗂 ER Diagram
The ER diagram below illustrates the schema and relationships among all the tables in the DVD Rental database.

![ER Diagram](https://github.com/AbhishekKedarsethi/DvdRental-SQL-Queries/blob/3f49c77e0325a98f258c26cbe6410982615ee789/images/picture.png)
