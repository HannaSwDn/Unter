@javascript

Feature: Hello World

    Check Hello World

    Scenario: Hello World
        Given I visit the site
        Then I should see 'Hello, Stranger!'
        Then I fill in 'name' with 'Hanna'
        Then show me the page
        And I click 'Submit'
        Then I should see 'Hello, Hanna!'