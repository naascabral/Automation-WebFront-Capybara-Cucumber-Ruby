Feature: login

  I want to log into automation page

  Scenario: login automation page
     Given I click on Sign in in home page
      When I enter email and password in form login
       And I click in Sign in
      Then "My account" page hould be shown
     
  Scenario: invalid login automation page
     Given I click on Sign in in home page
      When I enter email and password invalid in form login
       And I click in Sign in
      Then alert "There is 1 error" hould be shown
  
  Scenario: blank login automation page
    Given I click on Sign in in home page
    When I enter email and password blank in form login
    And I click in Sign in
    Then alert "There is 1 error" hould be shown
        