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
Verify Product Images Displayed Correctly
    Productpage.Verify Images
Select Product Images and Verify Results
    Productpage.Select Product Images
Open Product Image and Verify it Opened
    Productpage.Open Image and Verify
Verify Correct Product Opened
    Productpage.Verify Product
Verify All Product Page Items
    Productpage.Verify Product Page
Check Cart Quantity
    Topnav.Get Cart Quantity
Verify Cart Quantity Increased
    Topnav.Verify Cart Quantity is Increased
Add item to Wishlist
    Productpage.Add selected item to wishlist
Go to Wishlist
    Topnav.Open "Your Wish List"
Verify Product Available in Wishlist
    Productpage.Verify Product in wishlist
Delete Created Wishlist
    Productpage.Delete Wishlist