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
Open Mini TV 
    LandingPage.Click on Mini TV Banner
Check Mini TV opened
    Resultpage.Verify Mini TV opened
Open Amazon Fresh Page
    LandingPage.Click Amazon Fresh Image
Check Amazon Fresh Page opened
    Resultpage.Verify Amazon Fresh Page opened
Verify "Returns & Orders" not Displayed
    Topnav.Open "Returns & Orders"
    SigninPage.Verify sign in
Verify "Returns & Orders" Displayed
    Topnav.Open "Returns & Orders"
    Resultpage.Verify "Returns & Orders" Page is Displayed
Verify Username not Displayed
    Topnav.Verify Username is not Displayed
Verify Username Displayed
    Topnav.Verify Username is Displayed

Verify Every Item of "Your Account" Section
    Topnav.Open "Your Account" 
    Resultpage.Verify "Your Account" Page Opened
    Topnav.Open "Your Orders" 
    SigninPage.Verify sign in
    LandingPage.Go To Homepage
    Topnav.Open "Your Wish List" 
    Resultpage.Verify "Your Wish List" Page Opened
    Topnav.Open "Your Recommendations" 
    Resultpage.Verify "Your Recommendations" Page Opened
    Topnav.Open "Your Prime Membership" 
    SigninPage.Verify sign in
    LandingPage.Go To Homepage
    Topnav.Open "Your Prime Video" 
    Resultpage.Verify "Your Prime Video" Page Opened
    LandingPage.Load
    LandingPage.Verify Page Loaded
    Topnav.Open "Your Subscribe & Save Items" 
    SigninPage.Verify sign in
    LandingPage.Go To Homepage
    Topnav.Open "Memberships & Subscriptions" 
    SigninPage.Verify sign in
    LandingPage.Go To Homepage
    Topnav.Open "Your Amazon Business Account" 
    Resultpage.Check "Your Amazon Business Account" Page Opened
    Topnav.Open "Your Seller Account" 
    Resultpage.Verify Sell Page
    Topnav.Open "Manage Your Content and Devices" 
    SigninPage.Verify sign in
Verify Every Item of "Your Account" Section for Authorised User
    Topnav.Open "Your Account" 
    Resultpage.Verify "Your Account" Page Opened
    Topnav.Open "Your Orders" 
    Resultpage.Verify "Returns & Orders" Page is Displayed
    Topnav.Open "Your Wish List" 
    Resultpage.Verify "Your Wish List" Page Opened
    Topnav.Open "Your Recommendations" 
    Resultpage.Verify "Your Recommendations" Page Opened
    Topnav.Open "Your Prime Membership" 
    Resultpage.Verify "Your Prime Membership" Page Opened
    Topnav.Open "Your Prime Video" 
    Resultpage.Verify "Your Prime Video" Page Opened
    LandingPage.Load
    Topnav.Open "Your Subscribe & Save Items" 
    Resultpage.Verify "Your Subscribe & Save Items" Page Opened
    Topnav.Open "Memberships & Subscriptions" 
    Resultpage.Verify "Memberships & Subscriptions" Page Opened
    Topnav.Open "Your Amazon Business Account" 
    Resultpage.Check "Your Amazon Business Account" Page Opened
    Topnav.Open "Your Seller Account" 
    Resultpage.Verify Sell Page
    Topnav.Open "Manage Your Content and Devices" 
    Resultpage.Verify "Manage Your Content and Devices" Page Opened
    Topnav.Open "Switch Accounts" 
    Resultpage.Verify "Switch Accounts" Page Opened