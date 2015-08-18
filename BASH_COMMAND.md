### create self signed certificate
`openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout sitename.key -out sitename.crt`  

### mysql database structure dump
`mysqldump -u username -h ip_address -ppassword -d -R --trigger schema > yyyymmdd.schema.structure`  

### mysql database dump
`mysqldump -u username -h ip_address -ppassword schema > yyyymmdd.schema.sql`  
