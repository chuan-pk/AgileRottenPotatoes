Feature: User can edit detail of movies

Scenario: Add new movie to database but spell the name wrong
  Given I am log in with github
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

Scenario: Cancel edit movie
  Given I am log in with github
  Given I am on the RottenPotatoes home page
  When I follow "Add new movie"
  Then I should be on the Create New Movie page
  When I fill in "Title" with "Star Wars" 
  And I select "PG" from "Rating"
  And I press "Save Changes"
  Given I am on the Star Wars Detail page
  And I press "Edit info"
  And I follow "Cancel"
  Then I should be on the Star Wars Detail page

Scenario: Edit a invalid movie
  Given I am log in with github
  When There are some movies in database
  Given I am on the Star Wars Detail page
  And I press "Edit info"
  #title should not blank
  When I fill in "Title" with "" 
  And I press "Save Changes"
  #re render movie edit page
  Then I should see "Edit Movie"
  And I should see "Title can't be blank"