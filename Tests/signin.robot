*** Settings ***
Documentation  This is basic info about whole suite
Library  SeleniumLibrary
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot

Test Setup  Common.Begin Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${Browser} =  chrome
${AmazonLink} =  https://amazon.in/
${SearchTerm} =  apple digital watch
*** Test Cases ***
User must give email/phone number to proceed
    Amazon.Open Application
    Amazon.Navigate to Sign In page
    Amazon.Click Continue Button and Verify Error message

User should give correct email
    [Documentation]      [Tags]  Smoke
    Amazon.Open Application
    Amazon.Navigate to Sign In page
    Amazon.Enter incorrect email address
    Amazon.Verify Error Message for Incorrect Email
    Amazon.Enter correct email address
    Amazon.Verify User is Navigated to Passwords Page

User should give correct Phone Number
    [Documentation]      [Tags]  Smoke
    Amazon.Open Application
    Amazon.Navigate to Sign In page
    Amazon.Enter incorrect Phone Number
    Amazon.Verify Error Message for Incorrect Phone Number
    Amazon.Enter correct Phone Number
    Amazon.Verify User is Navigated to Passwords Page

User must give password to proceed
    Amazon.Open Application
    Amazon.Navigate to Sign In page
    Amazon.Enter correct Phone Number
    Amazon.Verify User is Navigated to Passwords Page
    Amazon.Click Submit Button and Verify Error message

User must give OTP to proceed
    Amazon.Open Application
    Amazon.Navigate to Sign In page
    Amazon.Enter correct Phone Number
    Amazon.Verify User is Navigated to Passwords Page
    Amazon.Enter incorrect OTP and Verify Error message

User should give correct Password
    Amazon.Open Application
    Amazon.Navigate to Sign In page
    Amazon.Enter correct Phone Number
    Amazon.Verify User is Navigated to Passwords Page
    Amazon.Enter incorrect Password
    Amazon.Verify Error Message for Incorrect Password