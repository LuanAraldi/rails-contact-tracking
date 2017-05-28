# Rails Contact Tracking
---
### Runnig Locally With Docker

Building Rails Image
```bash
docker build rails/
```
Lifting docker containers in detached mode (that way we can have a clean terminal)
```bash
docker-compose up -d
```
Entering the rails container environment
```bash
docker-compose exec rails bash
```
Navigate to app folder
```
cd app
```
Install dependencies
```
bundle install
```
In ```config/database.yml``` set up your local IP addres on host, database name, username and password, those database credentials are already configured in the docker-compose.yml, so no need to worry about it.
```ruby
development:
  host: 192.168.1.10
  adapter: postgresql
  encoding: unicode
  database: rails
  pool: 5
  username: rails
  password: rails
```
Run migrations
```bash
rails db:migrate
```
Run tests
```bash
rails test
```
Run the local server
```bash
rails server
```
### Runnig Locally Without Docker

Install dependencies
```
bundle install
```
In ```config/database.yml``` set up your local IP addres on host, database name, username and password
```ruby
development:
  host: 192.168.1.10
  adapter: postgresql
  encoding: unicode
  database: rails
  pool: 5
  username: rails
  password: rails
```
Run migrations
```bash
rails db:migrate
```
Run tests
```bash
rails test
```
Run the local server
```bash
rails server
```

