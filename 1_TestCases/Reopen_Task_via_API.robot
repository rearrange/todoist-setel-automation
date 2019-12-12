*** Settings ***
Documentation    Suite description
Documentation    Suite description
Resource  ../2_Resources/StepDefinition.robot

*** Test Cases ***
Verify task can be reopen via API

    Given I create task via mobile apps in test project
    When I mark the task as completed
    Then I can reopen the task via API
    And I can see the task is open again via mobile apps