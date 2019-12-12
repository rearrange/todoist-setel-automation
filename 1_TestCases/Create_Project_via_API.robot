*** Settings ***
Documentation    Suite description
Resource  ../2_Resources/StepDefinition.robot

*** Test Cases ***
Verify project created via API exists in mobile apps
    Given I create test project via API
    When I login to the mobile apps
    Then I can see that the project is created in mobile apps.

