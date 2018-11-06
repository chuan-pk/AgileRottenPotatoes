Feature: User can add review to movie

Scenario: Add review
  Given I am log in with github
  When There are some movies in database  
  Given I am on the Star Wars Detail page
  And I press "Add Review"
  Then I should see "New Review for Star Wars"
  And I select "5" from "review_potatoes"
  And I fill in "review_comments" with "The movie is fun."
  And I press "Create Review"
  Then I should be on the Star Wars Detail page
  And I should see "my_github"
  And I should see "Score: 5"
  And I should see "The movie is fun."

