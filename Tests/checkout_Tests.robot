*** Settings ***
Library    AppiumLibrary
Resource   ../Helper/common.robot
Resource   ../Pages/LoginPage.robot
Resource   ../Pages/home_Page.robot
Resource   ../Pages/checkout_Page.robot
Resource   ../Resource/login_resources.robot

*** Test Cases ***
Validate Checkout Flow End To End
    [Tags]    checkout    regression
    Open App
    Login    ${USERNAME}    ${PASSWORD}

    Add First Product To Cart
    Go To Cart

    Go To Checkout
    Enter Checkout Information    Nikita    Test    45500
    Finish Checkout
    Verify Checkout Success