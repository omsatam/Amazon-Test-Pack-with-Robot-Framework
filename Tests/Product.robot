*** Settings ***
Documentation  This is basic info about whole suite
Library  SeleniumLibrary
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot
Resource  ../Resources/searchDefinition.robot
Resource  ../Resources/ProductpageDefinition.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${Browser} =  chrome
${AmazonLink} =  https://amazon.in/
${SearchTerm} =  apple digital watch

*** Test Cases ***
Verify Product Images Displayed Correctly
    Amazon.Open Application
    Amazon.Search For Product
    Amazon.Select Product From Search Results
    Verify Product Images Displayed Correctly
Verify User able to Open Image
    Amazon.Open Application
    Amazon.Search For Product
    Amazon.Select Product From Search Results
    Open Product Image and Verify it Opened
Verify User able to Select Images 
    Amazon.Open Application
    Amazon.Search For Product
    Amazon.Select Product From Search Results
    Select Product Images and Verify Results
Verify Product Opened is Correct 
    Amazon.Open Application
    Amazon.Search For Product
    Amazon.Select Product From Search Results
    Verify Correct Product Opened
Verify All Items in Product Page
    Amazon.Open Application
    Amazon.Search For Product
    Amazon.Select Product From Search Results
    Verify All Product Page Items
Verify Add to cart Increases Cart Quantity 
    Amazon.Open Application
    Amazon.Search For Product
    Amazon.Select Product From Search Results
    Check Cart Quantity
    Amazon.Add Product To Cart
    Verify Cart Quantity Increased
Verify Product Present in Wishlist after Adding
    Amazon.Open Application
    Amazon.Navigate to Sign In page
    Amazon.Sign In With Credentials
    Amazon.Search For Product
    Amazon.Select Product From Search Results
    Amazon.Add product to wishlist
    Amazon.Verify Wishlist page appears
    Add item to wishlist
    Go to Wishlist
    Verify Product Available in Wishlist
    Delete Created Wishlist