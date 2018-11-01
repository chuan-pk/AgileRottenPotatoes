Feature: User can edit detail of movies

Scenario: Add new movie to database but spell the name wrong
  Given I am on the RottenPotatoes home page
  When I follow "Add new movie"
  Then I should be on the Create New Movie page
  #Misspelling
  When I fill in "Title" with "Star War" 
  And I select "PG" from "Rating"
  And I press "Save Changes"
  #edit movie
  Given I am on the Star Wars Detail page
  And I press "Edit info"
  Then I fill in "Title" with "Star Wars"
  And I fill in "Description" with "Star Wars is an American epic space opera franchise."
  And I press "Save Changes"
  Then I should be on the Star Wars Detail page
  And I should see "Details about Star Wars"

Scenario: Cancel edit movie
  Given I am on the RottenPotatoes home page
  When I follow "Add new movie"
  Then I should be on the Create New Movie page
  When I fill in "Title" with "Star Wars" 
  And I select "PG" from "Rating"
  And I press "Save Changes"
  Given I am on the Star Wars Detail page
  And I press "Edit info"
  And I press "Cancel"
  Then I should be on the Star Wars Detail page