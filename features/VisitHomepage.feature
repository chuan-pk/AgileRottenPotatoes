Feature: User can visit home page and see content 

Scenario: Visit home page
  Given I am on the RottenPotatoes home page
  And I should see "RottenPotatoes"
  And I should see "All movies"
  And I should see "Add new movie"