*** Settings ***
Documentation    Suite description
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}    http://localhost:4723/wd/hub

*** Test Cases ***
Verify Appium is working and can open Todoist
    [Tags]    DEBUG
    Open Application  ${REMOTE_URL}  platformName=Android  deviceName=emulator-5554 app=../3_AUT/Todoist_v12.8_apkpure.com.apk
    Capture Page Screenshot
