# MySQL Data Types Summary

## Character Data Types

| Data Type    | Description                       | Max Size            |
|--------------|-----------------------------------|---------------------|
| CHAR(n)      | Fixed-length string               | 255 bytes           |
| VARCHAR(n)   | Variable-length string            | 65,535 bytes        |
| TINYTEXT     | Small text                        | 255 bytes           |
| TEXT         | Standard text                     | 65,535 bytes        |
| MEDIUMTEXT   | Medium-length text                | 16,777,215 bytes    |
| LONGTEXT     | Large text                        | 4,294,967,295 bytes |

## Numeric Data Types

| Data Type   | Description           | Range (Signed)                    | Range (Unsigned)                  |
|-------------|-----------------------|-----------------------------------|-----------------------------------|
| TINYINT     | Very small integer    | -128 to 127                       | 0 to 255                          |
| SMALLINT    | Small integer         | -32,768 to 32,767                 | 0 to 65,535                       |
| MEDIUMINT   | Medium integer        | -8,388,608 to 8,388,607           | 0 to 16,777,215                   |
| INT / INTEGER | Standard integer    | -2,147,483,648 to 2,147,483,647   | 0 to 4,294,967,295                |
| BIGINT      | Large integer         | ±9.22e18                          | 0 to 18,446,744,073,709,551,615   |
| FLOAT(p,s)  | Approx. floating point| Depends on precision              |                                   |
| DOUBLE(p,s) | Double precision float| Greater precision than FLOAT      |                                   |
| DECIMAL(p,s)| Exact fixed-point     | User-defined precision and scale  |                                   |

## Temporal Data Types

| Data Type   | Format                        | Range                                |
|-------------|-------------------------------|--------------------------------------|
| DATE        | YYYY-MM-DD                    | 1000-01-01 to 9999-12-31             |
| DATETIME    | YYYY-MM-DD HH:MM:SS           | 1000-01-01 00:00:00 to 9999-12-31    |
| TIMESTAMP   | YYYY-MM-DD HH:MM:SS           | 1970-01-01 to 2037-12-31             |
| TIME        | HH:MM:SS                      | -838:59:59 to 838:59:59              |
| YEAR        | YYYY                          | 1901 to 2155                         |

## Character Sets

| Charset | Description            | Bytes per Character |
|---------|------------------------|---------------------|
| latin1  | Western European       | 1                   |
| utf8    | Unicode (3-byte max)   | 1–3                 |

## Example

```sql
CREATE TABLE example (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  price DECIMAL(10, 2),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```