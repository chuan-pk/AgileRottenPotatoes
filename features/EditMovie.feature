Feature: User can edit detail of movies

Scenario: Add new movie to database but spell the name wrong
  Given I am on the RottenPotatoes home page
  When I follow "Add new movie"
  Then I should be on the Create New Movie page
  #Misspelling
  When I fill in "Title" with "Spirit Away" 
  And I select "PG" from "Rating"
  And I press "Save Changes"
  #edit movie
  Given I am on the RottenPotatoes home page
  When I follow "More about Spirit Away"
  And I press "Edit info"
  Then I fill in "Title" with "Spirited Away"
  And I press "Save Changes"
  Then I should be on the RottenPotatoes home page
  And I should see "Spirited Away"