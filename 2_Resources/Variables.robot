*** Variables ***
# Appium related variables
${REMOTE_URL}    http://localhost:4723/wd/hub
${PLATFORM}    Android
${DEVICE}    emulator-5554

# Mobile related variables (login page)
${LOGIN_VIA_EMAIL_BTN}    id=com.todoist:id/btn_welcome_continue_with_email
${EMAIL_TXTBOX}    id=com.todoist:id/email_exists_input
${CONTINUE_EMAIL_BTN}    id=com.todoist:id/btn_continue_with_email
${PASSWORD_TXTBOX}    id=com.todoist:id/log_in_password
${LOGIN_BTN}    id=com.todoist:id/btn_log_in

# Mobile related variables (task page)
${TASK_CONTAINER}    id=com.todoist:id/container
${CREATE_TASK_BTN}    id=com.todoist:id/fab
${TASK_LIST}    id=com.todoist:id/item
${TASK_TITLE_TXTBOX}    id=android:id/message

# Mobile related test data
${EMAIL_INPUT}    mnsallehin@gmail.com
${PWD_INPUT}    1234abcd!
${TASK_TITLE_INPUT}    'I want to eat'
