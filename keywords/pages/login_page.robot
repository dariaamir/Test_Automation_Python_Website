*** Settings ***
Resource    ../import.robot
Variables  login_page_locators.yaml
Variables  account_page_locators.yaml

*** Keywords ***

Login with Email: ${email} & Password: ${password}
    Wait Until Element Is Visible    ${email_input_field}    timeout=${wait_timeout}
    Input Text    ${email_input_field}    ${email}
    Input Password    ${password_input_field}    ${password}
    Click Button    ${submit_button}


Success message is displayed
    Element Text Should Be    ${login_success_message}    ${login_success_message_text}


Errormessage is displayed
    Element Text Should Be    ${login_error_message}    ${authentification_error_text}


User is redirected to the account page
    Location Should Be    ${account_page_url}


User is not logged it
    Location Should Be    ${login_page_url}
