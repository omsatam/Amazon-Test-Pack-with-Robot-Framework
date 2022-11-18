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
Resource  ./PO/CheckoutPage.robot
*** Keywords ***
Open Application
    LandingPage.Load
Open Menu
    Topnav.Click Menu
Check Menu Opened Successfully
    Topnav.Verify Menu
Open Sell Page
    Topnav.Click Sell
Check Sell Page Opened Successfully
    Resultpage.Verify Sell Page
Open Best Sellers Page
    Topnav.Click "Best Sellers"
Check Best Sellers Page Opened Successfully
    Resultpage.Verify "Best Sellers" Page
Open "Today's Deals" Page
    Topnav.Click "Today's Deals"
Check "Today's Deals" Page Opened Successfully
    Resultpage.Verify "Today's Deals" Page
Open "Mobiles" Page
    Topnav.Click "Mobiles"
Check "Mobiles" Page Opened Successfully
    Resultpage.Verify "Mobiles" Page
Open "Customer Service" Page
    Topnav.Click "Customer Service"
Check "Customer Service" Page Opened Successfully
    Resultpage.Verify "Customer Service" Page
Open "Electronics" Page
    Topnav.Click "Electronics"
Check "Electronics" Page Opened Successfully
    Resultpage.Verify "Electronics" Page
Open "Home & Kitchen" Page
    Topnav.Click "Home & Kitchen"
Check "Home & Kitchen" Page Opened Successfully
    Resultpage.Verify "Home & Kitchen" Page
Open "Fashion" Page
    Topnav.Click "Fashion"
Check "Fashion" Page Opened Successfully
    Resultpage.Verify "Fashion" Page
Verify Default language is "English"
    Topnav.Verify Default Language
Change Default Language to "Hindi"
    Topnav.Change To "Hindi" Language
Verify Language Changed to "Hindi"
    Topnav.Verify "Hindi" Language
Change Default Language to "Tamil"
    Topnav.Change To "Tamil" Language
Verify Language Changed to "Tamil"
    Topnav.Verify "Tamil" Language
Change Default Language to "Telgu"
    Topnav.Change To "Telgu" Language
Verify Language Changed to "Telgu"
    Topnav.Verify "Telgu" Language
Change Default Language to "Kannada"
    Topnav.Change To "Kannada" Language
Verify Language Changed to "Kannada"
    Topnav.Verify "Kannada" Language
Change Default Language to "Malayalam"
    Topnav.Change To "Malayalam" Language
Verify Language Changed to "Malayalam"
    Topnav.Verify "Malayalam" Language
Change Default Language to "Bangla"
    Topnav.Change To "Bangla" Language
Verify Language Changed to "Bangla"
    Topnav.Verify "Bangla" Language
Change Default Language to "Marathi"
    Topnav.Change To "Marathi" Language
Verify Language Changed to "Marathi"
    Topnav.Verify "Marathi" Language
Search For Product
    Search.Search For Product
    Resultpage.Verify Search Results
Verify Search Results
    Resultpage.Verify Search Results
Type in Searchbox
    Search.Enter Value 
Check Recommendations are Displaying correctly
    Search.Verify Recommendations
Select Product From Search Results
    Resultpage.Select required product
    Productpage.Verify Required product opened
Add Product To Cart
    Productpage.Add to cart
Buy product now
    Productpage.Buy now
Add product to wishlist
    Productpage.Add to wishlist
Begin Checkout
    Productpage.Checkout product
Verify Sign In page appears
    Signinpage.Verify sign in
Navigate to Sign In page
    Topnav.Go To Signin
Enter incorrect email address
    SigninPage.Enter Wrong Email
Enter correct email address
    SigninPage.Enter Correct Email
Verify Error Message for Incorrect Email
    SigninPage.Verify Wrong Email Error
Enter incorrect Phone Number
    SigninPage.Enter Wrong Number
Verify Error Message for Incorrect Phone Number
    SigninPage.Verify Wrong Number Error
Enter correct Phone Number
    SigninPage.Enter Correct Number
Verify User is Navigated to Passwords Page
    SigninPage.Verify Passowords Page
Enter incorrect Password
    SigninPage.Enter wrong Password
Verify Error Message for Incorrect Password
    Signinpage.Verify Wrong Password Error
Click Continue Button and Verify Error message
    SigninPage.Submit Without email and Check Error
Click Submit Button and Verify Error message
    SigninPage.Submit Without password and Check Error
Enter incorrect OTP and Verify Error message
    SigninPage.Enter wrong OTP and Check Error
Navigate to Sign up page
    SignupPage.Go to Signup
Check Manadotory Fields
    SignupPage.Check all Manadotory Fields
Enter Name Field
    SignupPage.Check For Name
Verify User Navigated To Next Screen on Signup page
    SignupPage.Verify Next Page
Validate if User Enters Incorrect Phone Number on Signup page
    SignupPage.Check For Incorrect Number
User Enters Correct Phone Number
    SignupPage.Check For Correct Number 
Validate if User Enters Incorrect Email Address on Signup page
    SignupPage.Check For Incorrect Email
User Enters Correct Email Address
    SignupPage.Check For Correct Email 
Validate if User Enters Incorrect Password on Signup page
    SignupPage.Check For Incorrect Password
User Enters Correct Password
    SignupPage.Check For Correct Password 
Sign In With Credentials
    SigninPage.Verify sign in
    SigninPage.Sign In
Verify Checkout Page Appears
    CheckoutPage.Verify Checkout Page Displayed
Verify Wishlist page appears
    Productpage.Verify Wishlist Form
