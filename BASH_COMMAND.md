### create self signed certificate
`$ openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout sitename.key -out sitename.crt`  

### mysql database structure dump
`$ mysqldump -u username -h ip_address -ppassword -d -R --trigger schema > yyyymmdd.schema.structure`  

### check relevant differences between two mysql structure dump
`$ diff dump1.structure dump2.structure | grep -v AUTO_INCREMENT | grep -v 'Dump completed' | grep -v 'Host:' | grep -v '\-\-\-'`

### mysql database dump
`$ mysqldump -u username -h ip_address -ppassword schema > yyyymmdd.schema.sql`  

### copy the file `foo.bar` from a remote host to localhost
`$ scp user@host:/remote/directory/foo.bar /local/directory`

### copy the file `foo.bar` from localhost to a remote host
`$ scp foo.bar user@host:/remote/directory`

### compress some files in a `.tar.gz`
`$ tar -zcvf filename.tar.gz *.pdf`

### list directories
`$ ls -d */`

### diagnose network issues
`$ mtr hostname`
