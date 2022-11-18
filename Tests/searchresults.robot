*** Settings ***
Documentation  This is basic info about whole suite
Library  SeleniumLibrary
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot
Resource  ../Resources/searchDefinition.robot
Resource  ../Resources/resultpageDefinition.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${Browser} =  chrome
${AmazonLink} =  https://amazon.in/
${SearchTerm} =  TV

*** Test Cases ***
Verify Default Filter Applied is Featured
    Amazon.Open Application
    Amazon.Search For Product
    Verify Default Sort By Feature
Verify Price Low To High Filter Working Correctly
    Amazon.Open Application
    Amazon.Search For Product
    Change Filter To "Price Low To High" and Verify Results
Verify Price High To Low Filter Working Correctly
    Amazon.Open Application
    Amazon.Search For Product
    Change Filter To "Price High To Low" and Verify Results
Verify Avg. Customer Review Filter Working Correctly
    Amazon.Open Application
    Amazon.Search For Product
    Change Filter To "Avg. Customer Review"
Verify Newest Arrivals Filter Working Correctly
    Amazon.Open Application
    Amazon.Search For Product
    Change Filter To "Newest Arrivals"
Verify User able to sort items based on 4 stars and Above
    Amazon.Open Application
    Amazon.Search For Product
    Change to "4 stars & up" and verify results
Verify User able to sort items based on 3 stars and Above
    Amazon.Open Application
    Amazon.Search For Product
    Change to "3 stars & up" and verify results
Verify User able to sort items based on 2 stars and Above
    Amazon.Open Application
    Amazon.Search For Product
    Change to "2 stars & up" and verify results
Verify User able to sort items based on 1 star and Above
    Amazon.Open Application
    Amazon.Search For Product
    Change to "1 star & up" and verify results
Verify User able to sort items based on Minimum Price Range
    Amazon.Open Application
    Amazon.Search For Product
    Change to Minimum Price Range and verify results
Verify User able to sort items based on First Price Range
    Amazon.Open Application
    Amazon.Search For Product
    Change to First Price Range and verify results
Verify User able to sort items based on Second Price Range
    Amazon.Open Application
    Amazon.Search For Product
    Change to Second Price Range prices and verify results
Verify User able to sort items based on Third Price Range
    Amazon.Open Application
    Amazon.Search For Product
    Change to Third Price Range and verify results
Verify User able to sort items based on Maximum Price Range
    Amazon.Open Application
    Amazon.Search For Product
    Change to Maximum Price Range and verify results

Verify User able to sort items based on Discount Categories
    Amazon.Open Application
    Amazon.Search For Product
    Change Discount Categories and Verify Results
Verify User able to sort items based on Brands
    Amazon.Open Application
    Amazon.Search For Product
    Change Brands and Verify Results