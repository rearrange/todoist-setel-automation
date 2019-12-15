*** Settings ***
Documentation    Suite description
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}    http://localhost:4723/wd/hub

*** Test Cases ***
Verify Appium is working and can open Todoist
    [Tags]    DEBUG
    Open Application  ${REMOTE_URL}  platformName=Android  deviceName=emulator-5554  app=${CURDIR}/Todoist_v12.8_apkpure.com.apk  appPackage=com.todoist  appActivity=com.todoist.activity.HomeActivity
    Capture Page Screenshot

Login to Todoist via Appium
    Open Application  ${REMOTE_URL}  platformName=Android  deviceName=emulator-5554  app=${CURDIR}/../3_AUT/Todoist_v12.8_apkpure.com.apk  appPackage=com.todoist  appActivity=com.todoist.activity.HomeActivity
    Wait Until Element Is Visible    id=com.todoist:id/btn_welcome_continue_with_email
    Click Element    id=com.todoist:id/btn_welcome_continue_with_email
    Wait Until Element Is Visible    id=com.todoist:id/email_exists_input
    Input Text    id=com.todoist:id/email_exists_input    mnsallehin@gmail.com
    Click Element    id=com.todoist:id/btn_continue_with_email
    Wait Until Element Is Visible    com.todoist:id/log_in_password
    Input Text    com.todoist:id/log_in_password    1234abcd!
    Click Element    com.todoist:id/btn_log_in
