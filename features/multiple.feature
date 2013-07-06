Feature: Multiplication
  In order to avoid mistakes
  As a math beginner
  I want to see the product of two numbers

  @mult
  Scenario: Multiply two numbers
    Given I visit the calculator page for multiply
    And I fill in '2' for 'm_first'
    And I fill in '5' for 'm_second'
    And I click on 'Multiply'
    Then I should get '10'

  @mult
  Scenario: Multiply one number by zero
    Given I visit the calculator page for multiply
    And I fill in '2' for 'm_first'
    And I fill in nothing for 'm_second'
    And I click on 'Multiply'
    Then I should get '0'

  @mult
  Scenario: Multiply one number by a fraction.
    Given I visit the calculator page for multiply
    And I fill in '2' for 'm_first'
    And I fill in '2/1' for 'm_second'
    And I click on 'Multiply'
    Then I should get '4' 