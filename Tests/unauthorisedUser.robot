*** Settings ***
Documentation  This is basic info about whole suite
Library  SeleniumLibrary
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot
Resource  ../Resources/HomepageDefinition.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${Browser} =  chrome
${AmazonLink} =  https://amazon.in/
${SearchTerm} =  apple digital watch

*** Test Cases ***
User must sign in to check out
    [Documentation]      [Tags]  Smoke
    Amazon.Open Application
    Amazon.Search For Product
    Amazon.Select Product From Search Results
    Amazon.Add Product To Cart
    Amazon.Begin Checkout
    Amazon.Verify Sign In page appears

User must sign in to add items to wish list
    [Documentation]      [Tags]  Smoke
     Amazon.Open Application
    Amazon.Search For Product
    Amazon.Select Product From Search Results
    Amazon.Add product to wishlist
    Amazon.Verify Sign In page appears
   
User must sign in to buy product
    [Documentation]      [Tags]  Smoke
     Amazon.Open Application
    Amazon.Search For Product
    Amazon.Select Product From Search Results
    Amazon.Buy product now
    Amazon.Verify Sign In page appears

Verify Username not Displayed For Unauthorised User
    Amazon.Open Application
    Verify Username not Displayed

Verify Returns & Orders not Displayed For Unauthorised User
    Amazon.Open Application
    Verify "Returns & Orders" not Displayed

Verify Your Account Section For Unauthorised User
    Amazon.Open Application
    Verify Every Item of "Your Account" Section