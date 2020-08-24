*** Settings ***
Variables  home_page_locators.yaml
Variables  cart_confirmation_pop-up.robot

*** Keywords ***
And 1st item to the cart
    Mouse Over    ${product_element}
    Wait Until Element Is Visible    ${add_to_cart_button}
    Click Button     ${add_to_cart_button}

Confirmation pop-up is displayed
    Element Should Be Visible      ${cart_confirmation_pop_up}
    Element Text Should Be    ${cart_confirmation_pop_up}    ${cart_confirmation_message_text}

#    public void openCategoryMenuLink(String categoryTitle){
#        WebElement categoryItem = null;
#        switch (categoryTitle) {
#            case "Women":
#                categoryItem = categoryWomenMenuItem;
#                break;
#            case "Dresses":
#                categoryItem = categoryDressesMenuItem;
#                break;
#        }
#        WebDriverWait wait = new WebDriverWait(driver, 15);
#        wait.until(ExpectedConditions.elementToBeClickable(categoryItem));
#        categoryItem.click();
#    }
#
#    public void clickAddToCartButton(){
#        this.addToCartButton.click();
#    }
#
#    public void clickEyeButton(){
#        this.eyeButton.click();
#    }
#