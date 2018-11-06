Feature: User can visit home page and see content 

Scenario: Visit home page
  Given I am log in with github
  Given I am on the RottenPotatoes home page
  And I should see "RottenPotatoes"
  And I should see "All movies"
  And I should see "Add new movie"

Scenario: Home page display all movie
  Given I am log in with github
  #there are Star Wars and Aladdin in database
  When There are some movies in database    
  Given I am on the RottenPotatoes home page
  And I should see "Star Wars"
  And I should see "Aladdin"