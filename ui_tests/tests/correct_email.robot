****Settings***
Documentation   suite dos testes de login com email correto

Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Test Cases***
Correct Email and Correct Password
    Given I access the main page
    When I submit my email "bruna.mec51@yahoo.com.br"
    And I submit my password "548407"
    And I click in "Sign in" button
    Then I should see my account   