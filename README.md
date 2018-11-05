## Heroku Deploy
Use the `heroku` branch 
Clone this project 
```
git clone https://github.com/chuan-pk/AgileRottenPotatoes.git <folder>
git checkout heroku
# Add your App_ID and App_Secret in config/initializer/config_omninauth.rb
git init
git add .
git commit -m <commit message>
```


create heroku app or set remote to your app.
```
heroku create								#create new app
heroku git:remote -a <app name>				#set remote
```

force push heroku branch to heroku
```
git push -f heroku heroku:master	
```


migrate database
```
heroku run rails db:migrate
heroku run rails db:seed
```
open app in browser
```
heroku open
```

for reset database
```
heroku pg:reset
```

ref: https://devcenter.heroku.com/articles/getting-started-with-rails5
