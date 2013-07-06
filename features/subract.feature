Feature: Subraction
  In order to avoid mistakes
  As a math beginner
  I want to see the difference of two numbers

  @sub
  Scenario: Subtraction with two numbers
    Given I visit the calculator page for subtract
    And I fill in '40' for 's_first'
    And I fill in '15' for 's_second'
    And I click on 'Subtract'
    Then I should view '25'

    @sub
  Scenario: Subtract one number
    Given I visit the calculator page for subtract
    And I fill in '12' for 's_first'
    And I fill in nothing for 's_second'
    And I click on 'Subtract'
    Then I should view '12'

    @sub
  Scenario: Subtract a bigger number from a smaller one
    Given I visit the calculator page for subtract
    And I fill in '5' for 's_first'
    And I fill in '8' for 's_second'
    And I click on 'Subtract'
    Then I should view '-3'