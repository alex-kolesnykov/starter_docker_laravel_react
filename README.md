# Starter Laravel and React application on Docker
### Sets up the virtual environment with
- PHP 7.4
- MySQL 8
- NGINX
- Adminer
- Composer
- NPM

### Set up process on a local machine
- pull the project
- create .env file based on .env.example file
- install composer per instructions https://www.digitalocean.com/community/tutorials/how-to-install-and-use-composer-on-ubuntu-18-04-ru
- composer create-project --ignore-platform-reqs laravel/laravel src
- change src/.env file in accordance with .env file
- docker-compose up -d --build
- docker-compose run --rm artisan ui react --auth
- docker-compose run --rm npm install
- docker-compose run npm run watch

### Usage
- run artisan command: `docker-compose run --rm artisan migrate`
- run npm command: `docker-compose run --rm npm run watch`
- run composer command: `docker-compose run --rm composer dumpautoload`
