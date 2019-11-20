##安装
- composer update
- php artisan key:generate
- php artisan migrate
- php artisan passport:install

<!--  Collection-->
##开发技巧
- php artisan make:controller api/CollectionController
- php artisan make:repository CollectionRepository 
- php artisan make:model Models/Collection

##开启wesocket
- php artisan swoole:server

