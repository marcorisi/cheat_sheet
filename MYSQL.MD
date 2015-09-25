- Update some column via JOIN  
```
UPDATE TABLE_A a 
    JOIN TABLE_B b ON a.join_col = b.join_col AND a.column_a = b.column_b 
    JOIN TABLE_C c ON [condition]
SET a.column_c = a.column_c + 1
```

- Add an index to a table  
`ALTER TABLE $table ADD INDEX $index_id ($column_name)`

- Show list of table indexes  
`SHOW INDEXES FROM $table`

- Explain a query  
`EXPLAIN $query`
