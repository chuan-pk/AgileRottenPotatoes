Feature: User can see the movie detail

Scenario: Visit movie detail page
  When There are some movies in database    
  Given I am on the RottenPotatoes home page
  When I follow "More about Star Wars"
  Then I should be on "/movies/1"

Scenario: User can go back to movie index page
  Given I am on "/movies/1"
  And I should see "Back to movie list"
  When I follow "Back to movie list"
  Then I should be on the RottenPotatoes home page