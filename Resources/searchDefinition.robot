*** Settings ***
Library  SeleniumLibrary
Resource  ./PO/CartPage.robot
Resource  ./PO/Topnav.robot
Resource  ./PO/SigninPage.robot
Resource  ./PO/SignupPage.robot
Resource  ./PO/LandingPage.robot
Resource  ./PO/Resultpage.robot
Resource  ./PO/Productpage.robot
Resource  ./PO/Search.robot
*** Keywords ***
Search From Recommended Product
    Search.Open Recommended Product    
Verify Default Selected Dropdown is "All"
    Search.Verify Default Dropdown Selection
Select item from Dropdown and Verify Result
    Search.Verify all Dropdown Items