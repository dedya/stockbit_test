# OMDB test
This application is using laravel
- Config file in '/config/my.app.php'
- Env file : '/.env'
- Controller in '/app/Http/Controllers/OmdbController.php'
- Logging middleware in '/app/Http/Middleware/LogRequest.php'
- Database dump : ./database/init.sql

Example :
- Get movie base on searchword and page : 
http://localhost:8000/omdb?searchword=batman&pagination=2

- Get movie detail :
http://localhost:8000/omdb/detail/?id=tt3139086