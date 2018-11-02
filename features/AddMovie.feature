Feature: User can manually add movie

Scenario: Add a movie
  Given I am on the RottenPotatoes home page
  When I follow "Add new movie"
  Then I should be on the Create New Movie page
  When I fill in "Title" with "Star Wars"
  And I select "PG-13" from "Rating"
  And I fill in "Description" with "Star Wars is an American epic space opera franchise."
  And I press "Save Changes"
  Then I should be on the Star Wars Detail page
  And I should see "Details about Star Wars"

Scenario: Cancel a movie
  Given I am on the RottenPotatoes home page
  When I follow "Add new movie"
  Then I should be on the Create New Movie page
  When I fill in "Title" with "Star Wars"
  And I select "PG-13" from "Rating"
  And I follow "Cancel"
  Then I should be on the RottenPotatoes home page
  And I should not see "Star Wars"

Scenario: Add a invalid movie
  Given I am on the RottenPotatoes home page
  #title should not blank
  When I follow "Add new movie"
  And I press "Save Changes"
  #when invalid re render new page
  Then I should see "Create New Movie"