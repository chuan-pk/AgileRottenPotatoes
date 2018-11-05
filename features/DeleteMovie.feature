Feature: User can delete movie

Scenario: Delete Movie
  When There are some movies in database  
  Given I am on the RottenPotatoes home page
  And I should see "Star Wars"
  And I should see "Aladdin"
  When I follow "More about Star Wars"
  And I press "Delete"
  Then I should be on the RottenPotatoes home page
  And I should see "'Star Wars' deleted"
  And I should see "Aladdin"