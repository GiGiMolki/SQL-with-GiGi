-- 🧠 MySQL Table Design: Person & Favorite Foods

-- Design Requirements:
--   - First name, Last name
--   - Gender (M/F)
--   - Birth date
--   - Address (Street, City, State, Country, Postal Code)
--   - Favorite Foods (0 or more)

-- 🧹 Normalization Steps:
--   - Split name → fname, lname
--   - Split address into atomic parts
--   - Move favorite_foods to separate table (1:N)
--   - Add person_id as primary key

-- 📘 SQL Schema
``` sql
CREATE TABLE person (
  person_id SMALLINT UNSIGNED,
  fname VARCHAR(20),
  lname VARCHAR(20),
  gender ENUM('M','F'),
  birth_date DATE,
  street VARCHAR(30),
  city VARCHAR(20),
  state VARCHAR(20),
  country VARCHAR(20),
  postal_code VARCHAR(20),
  CONSTRAINT pk_person PRIMARY KEY (person_id)
);

CREATE TABLE favorite_food (
  person_id SMALLINT UNSIGNED,
  food VARCHAR(20),
  CONSTRAINT pk_favorite_food PRIMARY KEY (person_id, food),
  CONSTRAINT fk_fav_food_person_id FOREIGN KEY (person_id)
    REFERENCES person (person_id)
);
```

-- ✅ Table Definitions

-- DESCRIBE person;
-- Output:
-- +-------------+----------------------+------+-----+---------+------+
-- | Field       | Type                 | Null| Key | Default | Extra |
-- +-------------+----------------------+-----+-----+---------+-------+
-- | person_id   | smallint(5) unsigned | NO  | PRI | 0       |       |
-- | fname       | varchar(20)          | YES |     | NULL    |       |
-- | lname       | varchar(20)          | YES |     | NULL    |       |
-- | gender      | enum('M','F')        | YES |     | NULL    |       |
-- | birth_date  | date                 | YES |     | NULL    |       |
-- | street      | varchar(30)          | YES |     | NULL    |       |
-- | city        | varchar(20)          | YES |     | NULL    |       |
-- | state       | varchar(20)          | YES |     | NULL    |       |
-- | country     | varchar(20)          | YES |     | NULL    |       |
-- | postal_code | varchar(20)          | YES |     | NULL    |       |
-- +-------------+----------------------+-----+-----+---------+-------+

-- DESCRIBE favorite_food;
-- Output:
-- +-----------+----------------------+-----+-----+---------+-------+
-- | Field     | Type                 | Null| Key | Default | Extra |
-- +-----------+----------------------+-----+-----+---------+-------+
-- | person_id | smallint(5) unsigned | NO  | PRI | 0       |       |
-- | food      | varchar(20)          | NO  | PRI | NULL    |       |
-- +-----------+----------------------+-----+-----+---------+-------+

-- 🧩 NULL means: Unknown / Not applicable / No value provided
-- By default, columns allow NULL unless specified with NOT NULL