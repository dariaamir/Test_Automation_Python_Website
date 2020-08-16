*** Settings ***
Library  SeleniumLibrary
Variables  login_page_locators.yaml

*** Keywords ***

#Get Login Page URL
#    return this.loginPageURL

Login with correct Email: ${email} & Password: ${password}
    Wait Until Element Is Visible    ${email_input_field}    timeout=${wait_timeout}
    Input Text    ${email_input_field}    ${login_email}
    Input Password    ${password_input_field}    ${login_password}
    Click Button    ${submit_button}
    Element Text Should Be    ${login_success_message}    ${login_success_message_text}
#
#    public void enterLoginAndPassword(String username, String password){
#        this.emailInputField.sendKeys(username);
#        this.passwordInputField.sendKeys(password);
#        this.submitLoginButton.click();
#    }
#
#    public void clearInputFields(){
#        this.emailInputField.clear();
#        this.passwordInputField.clear();
#    }
#
#    public String getSuccessLoginMessage(){
#        return this.loginSuccessMessageText.getText();
#    }
#
#    public String getErrorLoginMessage(){
#        return this.loginErrorMessageText.getText();