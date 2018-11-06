Feature: User can see the movie detail

Scenario: Visit movie detail page
  Given I am log in with github
  When There are some movies in database    
  Given I am on the RottenPotatoes home page
  When I follow "More about Star Wars"
  Then I should be on the Star Wars Detail page

Scenario: User can go back to movie index page
  Given I am log in with github
  When There are some movies in database   
  Given I am on the Star Wars Detail page
  When I press "Back to movie list"
  Then I should be on the RottenPotatoes home page