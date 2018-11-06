Feature: User can login with third party account

Scenario: Visit login page
  Given I am on the home page
  Then I should see "Log in with Facebook"
  And I should see "Log in with Github"
  When I follow "RottenPotatoes movies page"
  Then I should be on the home page

Scenario: Log in with gihub account
  Given I am log in with github
  Then I should be on the RottenPotatoes home page
  And I should see "my_github"

Scenario: Log out
  Given I am log in with github
  Then I should be on the RottenPotatoes home page
  #press logout link
  When I follow link by id "logout"
  Then I should be on the home page
  And I should not see "my_github"