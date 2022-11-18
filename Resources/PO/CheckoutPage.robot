*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${addressInfo} =  css=#a-page > div.a-container.page-container > div
*** Keywords ***
Verify Checkout Page Displayed
    Wait Until Page Contains  Enter a new shipping address
    Wait Until Page Contains  Payment method
    Wait Until Page Contains  Items and delivery
    Page Should Contain Element  ${addressInfo}
    