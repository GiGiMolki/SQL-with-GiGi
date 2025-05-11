## Populating and Modifying Tables
- SQL + Output in One Place (Copy-friendly)

### Enable auto-increment on primary key
```  sql
ALTER TABLE person MODIFY person_id SMALLINT UNSIGNED AUTO_INCREMENT;
```

### Insert: William Turner
```  sql
INSERT INTO person
  (person_id, fname, lname, gender, birth_date)
VALUES
  (null, 'William','Turner', 'M', '1972-05-27');
  ```

### View inserted data
```  sql
SELECT person_id, fname, lname, birth_date FROM person;
```

-- Output:

-- | person_id | fname   | lname  | birth_date |
-- |-----------|---------|--------|------------|
-- |    1      | William | Turner | 1972-05-27 |


### Select using WHERE
```  sql
SELECT person_id, fname, lname, birth_date FROM person WHERE person_id = 1;
```

-- Output:

-- | person_id | fname   | lname  | birth_date |
-- |-----------|---------|--------|------------|
-- |    1      | William | Turner | 1972-05-27 |


### Select using WHERE on lname
```  sql
SELECT person_id, fname, lname, birth_date FROM person WHERE lname = 'Turner';
```

-- Output:

-- | person_id | fname   | lname  | birth_date |
-- |-----------|---------|--------|------------|
-- |    1      | William | Turner | 1972-05-27 |


### Insert favorite foods for William
```  sql
INSERT INTO favorite_food (person_id, food) VALUES (1, 'pizza');
INSERT INTO favorite_food (person_id, food) VALUES (1, 'cookies');
INSERT INTO favorite_food (person_id, food) VALUES (1, 'nachos');
```
### Select William's favorite foods (alphabetical)
```  sql
SELECT food FROM favorite_food WHERE person_id = 1 ORDER BY food;
```

-- Output:

-- | food    |
-- |---------|
-- | cookies |
-- | nachos  |
-- | pizza   |


### Insert: Susan Smith (with address)
```  sql
INSERT INTO person
  (person_id, fname, lname, gender, birth_date,
   street, city, state, country, postal_code)
VALUES
  (null, 'Susan','Smith', 'F', '1975-11-02',
   '23 Maple St.', 'Arlington', 'VA', 'USA', '20220');
```

-- View both entries
```  sql
SELECT person_id, fname, lname, birth_date FROM person;
```
-- Output:

-- | person_id | fname   | lname  | birth_date |
-- |-----------|---------|--------|------------|
-- |    1      | William | Turner | 1972-05-27 |
-- |    2      | Susan   | Smith  | 1975-11-02 |



### Update William Turner's address information
``` sql
UPDATE person
SET street = '1225 Tremont St.',
    city = 'Boston',
    state = 'MA',
    country = 'USA',
    postal_code = '02138'
WHERE person_id = 1;
```

-- Output:
-- Query OK, 1 row affected (0.04 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0

### Delete Susan Smith from the table
``` sql
DELETE FROM person
WHERE person_id = 2;
```

-- Output:
-- Query OK, 1 row affected (0.01 sec)