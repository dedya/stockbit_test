# Stockbit test
## 1. Mysql
Open './1. Mysql/mysql.txt' and run the query 

## 2. Laravel
This application is using laravel
- Config file in '/config/my.app.php'
- Env file : copy './.env.example' => '/.env' and adjust database connection
- Controller in '/app/Http/Controllers/OmdbController.php'
- Logging middleware in '/app/Http/Middleware/LogRequest.php'
- Database dump : ./database/init.sql

Example :
- Get movie base on searchword and page : 
http://localhost:8000/omdb?searchword=batman&pagination=2

- Get movie detail :
http://localhost:8000/omdb/detail/?id=tt3139086

## 3. Refactor
run './3. Refactor/stockbit3.php'

## 4. Logic
run './4. Login/stockbit4.php'
