## Installation
#### Via Git
```bash
git clone https://github.com/damarasf/POS-Damara-Toys.git
```


### Setup Application
Run this command
```bash
composer update
```
atau:
```bash
composer install
```
Copy .env file, from .env.example
```bash
cp .env.example .env
```
Configuration .env
```bash
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=example_app
DB_USERNAME=root
DB_PASSWORD=
```
*Opsional*
```bash
APP_NAME=Laravel
APP_ENV=local
APP_KEY=base64:QGRW4K7UVzS2M5HE2ZCLlUuiCtOIzRSfb38iWApkphE=
APP_DEBUG=true
APP_URL=http://example-app.test
```
Generate key
```bash
php artisan key:generate
```
Migrate database
```bash
php artisan migrate
```
Seeder table User, Settings
```bash
php artisan db:seed
```
Run the App
```bash
php artisan serve
```

## License

[MIT license](https://opensource.org/licenses/MIT)
