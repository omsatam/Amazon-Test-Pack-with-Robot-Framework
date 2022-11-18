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

Verify that Default language is English on Amazon home page
    [Documentation]      [Tags]  Smoke
    Amazon.Open Application
    Amazon.Verify Default language is "English"

Verify that Clicking Hindi will change Default Language to Hindi
    [Documentation]      [Tags]  Smoke
    Amazon.Open Application
    Amazon.Verify Default language is "English"
    Amazon.Change Default Language to "Hindi"
    Amazon.Verify Language Changed to "Hindi"

Verify that Clicking Tamil will change Default Language to Tamil
    [Documentation]      [Tags]  Smoke
    Amazon.Open Application
    Amazon.Verify Default language is "English"
    Amazon.Change Default Language to "Tamil"
    Amazon.Verify Language Changed to "Tamil"

Verify that Clicking Telgu will change Default Language to Telgu
    [Documentation]      [Tags]  Smoke
    Amazon.Open Application
    Amazon.Verify Default language is "English"
    Amazon.Change Default Language to "Telgu"
    Amazon.Verify Language Changed to "Telgu"

Verify that Clicking Kannada will change Default Language to Kannada
    [Documentation]      [Tags]  Smoke
    Amazon.Open Application
    Amazon.Verify Default language is "English"
    Amazon.Change Default Language to "Kannada"
    Amazon.Verify Language Changed to "Kannada"

Verify that Clicking Malayalam will change Default Language to Malayalam
    [Documentation]      [Tags]  Smoke
    Amazon.Open Application
    Amazon.Verify Default language is "English"
    Amazon.Change Default Language to "Malayalam"
    Amazon.Verify Language Changed to "Malayalam"
Verify that Clicking Bangla will change Default Language to Bangla
    [Documentation]      [Tags]  Smoke
    Amazon.Open Application
    Amazon.Verify Default language is "English"
    Amazon.Change Default Language to "Bangla"
    Amazon.Verify Language Changed to "Bangla"

Verify that Clicking Marathi will change Default Language to Marathi
    [Documentation]      [Tags]  Smoke
    Amazon.Open Application
    Amazon.Verify Default language is "English"
    Amazon.Change Default Language to "Marathi"
    Amazon.Verify Language Changed to "Marathi"

*** Keywords ***