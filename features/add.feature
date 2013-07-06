Feature: Addition
  In order to avoid mistakes
  As a math beginner
  I want to see the sum of two numbers


  Scenario: Add two numbers
    Given I visit the calculator page for add
    And I fill in '50' for 'first'
    And I fill in '40' for 'second'
    And I click on 'Add' 
    Then I should see '90'

  Scenario: Add one numbers
    Given I visit the calculator page for add
    And I fill in '50' for 'first'
    And I fill in nothing for 'second'
    And I click on 'Add' 
    Then I should see '50'

  Scenario: Add no numbers
    Given I visit the calculator page for add
    And I fill in nothing for 'first'
    And I fill in nothing for 'second'
    And I click on 'Add' 
    Then I should see '0'