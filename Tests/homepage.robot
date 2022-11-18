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

Verify that clicking all will display menu
    [Documentation]      [Tags]  Smoke
    Amazon.Open Application
    Amazon.Open Menu
    Amazon.Check Menu Opened Successfully

Verify that clicking Sell will open Sell page
    [Documentation]      [Tags]  Smoke
    Amazon.Open Application
    Amazon.Open Sell Page
    Amazon.Check Sell Page Opened Successfully

Verify that clicking Best Sellers will open Best Sellers page
    [Documentation]      [Tags]  Smoke
    Amazon.Open Application
    Amazon.Open Best Sellers Page
    Amazon.Check Best Sellers Page Opened Successfully

Verify that clicking Today's Deals will open Today's Deals page
    [Documentation]      [Tags]  Smoke
    Amazon.Open Application
    Amazon.Open "Today's Deals" Page
    Amazon.Check "Today's Deals" Page Opened Successfully

Verify that clicking Mobiles will open Mobiles page
    [Documentation]      [Tags]  Smoke
    Amazon.Open Application
    Amazon.Open "Mobiles" Page
    Amazon.Check "Mobiles" Page Opened Successfully

Verify that clicking Customer Service will open Customer Service page
    [Documentation]      [Tags]  Smoke
    Amazon.Open Application
    Amazon.Open "Customer Service" Page
    Amazon.Check "Customer Service" Page Opened Successfully

Verify that clicking Electronics will open Electronics page
    [Documentation]      [Tags]  Smoke
    Amazon.Open Application
    Amazon.Open "Electronics" Page
    Amazon.Check "Electronics" Page Opened Successfully

Verify that clicking Home & Kitchen will open Home & Kitchen page
    [Documentation]      [Tags]  Smoke
    Amazon.Open Application
    Amazon.Open "Home & Kitchen" Page
    Amazon.Check "Home & Kitchen" Page Opened Successfully

Verify that clicking Fashion open Fashion page
    [Documentation]      [Tags]  Smoke
    Amazon.Open Application
    Amazon.Open "Fashion" Page
    Amazon.Check "Fashion" Page Opened Successfully

Verify that clicking Mini TV Banner open Mini TV Page
    [Documentation]      [Tags]  Smoke
    Amazon.Open Application
    Amazon.Open Menu 
    Open Mini TV
    Check Mini TV opened
    
Verify that clicking Amazon Fresh Image open Amazon Fresh Page
    [Documentation]      [Tags]  Smoke
    Amazon.Open Application
    Open Amazon Fresh Page
    Check Amazon Fresh Page opened
    
*** Keywords ***