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

## What Is SQL?

SQL (often pronounced *"sequel"*) is the standard language used to manage and query data in **relational databases**.

- Originally proposed as **DSL/Alpha** by E.F. Codd.
- Evolved into **SQUARE**, then **SEQUEL**, and finally **SQL**.
- Standardized by **ANSI** in 1986, with updates in 1989, 1992, 1999, 2003, and 2006.
- SQL:2006 introduced **XML integration** and the **XQuery** language.

### Key Facts:
- SQL queries return data as **tables** (called **result sets**).
- You can create **permanent tables** from query results.
- SQL uses both existing tables and query results as inputs.
- Not officially an acronym, but commonly called **Structured Query Language**.

> ✅ Tip: You can say **S.Q.L.** or **sequel** — both are correct!

## SQL Statement Classes

SQL is broadly divided into three key statement classes:

### 1. **SQL Schema Statements** (DDL – Data Definition Language)
Used to define database structure.

```sql
CREATE TABLE corporation (
  corp_id SMALLINT,
  name VARCHAR(30),
  CONSTRAINT pk_corporation PRIMARY KEY (corp_id)
);
```

📌 *Defines a new table `corporation` with `corp_id` as the primary key.*

---

### 2. **SQL Data Statements** (DML – Data Manipulation Language)
Used to insert, update, delete, or query data.

```sql
INSERT INTO corporation (corp_id, name)
VALUES (27, 'Acme Paper Corporation');
```

📌 *Inserts a new row into the `corporation` table.*

```sql
SELECT name
FROM corporation
WHERE corp_id = 27;
```

📌 *Retrieves the name for corporation with `corp_id = 27`.*

---

### 3. **SQL Transaction Statements** (TCL – Transaction Control Language)
Used to manage transactions (e.g., `BEGIN`, `COMMIT`, `ROLLBACK`).

---

### 💡 Bonus: Metadata & Data Dictionary

- All schema elements are stored in a **data dictionary** (metadata).
- You can **query metadata** using `SELECT` to explore current database structure dynamically.

---

### Summary Table

| Class                | Key Commands                     | Purpose                              |
|----------------------|----------------------------------|--------------------------------------|
| DDL (Schema)         | CREATE, ALTER, DROP              | Define database structure            |
| DML (Data)           | SELECT, INSERT, UPDATE, DELETE   | Work with actual data                |
| TCL (Transaction)    | BEGIN, COMMIT, ROLLBACK          | Manage transactions                  |
| Metadata (Info only) | SELECT from info_schema, etc.    | Explore database structure/runtime   |

## SQL: A Nonprocedural Language

Unlike procedural languages (like C, Java, Python), SQL is **nonprocedural**.

### 🆚 Procedural vs Nonprocedural

| Aspect               | Procedural Language                  | SQL (Nonprocedural)                     |
|----------------------|--------------------------------------|-----------------------------------------|
| Control              | You control the *how*                | You define *what*                       |
| Constructs           | Loops, if-else, functions, etc.      | No control structures                   |
| Execution            | Follows exact instructions           | Optimizer decides execution path        |

### 🧠 SQL Optimizer
- The **optimizer** (part of the DB engine) determines how to execute SQL queries efficiently.
- You define **inputs and outputs** — the DB figures out the *process*.
- You can use **hints** to guide it (advanced use).

### 🔌 SQL + Programming Languages

SQL needs to be integrated into a host language for complete applications.

| Language       | Toolkit/API                            |
|----------------|----------------------------------------|
| Java           | JDBC                                   |
| C++            | Rogue Wave SourcePro DB                |
| C/C++          | Oracle Pro*C, MySQL C API, IBM DB2 CLI |
| C# / VB        | ADO.NET                                |
| Python         | Python DB (DB-API)                     |
| Perl           | Perl DBI                               |

> 🛠 Most DBs offer CLI + GUI tools for running SQL interactively.

For example, MySQL includes the `mysql` CLI tool for writing and testing SQL queries directly.

---

📌 **Key Insight:**  
> SQL lets you describe **what** data you want, not **how** to get it — that’s the job of the database engine.

## What Is MySQL?

### 🧱 MySQL is an open-source **Relational Database Management System (RDBMS)**.

- Competes with commercial RDBMSs like:
  - **Oracle Database**
  - **Microsoft SQL Server**
  - **IBM DB2**
  - **Sybase Adaptive Server**

### 🆓 Why MySQL?
- Free and open-source.
- Easy to download, install, and use.
- Over **10 million installations** worldwide.
- Compatible with most SQL standards.

> All examples in this repo are based on **MySQL 6.0** using the `mysql` command-line tool.



