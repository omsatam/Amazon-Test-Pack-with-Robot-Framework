*** Settings ***
Documentation  This is basic info about whole suite
Library  SeleniumLibrary
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot
Resource  ../Resources/searchDefinition.robot
Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${Browser} =  chrome
${AmazonLink} =  https://amazon.in/
${SearchTerm} =  apple digital watch

*** Test Cases ***
Verify Default Search Dropdown Category in Searchbox
    Amazon.Open Application
    Verify Default Selected Dropdown is "All"
Verify Search Dropdown Categories in Searchbox
    Amazon.Open Application
    Select item from Dropdown and Verify Result
Verify User able to see relevant items after Typing in Search Box
    Amazon.Open Application
    Amazon.Type in Searchbox
    Amazon.Check Recommendations are Displaying correctly

Verify User able to open required item after Clicking on Required Product
    Amazon.Open Application
    Amazon.Type in Searchbox
    Check Recommendations are Displaying correctly
    Search From Recommended Product
    Amazon.Verify Search Results

Verify User able to Search for Product
    Amazon.Open Application
    Amazon.Search For Product