*** Settings ***
Library  SeleniumLibrary
Resource  PO/CartPage.robot
Resource  Po/LandingPage.robot
Resource  PO/SigninPage.robot
Resource  PO/Topnav.robot

*** Variables ***
${HomepageLogo} =  xpath=//*[@id="a-page"]/div[1]/div[1]/div/a
${MiniTVLink} =  Amazon miniTV- FREE entertainment
*** Keywords ***
Load
    Go to  ${AmazonLink} 
Verify Page Loaded
    Wait Until Page Contains  Sign in for your best experience
Go To Homepage
    Click Link  ${HomepageLogo}
Click on Mini TV Banner
    Sleep  1
    Click Link  ${MiniTVLink}
Click Amazon Fresh Image
    Sleep  1
    Scroll Element Into View  css=div#desktop-grid-5>div.fluid-quad-image-label:nth-child(1)
    Click Element  css=div#desktop-grid-5>div.fluid-quad-image-label >div:nth-child(2) > div:nth-child(1) > div:nth-child(1) 

