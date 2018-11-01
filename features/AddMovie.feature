Feature: User can manually add movie

Scenario: Add a movie
  Given I am on the RottenPotatoes home page
  When I follow "Add new movie"
  Then I should be on the Create New Movie page
  When I fill in "Title" with "Star Wars"
  And I select "PG-13" from "Rating"
  And I press "Save Changes"
  Then I should be on the Star Wars Detail page
  And I should see "Details about Star Wars"

Scenario: Cancel a movie
  Given I am on the RottenPotatoes home page
  When I follow "Add new movie"
  Then I should be on the Create New Movie page
  When I fill in "Title" with "Star Wars"
  And I select "PG-13" from "Rating"
  And I press "Cancel"
  Then I should be on the RottenPotatoes home page
  And I should not see "Star Wars"