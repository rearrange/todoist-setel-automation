*** Settings ***
Documentation    Suite description
Resource    ../2_Resources/StepDefinition.robot

*** Test Cases ***
Verify project created via API exists in mobile apps
    [Tags]    regression
    Given I create test project via API
    When I login to the mobile apps
    Then I can see that the project is created in mobile apps.

Verify task created via mobile application exist in API
    [Tags]    regression
    Given I create task via mobile apps in test project
    When I list the task via API
    Then The task exists and listed via API

Verify task can be reopen via API
    [Tags]    regression
    Given I create task via mobile apps in test project
    When I mark the task as completed
    Then I can reopen the task via API
    And I can see the task is open again via mobile apps

