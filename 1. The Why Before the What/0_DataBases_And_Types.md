## What is a Database?

A **database** is an organized collection of structured information, or data, typically stored electronically in a computer system. Databases are designed to efficiently store, retrieve, manage, and manipulate data. Most modern databases are managed using **Database Management Systems (DBMS)**, which provide tools for interacting with the data using languages like **SQL (Structured Query Language)**.

In simpler terms, a database is like a digital filing cabinet where data is stored in a way that makes it easy to find and use.

## Types of Databases

1. **Non-Relational Databases (NoSQL)**
2. **Relational Databases (RDBMS)**

## Non-Relational Databases

Non-relational databases, often referred to as **NoSQL databases**, are designed to store and retrieve data that may not fit well into the tabular format used by relational databases. They are optimized for flexible, large-scale data storage and typically use formats like key-value pairs, documents, graphs, or wide-columns.

### What is a Hierarchical Database System?

A **Hierarchical Database System** organizes data in a tree-like structure, where each record (called a node) has a single parent and can have multiple children—similar to folders and files in a computer directory. This model is ideal for representing one-to-many relationships and allows for fast data retrieval when navigating along known paths.

Hierarchical databases were among the earliest database models, and are still used in some legacy systems today, particularly in applications that require predictable, high-speed access to hierarchical data.

![Alt Text](/1.%20The%20Why%20Before%20the%20What/Images/image1.png)

#### Types of Hierarchical Structures:

1. **Single Parent Hierarchy** – Each child record has only one parent. This is the classic tree structure.
![Alt Text](/1.%20The%20Why%20Before%20the%20What/Images/image2.png)
2. **Multi Parent Hierarchy** – A child record can have more than one parent, forming a more complex network-like structure. Also known as Network DataBase Systems.
![Alt Text](/1.%20The%20Why%20Before%20the%20What/Images/image3.png)

## Relational Databases

A **Relational Database** is a type of database that stores data in **tables** (also called relations), which are made up of rows and columns. Each table represents a specific entity, and relationships between entities are maintained using **foreign keys**. This model is based on **set theory and relational algebra**, making it highly structured and consistent.

Relational databases are managed using **Relational Database Management Systems (RDBMS)** and are widely used for transactional applications due to their support for **ACID properties** (Atomicity, Consistency, Isolation, Durability).

![Alt Text](/1.%20The%20Why%20Before%20the%20What/Images/image4.png)

### Examples of Relational Databases:

- MySQL  
- PostgreSQL  
- SQLite  
- Oracle Database  
- Microsoft SQL Server

## Common Relational Database Terms and Definitions

| Term           | Definition                                                                 |
|----------------|----------------------------------------------------------------------------|
| Entity         | A real-world object of interest to the database (e.g., customer, product). |
| Column         | A single attribute or field in a table.                                    |
| Row            | A set of related data fields; also called a record.                        |
| Table          | A collection of rows (records) and columns (fields).                       |
| Primary Key    | A column (or set) that uniquely identifies each row in a table.            |
| Foreign Key    | A column (or set) that refers to the primary key in another table.         |
| Result Set     | The output of a query, shown as a temporary table.                         |
| Schema         | The structure that defines tables, columns, types, and relationships.      |
| Index          | A data structure that improves the speed of data retrieval.                |
| Query          | A request for data or information from a database.                         |
| Constraint     | A rule applied to table columns (e.g., NOT NULL, UNIQUE, CHECK).           |
| Join           | A clause to combine rows from two or more tables based on related columns. |




