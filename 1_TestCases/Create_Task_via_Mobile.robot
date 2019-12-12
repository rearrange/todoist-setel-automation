*** Settings ***
Documentation    Suite description
Resource  ../2_Resources/StepDefinition.robot


*** Test Cases ***
Verify task created via mobile application exist in API
    Given I create task via mobile apps in test project
    When I list the task via API
    Then The task exists and listed via API

