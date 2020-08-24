*** Settings ***
Test Setup   Open Browser  ${login_page_url}  Chrome
Test Teardown     Close Browser
Resource          ../import.robot

*** Test Cases ***
Add item to the cart from the main page
    Login with Email: ${correct_email} & Password: ${correct_password}
    When Go To    ${home_page_url}
    And And 1st item to the cart
    Then Confirmation pop-up is displayed

Add item to the cart from item page
    When user is on item page
    And Add item to the cart
    Then Confirmation pop-up is displayed

*** Keywords ***
Test Setup
    Open Browser  ${login_page_url}  Chrome
    Login with Email: ${correct_email} & Password: ${correct_password}