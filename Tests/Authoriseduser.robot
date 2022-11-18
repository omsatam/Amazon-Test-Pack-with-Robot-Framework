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
${username} =  Testing

*** Test Cases ***
User must sign in to check out
    [Documentation]      [Tags]  Smoke
    Amazon.Open Application
    Amazon.Navigate to Sign In page
    Amazon.Sign In With Credentials
    Amazon.Search For Product
    Amazon.Select Product From Search Results
    Amazon.Add Product To Cart
    Amazon.Begin Checkout
    Amazon.Verify Checkout page appears

User must sign in to add items to wish list
    [Documentation]      [Tags]  Smoke
    Amazon.Open Application
    Amazon.Navigate to Sign In page
    Amazon.Sign In With Credentials
    Amazon.Search For Product
    Amazon.Select Product From Search Results
    Amazon.Add product to wishlist
    Amazon.Verify Wishlist page appears
   
User must sign in to buy product
    [Documentation]      [Tags]  Smoke
    Amazon.Open Application
    Amazon.Navigate to Sign In page
    Amazon.Sign In With Credentials
    Amazon.Search For Product
    Amazon.Select Product From Search Results
    Amazon.Buy product now
    Amazon.Verify Checkout Page Appears

Verify Username is Displayed For Authorised User
    Amazon.Open Application
    Amazon.Navigate to Sign In page
    Amazon.Sign In With Credentials
    Verify Username Displayed

Verify Returns & Orders not Displayed For Authorised User
    Amazon.Open Application
    Amazon.Navigate to Sign In page
    Amazon.Sign In With Credentials
    Verify "Returns & Orders" Displayed

Verify Your Account Section For Authorised User
    Amazon.Open Application
    Amazon.Navigate to Sign In page
    Amazon.Sign In With Credentials
    Verify Every Item of "Your Account" Section for Authorised User