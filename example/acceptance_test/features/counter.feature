Feature: Counter

  Scenario: User can increment the counter
    Given I expect the "counter" to be "0"
    When I tap the "plus" icon 1 times
    Then I expect the "counter" to be "1"