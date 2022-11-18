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
VVerify Default Sort By Feature
    Resultpage.Verify Default Sort by Feature
Change Filter To "Price Low To High" and Verify Results
    Resultpage.Change Filter to "Price Low To High"
    Resultpage.Verify Products coming in Low to High price
Change Filter To "Price High To Low" and Verify Results
    Resultpage.Change Filter to "Price High To Low"
    Resultpage.Verify Products coming in High to Low price
Change Filter To "Avg. Customer Review"
    Resultpage.Change Filter to "Avg. Customer Review" and Verify
Change Filter To "Newest Arrivals"
    Resultpage.Change Filter To "Newest Arrivals" and Verify
Change to "4 stars & up" and verify results
    Resultpage.Select "4 stars and above"
    Resultpage.Verify All Items displayed have rating more than 4 stars
Change to "3 stars & up" and verify results
    Resultpage.Select "3 stars and above"
    Resultpage.Verify All Items displayed have rating more than 3 stars
Change to "2 stars & up" and verify results
    Resultpage.Select "2 stars and above"
    Resultpage.Verify All Items displayed have rating more than 2 stars
Change to "1 star & up" and verify results
    Resultpage.Select "1 star and above"
    Resultpage.Verify All Items displayed have rating more than 1 star
Change to Minimum Price Range and verify results
    Resultpage.Select Minimum range available and Verify Results
Change to First Price Range and verify results
    Resultpage.Select First range and Verify Results
Change to Second Price Range prices and verify results
    Resultpage.Select Second range and Verify Results
Change to Third Price Range and verify results
    Resultpage.Select Third range and Verify Results
Change to Maximum Price Range and verify results
    Resultpage.Select Maximum range available and Verify Results
Change Discount Categories and Verify Results
    Resultpage.Select First Discount Category and Verify Results
    Search.Search For Product   
    Resultpage.Verify Search Results 
    Resultpage.Select Second Discount Category and Verify Results
    Search.Search For Product   
    Resultpage.Verify Search Results
    Resultpage.Select Third Discount Category and Verify Results
    Search.Search For Product   
    Resultpage.Verify Search Results
    Resultpage.Select Fourth Discount Category and Verify Results
    Search.Search For Product   
    Resultpage.Verify Search Results
    Resultpage.Select Fifth Discount Category and Verify Results
    Search.Search For Product   
    Resultpage.Verify Search Results
    Resultpage.Select Sixth Discount Category and Verify Results
    Search.Search For Product   
    Resultpage.Verify Search Results
Change Brands and Verify Results
    Resultpage.Select First Brand and Verify Results
    Search.Search For Product   
    Resultpage.Verify Search Results 
    Resultpage.Select Second Brand and Verify Results
    Search.Search For Product   
    Resultpage.Verify Search Results
    Resultpage.Select Third Brand and Verify Results
    Search.Search For Product   
    Resultpage.Verify Search Results
    Resultpage.Select Fourth Brand and Verify Results
    Search.Search For Product   
    Resultpage.Verify Search Results
    Resultpage.Select Fifth Brand and Verify Results
    Search.Search For Product   
    Resultpage.Verify Search Results
    Resultpage.Select Sixth Brand and Verify Results
    Search.Search For Product   
    Resultpage.Verify Search Results
    Resultpage.Select Seventh Brand and Verify Results