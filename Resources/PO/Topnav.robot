*** Settings ***
Library  SeleniumLibrary
Resource  ./SigninPage.robot
Resource  ./LandingPage.robot
*** Variables ***
${SignInLink} =  id=nav-link-accountList
${YourAccountLink} =  css=#nav-al-your-account > a:nth-child(2)
${YourOrdersLink} =  css=#nav-al-your-account > a:nth-child(3)
${YourWishlistLink} =  css=#nav-al-your-account > a:nth-child(4)
${YourRecommendationsLink} =  css=#nav-al-your-account > a:nth-child(5)
${YourPrimeMembershipLink} =  css=#nav-al-your-account > a:nth-child(6)
${YourPrimeVideoLink} =  css=#nav-al-your-account > a:nth-child(7)
${YourSubscribeLink} =  css=#nav-al-your-account > a:nth-child(8)
${Membershps&Subscriptions} =  css=#nav-al-your-account > a:nth-child(9)
${YourAmazonBuisnessLink} =  css=#nav-al-your-account > a:nth-child(10)
${YourSellerAccountLink} =  css=#nav-al-your-account > a:nth-child(11)
${ManageYourContentLink} =  css=#nav-al-your-account > a:nth-child(12)
${SwitchAccountsLink} =  id=nav-item-switch-account 
${cartCountSelector} =  id=nav-cart-count
${cartCount}
${cartCountInt}
*** Keywords ***
Click Menu
    Click Element  id=nav-hamburger-menu
Verify Menu
    Wait Until Page Contains Element  id=hmenu-content
    Page Should Contain Element  id=hmenu-content
Click Sell
    Click Link  Sell
    Wait Until Page Contains  Sell on Amazon
Click "Best Sellers"
    Click Link  Best Sellers
    Wait Until Page Contains  Amazon Bestsellers
Click "Today's Deals"
    Click Link  Today's Deals
    Wait Until Page Contains  Today's Deals
Click "Mobiles"
    Click Link  Mobiles
    Wait Until Page Contains  Mobiles & Accessories
Click "Customer Service"
    Click Link  Customer Service
    Wait Until Page Contains  Hello. What can we help you with?
Click "Electronics"  
    Click Link   Electronics 
    Wait Until Page Contains  Electronics & accessories
Click "Home & Kitchen"  
    Click Link  Home & Kitchen
    Wait Until Page Contains  Buy products across Home,Kitchen,Garden,Furniture,Sports and more now online at Amazon India 
Click "Fashion"  
    Click Link  Fashion
    Wait Until Page Contains  Deals on Amazon Fashion & Beauty
Verify Default Language
    Element Text Should Be  id=glow-ingress-line1  Hello
    Element Text Should Be  id=glow-ingress-line2  Select your address
Change To "Hindi" Language
    Mouse Over  css=span.nav-line-2 > span.icp-nav-flag-in
    Sleep  2
    Click Element  xpath=//*[@id="nav-flyout-icp"]/div[2]/a[1]
    Sleep  2
Verify "Hindi" Language  
    Element Text Should Be  id=glow-ingress-line1   नमस्ते
    Element Text Should Be  id=glow-ingress-line2   अपना पता चुनें
Change To "Tamil" Language
    Mouse Over  css=span.nav-line-2 > span.icp-nav-flag-in
    Sleep  2
    Click Element  xpath=//*[@id="nav-flyout-icp"]/div[2]/a[2]
    Sleep  2
Verify "Tamil" Language  
    Element Text Should Be  id=glow-ingress-line1   வணக்கம்
    Element Text Should Be  id=glow-ingress-line2   உங்கள் முகவரியைத் தேர்ந்தெடுக்கவும்
Change To "Telgu" Language
    Mouse Over  css=span.nav-line-2 > span.icp-nav-flag-in
    Sleep  2
    Click Element  xpath=//*[@id="nav-flyout-icp"]/div[2]/a[3]
    Sleep  2
Verify "Telgu" Language  
    Element Text Should Be  id=glow-ingress-line1   హలో
    Element Text Should Be  id=glow-ingress-line2   మీ అడ్రస్ ఎంచుకోండి
Change To "Kannada" Language
    Mouse Over  css=span.nav-line-2 > span.icp-nav-flag-in
    Sleep  2
    Click Element  xpath=//*[@id="nav-flyout-icp"]/div[2]/a[4]
    Sleep  2
Verify "Kannada" Language  
    Element Text Should Be  id=glow-ingress-line1   ನಮಸ್ಕಾರ
    Element Text Should Be  id=glow-ingress-line2   ನಿಮ್ಮ ವಿಳಾಸವನ್ನು ಆರಿಸಿ
Change To "Malayalam" Language
    Mouse Over  css=span.nav-line-2 > span.icp-nav-flag-in
    Sleep  2
    Click Element  xpath=//*[@id="nav-flyout-icp"]/div[2]/a[5]
    Sleep  2
Verify "Malayalam" Language  
    Element Text Should Be  id=glow-ingress-line1   ഹലോ
    Element Text Should Be  id=glow-ingress-line2   വിലാസം തിരഞ്ഞെടുക്കൂ
Change To "Bangla" Language
    Mouse Over  css=span.nav-line-2 > span.icp-nav-flag-in
    Sleep  2
    Click Element  xpath=//*[@id="nav-flyout-icp"]/div[2]/a[6]
    Sleep  2
Verify "Bangla" Language  
    Element Text Should Be  id=glow-ingress-line1   নমস্কার
    Element Text Should Be  id=glow-ingress-line2   আপনার ঠিকানা বাছুন
Change To "Marathi" Language
    Mouse Over  css=span.nav-line-2 > span.icp-nav-flag-in
    Sleep  2
    Click Element  xpath=//*[@id="nav-flyout-icp"]/div[2]/a[7]
    Sleep  2
Verify "Marathi" Language  
    Element Text Should Be  id=glow-ingress-line1   नमस्कार
    Element Text Should Be  id=glow-ingress-line2   तुमचा पत्ता निवडा
Go To Signin
    Click Element  id=nav-link-accountList-nav-line-1
Open "Your Account" 
    Mouse Over  ${SignInLink}
    Sleep  2
    Click Element  ${YourAccountLink}
Topnav.Open "Your Orders" 
    Mouse Over  ${SignInLink}
    Sleep  2
    Click Element  ${YourOrdersLink}
Open "Your Wish List" 
    Mouse Over  ${SignInLink}
    Sleep  2
    Click Element  ${YourWishlistLink}
Open "Your Recommendations" 
    Mouse Over  ${SignInLink}
    Sleep  2
    Click Element  ${YourRecommendationsLink}
Open "Your Prime Membership" 
    Mouse Over  ${SignInLink}
    Sleep  2
    Click Element  ${YourPrimeMembershipLink}
Open "Your Prime Video" 
    Mouse Over  ${SignInLink}
    Sleep  2
    Click Element  ${YourPrimeVideoLink}    
Open "Your Subscribe & Save Items" 
    Mouse Over  ${SignInLink}
    Sleep  2
    Click Element  ${YourSubscribeLink}    
Open "Memberships & Subscriptions"     
    Mouse Over  ${SignInLink}
    Sleep  2
    Click Element  ${Membershps&Subscriptions}
Open "Your Amazon Business Account"     
    Mouse Over  ${SignInLink}
    Sleep  2
    Click Element  ${YourAmazonBuisnessLink}
Open "Your Seller Account"
    Mouse Over  ${SignInLink}
    Sleep  2
    Click Element  ${YourSellerAccountLink}
Open "Manage Your Content and Devices"
    Mouse Over  ${SignInLink}
    Sleep  2
    Click Element  ${ManageYourContentLink}
Open "Switch Accounts" 
    Mouse Over  ${SignInLink}
    Sleep  2
    Click Element  ${SwitchAccountsLink}
Open "Returns & Orders"
    Click Element  id=nav-orders
Verify Username is not Displayed
    Element Text Should Be  id=nav-link-accountList-nav-line-1  Hello, sign in
Verify Username is Displayed
    Element Text Should Be  id=nav-link-accountList-nav-line-1  Hello, ${username}
Get Cart Quantity
    ${cartCount} =  Get Text  ${cartCountSelector}
    ${cartCountInt} =  Convert To Integer  ${cartCount}
    Set Global Variable  ${cartCountInt}
Verify Cart Quantity is Increased
    Element Text Should Be  ${cartCountSelector}  ${cartCountInt+1}

    