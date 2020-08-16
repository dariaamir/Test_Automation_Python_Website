*** Settings ***
Test Setup   Open Browser  ${login_page_url}  Chrome
Test Teardown     Close Browser
Resource          ../import.robot
Resource          ../keywords/pages/login_page.robot

*** Test Cases ***
Login With Correct Cregentials
    When Login with correct Email: ${login_email} & Password: ${login_password}
    Then Dashboard Page Should Be Displayed
