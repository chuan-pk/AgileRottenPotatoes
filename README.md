# Saas RottenPotatoes Rails Tutorial

install gem
```
bundle install
```
create `.env`
```
FACEBOOK_APP_ID=YOUR_APP_ID
FACEBOOK_APP_SECRET=YOUR_APP_SECRET
GITHUB_APP_ID=YOUR_APP_ID
GITHUB_APP_SECRET=YOUR_APP_SECRET
```
migrate database
```
rails db:migrate
rails db:migrate RAILS_ENV=test
```
run server
```
dotenv rails server
```
