Feature: Division
  In order to avoid mistakes
  As a math beginner
  I want to see the result of dividing two numbers

  # @div
  Scenario: Divide two numbers
    Given I visit the calculator page for divide
    And I fill in '10' for 'd_first'
    And I fill in '2' for 'd_second'
    And I click on 'Divide'
    Then I should find '5.0'

  @div
  Scenario: Divide one number by zero
    Given I visit the calculator page for divide
    And I fill in '4' for 'd_first'
    And I fill in '0' for 'd_second'
    And I click on 'Divide'
    Then I should find 'Error: you cannot divide by zero'

  # @div
  Scenario: Divide a smaller number by a larger one
    Given I visit the calculator page for divide
    And I fill in '3' for 'd_first'
    And I fill in '4' for 'd_second'
    And I click on 'Divide'
    Then I should find '0.75'