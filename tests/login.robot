*** Settings ***
Test Setup   Open Browser  ${login_page_url}  Chrome
Test Teardown     Close Browser
Resource          ../import.robot
Resource          ../keywords/pages/login_page.robot

*** Test Cases ***
Login With Correct Cregentials
    When Login with Email: ${correct_email} & Password: ${correct_password}
    Then Success message is displayed
    And User is redirected to the account page

Try To Login With Invalid Email
    When Login with Email: ${invalid_email} & Password: ${invalid_password}
    Then Error message is displayed
    And User is not logged it

Try To Login With Invalid Password
    When Login with Email: ${correct_email} & Password: ${invalid_password}
    Then Error message is displayed
    And User is not logged it