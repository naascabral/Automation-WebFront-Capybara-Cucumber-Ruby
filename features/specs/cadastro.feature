Feature: cadastro

  I want to create an account into automation page
@cadastro
  Scenario: create an account automation page
     Given I click on Sign in in home page
      When I enter email in form create an account
        |  email  |              
        |  testnatali12@gmail.com |
       And I click in create an account
      Then "Authentication" page hould be shown
@cadastrar
  Scenario: create account automation page
     Given I on the screen to enter my data
      When Insert my data in the registration form
      And I click in Register
      Then "My account" page hould be shown