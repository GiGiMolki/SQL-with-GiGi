# MySQL Data Types

## Character Data Types
- **CHAR(n)**: Fixed-length string (max 255 bytes)
- **VARCHAR(n)**: Variable-length string (max 65,535 bytes)
- **TEXT**: For large text (up to 65,535 bytes)
  - **TINYTEXT**: 255 bytes
  - **TEXT**: 65,535 bytes
  - **MEDIUMTEXT**: 16,777,215 bytes
  - **LONGTEXT**: 4,294,967,295 bytes

## Numeric Data Types
### Integer Types
- **TINYINT**: -128 to 127 (signed), 0 to 255 (unsigned)
- **SMALLINT**: -32,768 to 32,767 (signed), 0 to 65,535 (unsigned)
- **MEDIUMINT**: -8,388,608 to 8,388,607 (signed), 0 to 16,777,215 (unsigned)
- **INT**: -2,147,483,648 to 2,147,483,647 (signed), 0 to 4,294,967,295 (unsigned)
- **BIGINT**: -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807 (signed), 0 to 18,446,744,073,709,551,615 (unsigned)

### Floating-point Types
- **FLOAT(p, s)**: Approximate value, can specify precision (p) and scale (s)
- **DOUBLE(p, s)**: Larger range than FLOAT, also supports precision and scale

## Temporal Data Types
- **DATE**: YYYY-MM-DD (1000-01-01 to 9999-12-31)
- **DATETIME**: YYYY-MM-DD HH:MI:SS (1000-01-01 00:00:00 to 9999-12-31 23:59:59)
- **TIMESTAMP**: YYYY-MM-DD HH:MI:SS (1970-01-01 00:00:00 to 2037-12-31 23:59:59)
- **TIME**: HHH:MI:SS (-838:59:59 to 838:59:59)
- **YEAR**: YYYY (1901 to 2155)

## Character Sets
- **latin1**: Default (1 byte per character)
- **utf8**: Unicode (up to 3 bytes per character)

## Example Usage
```sql
CREATE TABLE example (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  price DECIMAL(10, 2),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);