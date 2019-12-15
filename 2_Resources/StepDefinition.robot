*** Settings ***
Library    AppiumLibrary
Library    RESTClient.py
Resource    Variables.robot

*** Keywords ***
I create task via mobile apps in test project
    I login to the mobile apps
    Click Element    ${CREATE_TASK_BTN}
    Element Should Be Visible    ${TASK_TITLE_TXTBOX}
    Input Text    ${TASK_TITLE_TXTBOX}    ${TASK_TITLE_INPUT}
    Click Element    ${CREATE_TASK_BTN}
    Click Element    ${TASK_CONTAINER}
    Element Text Should Be    ${TASK_LIST}    ${TASK_TITLE_INPUT}

I list the task via API
    # TODO: Implement keywords

The task exists and listed via API
    # TODO: Implement keywords

##
I create test project via API
    Create New Project    "new projects"


I login to the mobile apps
    Open Application  ${REMOTE_URL}  platformName=${PLATFORM}  deviceName=${DEVICE}  app=${CURDIR}/Todoist_v12.8_apkpure.com.apk  appPackage=com.todoist  appActivity=com.todoist.activity.HomeActivity
    Wait Until Element Is Visible    ${LOGIN_VIA_EMAIL_BTN}
    Click Element    ${LOGIN_VIA_EMAIL_BTN}
    Wait Until Element Is Visible    ${EMAIL_TXTBOX}
    Input Text    ${EMAIL_TXTBOX}    ${EMAIL_INPUT}
    Click Element    ${CONTINUE_EMAIL_BTN}
    Wait Until Element Is Visible    ${PASSWORD_TXTBOX}
    Input Text    ${PASSWORD_TXTBOX}    ${PWD_INPUT}
    Click Element    ${LOGIN_BTN}
    Wait Until Element Is Visible    ${CREATE_TASK_BTN}
    Element Should Be Visible    ${CREATE_TASK_BTN}

I can see that the project is created in mobile apps.
    Click Element    class=android.widget.ImageButton
    @{sidebar_elements}    Get Webelements    class=android.widget.RelativeLayout
    Click Element    @{sidebar_elements}[4]
    Click Element    @{sidebar_elements}[4][1]
    Element Text Should Be    ${PROJECT_NAME}    "new projects"

##
I mark the task as completed
    # TODO: Implement keywords

I can reopen the task via API
    # TODO: Implement keywords

I can see the task is open again via mobile apps
    # TODO: Implement keywords