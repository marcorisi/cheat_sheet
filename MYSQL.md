- Update some column via JOIN  
```
UPDATE TABLE_A a 
    JOIN TABLE_B b ON a.join_col = b.join_col AND a.column_a = b.column_b 
    JOIN TABLE_C c ON [condition]
SET a.column_c = a.column_c + 1
```

- Add an index to a table  
`ALTER TABLE $table ADD INDEX $index_id ($column_name)`

- Cast a string to a number  
```
SELECT 
	CONVERT(string_column, SIGNED|UNSIGNED INTEGER) as int_column
FROM
    table
```

- Show list of table indexes  
`SHOW INDEXES FROM $table`

- Explain a query  
`EXPLAIN $query`

- Adding some leading zero to a field (zerofill like)  
`SELECT LPAD('9', 2, '0')`

- Specify a composite unique constraint  
```
ALTER TABLE `table_name` ADD UNIQUE `uq_table_name_1_idx`(`column_1`, `column_2`)
```

- Load data from CSV file  
```
LOAD DATA LOCAL INFILE '/path/to/file.csv' INTO TABLE db.table FIELDS TERMINATED BY ';' LINES TERMINATED BY '\n';
```

- Show status of innodb engine
```
SHOW ENGINE INNODB STATUS \G
```

- List of locked tables
```
SHOW OPEN TABLES WHERE IN_USE > 0
```
