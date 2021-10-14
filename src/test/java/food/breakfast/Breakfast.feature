Feature: Testing all my breakfast stuff

  Implementing examples from https://github.com/karatelabs/karate
  def overrides previous assignments!
  
  Scenario: I want to make scrambled eggs
    Given def mondayBreakfast = 'eggs'
    * def portion = 5
    * print 'the portion size is:', portion
    And assert portion + mondayBreakfast == '5eggs'
    
  Scenario: I want to make a full English breakfast
    Given def mondayBreakfast = { ingredients: ['eggs', 'bacon', 'hash brown', 'beans', 'toast', 'butter', 'fried tomato'], portion: 4 }
    Then match mondayBreakfast.portion == 4

  Scenario: I want to have a few breakfast options
    Given def options = [{ name: 'Full English breakfast'}, { name: 'Toast'}, { name: 'Eggs'}]
    Then match options[2] == { name: 'Eggs'}

  Scenario: I want to change the breakfast options
    Given def options = [{ name: 'Full English breakfast'}, { name: 'Toast'}, { name: 'Eggs'}]
    Then match options[2] == { name: 'Eggs'}
    When set options[2] = { name: 'Scrambled eggs'}
    Then match options[2] == { name: 'Scrambled eggs'}

  # Got to "Embedded Expressions" at https://github.com/karatelabs/karate
