*** Settings ***
Library    AppiumLibrary
Resource   ../helper/common.robot
Resource   ../Pages/LoginPage.robot
Resource   ../Pages/home_Page.robot
Resource   ../Resource/login_resources.robot

*** Test Cases ***
Add 2 Items And Verify Cart Count
    [Tags]    cart
    Open App
    Login    ${USERNAME}    ${PASSWORD}
    Add First Product To Cart
    Add Second Product To Cart
    Go To Cart
    Verify Two Items Added