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
Verify manadotory fields on Sign up page
    Amazon.Open Application
    Amazon.Navigate to Sign up page
    Amazon.Check Manadotory Fields
Verify User can write any characters in Name Field
    Amazon.Open Application
    Amazon.Navigate to Sign up page
    Amazon.Enter Name Field
    Amazon.Verify User Navigated To Next Screen on Signup page 
Verify User Enters Correct Phone Number on Sign Up page
    Amazon.Open Application
    Amazon.Navigate to Sign up page
    Amazon.Validate if User Enters Incorrect Phone Number on Signup page
    Amazon.User Enters Correct Phone Number
    Amazon.Verify User Navigated To Next Screen on Signup page 
Verify User Enters Correct Email Address on Sign Up page
    Amazon.Open Application
    Amazon.Navigate to Sign up page
    Amazon.Validate if User Enters Incorrect Email Address on Signup page
    Amazon.User Enters Correct Email Address
    Amazon.Verify User Navigated To Next Screen on Signup page 
Verify User Enters Correct Password on Sign Up page
    Amazon.Open Application
    Amazon.Navigate to Sign up page
    Amazon.Validate if User Enters Incorrect Password on Signup page
    Amazon.User Enters Correct Password
    Amazon.Verify User Navigated To Next Screen on Signup page 


