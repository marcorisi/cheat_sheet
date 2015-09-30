### Enabling CORS
- Open a terminal and type  
`$ sudo s2enmod rewrite`  
`$ sudo s2enmod headers`

- Add following lines to your `.htaccess`
```
Header always set Access-Control-Allow-Origin "*"
Header always set Access-Control-Allow-Methods "POST, GET, OPTIONS, DELETE, PUT"
Header always set Access-Control-Allow-Headers "Origin, Content-Type, Accept, Authorization, X-Request-With"

# Added a rewrite to respond with a 200 SUCCESS on every OPTIONS request.
RewriteEngine On
RewriteCond %{REQUEST_METHOD} OPTIONS
RewriteRule ^(.*)$ $1 [R=200,L]
```

