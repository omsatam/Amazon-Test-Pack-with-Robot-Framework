*** Settings ***
Library  SeleniumLibrary
Library  Collections
Library  String
Resource  ./Search.robot
*** Variables ***
${searchResults} =  results for 
${sellPageSelector} =  xpath=//*[@id="a-page"]/div[2]/div/div/div/div/div/div[1]/div/div/div/div/div
${bestSellersPageSelector} =  id=zg_col1
${todaysDealsPageSelector} =  id=slot-2
${mobilesPageSelector} =  xpath=//*[@id="s-refinements"]/div[1]/ul/li[2]/span/span
${customerServicePageSelector} =  css=#a-page > div:nth-child(30) > div.a-section.a-spacing-extra-large.a-spacing-top-extra-large.ss-landing-container > h1
${electronicsPageSelector} =  css=div.bxc-grid__text > h1
${homeKitchenPageSelector} =  css=#a-page > div.a-container > div:nth-child(1) > div > div > div > div > h1
${fashionPageSelector} =  id=sobe_d_b_1
${productName} 
@{priceList} 
@{priceListInt} =  []
${blank}  
*** Keywords ***

Verify Search Results
    Wait Until Page Contains  ${searchResults}
Verify Sell Page
    Wait Until Element Is Visible  ${sellPageSelector} 
    Page Should Contain Element  ${sellPageSelector} 
Verify "Best Sellers" Page
    Wait Until Element Is Visible  ${bestSellersPageSelector} 
    Page Should Contain Element  ${bestSellersPageSelector}
Verify "Today's Deals" Page
    Wait Until Element Is Visible  ${todaysDealsPageSelector} 
    Page Should Contain Element  ${todaysDealsPageSelector}
Verify "Mobiles" Page
    Wait Until Element Is Visible  ${mobilesPageSelector} 
    Page Should Contain Element  ${mobilesPageSelector}
Verify "Customer Service" Page
    Wait Until Element Is Visible  ${customerServicePageSelector} 
    Page Should Contain Element  ${customerServicePageSelector}
Verify "Electronics" Page
    Wait Until Element Is Visible  ${electronicsPageSelector} 
    Page Should Contain Element  ${electronicsPageSelector}
Verify "Home & Kitchen" Page
    Wait Until Element Is Visible  ${homeKitchenPageSelector} 
    Page Should Contain Element  ${homeKitchenPageSelector}
Verify "Fashion" Page
    Wait Until Element Is Visible  ${fashionPageSelector}
    Page Should Contain Element  ${fashionPageSelector}
Select required product
    ${productName} =  Get Text  xpath=//*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[4]/div/div/div/div/div/div/div/div[2]/div/div/div[1]/h2/a/span
    Set Global Variable  ${productName}
    Click Element  xpath=//*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[4]/div/div/div/div/div/div/div/div[2]/div/div/div[1]/h2/a/span
Verify Mini TV opened
    Wait Until Page Contains  Trending Top 10 on miniTV
    Sleep  2
    Page Should Contain Element  xpath=//*[@id="__next"]/div/div/nav/div[1]/img
Verify Amazon Fresh Page opened
    Sleep  2
    Page Should Contain Element  xpath=//*[@id="nav-subnav"]/a[1]/span/img
Verify "Your Account" Page Opened
    Sleep  2
    Page Should Contain Element  xpath=//*[@id="a-page"]/div[2]/div/div[1]/h1
Verify "Your Wish List" Page Opened
    Wait Until Page Contains  Your Lists
    Page Should Contain Element  id=wishlist-page
Verify "Your Recommendations" Page Opened
    Sleep  2
    Wait Until Page Contains  Top picks for you
    Page Should Contain Element  id=gridItemRoot
Verify "Your Prime Video" Page Opened
    Wait Until Page Contains  Welcome to Prime Video
    Page Should Contain Element  id=pv-nav-logo
Check "Your Amazon Business Account" Page Opened
    Sleep  2
    Page Should Contain Element  css=div.bxw-content-grid > div.bxc-grid__container
Verify "Returns & Orders" Page is Displayed
    Wait Until Page Contains  Your Orders
    Page Should Contain Element  css=#a-page > section > div
Verify "Your Prime Membership" Page Opened
    Wait Until Page Contains  Prime members enjoy:
    Page Should Contain Element  //*[@id="a-page"]/div[2]/div[2]/div[2]
Verify "Your Subscribe & Save Items" Page Opened
    Wait Until Page Contains  Creating a subscription is simple:
    Page Should Contain Link  Shop the Subscribe & Save store
Verify "Memberships & Subscriptions" Page Opened
    Wait Until Page Contains  Your Memberships & Subscriptions
    Page Should Contain Element  id=swa-sub-nav
    Page Should Contain Element  id=swa-subsmgr-container
Verify "Manage Your Content and Devices" Page Opened
    Wait Until Page Contains  Digital Content
    Page Should Contain Element  xpath=//*[@id="root"]/div/div/div[1]/div[1]/h1
Verify "Switch Accounts" Page Opened
    Wait Until Page Contains  Switch accounts
    Page Should Contain Element  id=ap-account-switcher-container
Verify Default Sort by Feature
    Element Text Should Be  css=#a-autoid-0-announce > span.a-dropdown-prompt  Featured
Change Filter to "Price Low To High"
    Click Element  css=#a-autoid-0-announce > span.a-dropdown-prompt
    Sleep  1
    Click Element  id=s-result-sort-select_1
    Wait Until Element Contains  css=#a-autoid-0-announce > span.a-dropdown-prompt  Price: Low to High
Change Filter to "Price High To Low"
    Click Element  css=#a-autoid-0-announce > span.a-dropdown-prompt
    Sleep  1
    Click Element  id=s-result-sort-select_2
    Wait Until Element Contains  css=#a-autoid-0-announce > span.a-dropdown-prompt  Price: High to Low
Change Filter to "Avg. Customer Review" and Verify
    Click Element  css=#a-autoid-0-announce > span.a-dropdown-prompt
    Sleep  1
    Click Element  id=s-result-sort-select_3
    Wait Until Element Contains  css=#a-autoid-0-announce > span.a-dropdown-prompt  Avg. Customer Review
Change Filter To "Newest Arrivals" and Verify
    Click Element  css=#a-autoid-0-announce > span.a-dropdown-prompt
    Sleep  1
    Click Element  id=s-result-sort-select_4
    Wait Until Element Contains  css=#a-autoid-0-announce > span.a-dropdown-prompt  Newest Arrivals
Verify Products coming in Low to High price
    Sleep  5
    @{priceList} =  Get WebElements  css=div.sg-row>div>div.sg-col-inner>div>div>div>div>div.s-price-instructions-style >div>a>span>span>span.a-price-whole
    @{priceListInt}  Create List  
    FOR  ${price}  IN  @{priceList}
        ${price} =  Get Text  ${price}
        ${price} =  Replace String  ${price}  ,  ${blank}  
        ${price} =  Convert To Integer  ${price}
        Append To List  ${priceListInt}  ${price}
    END
    ${priceListIntCopy} =  Copy List  ${priceListInt}
    Sort List  ${priceListInt} 
    Should Be Equal  ${priceListIntCopy}  ${priceListInt} 
   # Log  @{priceListInt}
   
Verify Products coming in High to Low price
    Sleep  5
    @{priceList} =  Get WebElements  css=div.sg-row>div>div.sg-col-inner>div>div>div>div>div.s-price-instructions-style >div>a>span>span>span.a-price-whole
    @{priceListInt}  Create List  
    FOR  ${price}  IN  @{priceList}
        ${price} =  Get Text  ${price}
        ${price} =  Replace String  ${price}  ,  ${blank}  
        ${price} =  Convert To Integer  ${price}
        Append To List  ${priceListInt}  ${price}
    END
    ${priceListIntCopy} =  Copy List  ${priceListInt}
    Reverse List  ${priceListIntCopy}
    Sort List  ${priceListInt} 
    Should Be Equal  ${priceListIntCopy}  ${priceListInt} 
   # Log  @{priceListInt}

Select "4 stars and above"
    Click Element  css=div#reviewsRefinements>ul>li:nth-child(1)>span>a>section
    Wait Until Page Contains  RESULTS
Select "3 stars and above"
    Click Element  css=div#reviewsRefinements>ul>li:nth-child(2)>span>a>section
    Wait Until Page Contains  RESULTS
Select "2 stars and above"
    Click Element  css=div#reviewsRefinements>ul>li:nth-child(3)>span>a>section
    Wait Until Page Contains  RESULTS
Select "1 star and above"
    Click Element  css=div#reviewsRefinements>ul>li:nth-child(4)>span>a>section
    Wait Until Page Contains  RESULTS
Verify All Items displayed have rating more than 4 stars
    @{ratings} =  Get WebElements  css=div.a-spacing-top-micro>div.a-size-small>span:nth-child(1)
    FOR  ${rating}  IN  @{ratings}
        ${rating} =  Get Element Attribute  ${rating}  aria-label
        IF  '${rating}' != 'None'
            ${rating} =  Fetch From Left  ${rating}  .
            #${rating} =  Convert To Integer  ${rating}
            Should Contain Any  ${rating}  4  5
        END
    END
Verify All Items displayed have rating more than 3 stars
    @{ratings} =  Get WebElements  css=div.a-spacing-top-micro>div.a-size-small>span:nth-child(1)
    FOR  ${rating}  IN  @{ratings}
        ${rating} =  Get Element Attribute  ${rating}  aria-label
        IF  '${rating}' != 'None'
            ${rating} =  Fetch From Left  ${rating}  .
            #${rating} =  Convert To Integer  ${rating}
            Should Contain Any  ${rating}  3  4  5
        END
    END
Verify All Items displayed have rating more than 2 stars
    @{ratings} =  Get WebElements  css=div.a-spacing-top-micro>div.a-size-small>span:nth-child(1)
    FOR  ${rating}  IN  @{ratings}
        ${rating} =  Get Element Attribute  ${rating}  aria-label
        IF  '${rating}' != 'None'
            ${rating} =  Fetch From Left  ${rating}  .
            #${rating} =  Convert To Integer  ${rating}
            Should Contain Any  ${rating}  2  3  4  5
        END
    END
Verify All Items displayed have rating more than 1 star
    @{ratings} =  Get WebElements  css=div.a-spacing-top-micro>div.a-size-small>span:nth-child(1)
    FOR  ${rating}  IN  @{ratings}
        ${rating} =  Get Element Attribute  ${rating}  aria-label
        IF  '${rating}' != 'None'
            ${rating} =  Fetch From Left  ${rating}  .
            #${rating} =  Convert To Integer  ${rating}
            Should Contain Any  ${rating}  1  2  3  4  5
        END
    END
Select Minimum range available and Verify Results
    ${priceMax} =  Get Text  css=div#priceRefinements>ul>li:nth-child(1)>span>a>span
    ${priceMax} =  Fetch From Right  ${priceMax}  ₹
    ${priceMax} =  Replace String  ${priceMax}  ,  ${blank} 
    ${priceMax} =  Convert To Integer  ${priceMax}
    Log  ${priceMax}
    Click Element  css=div#priceRefinements>ul>li:nth-child(1)>span>a>span
    Wait Until Page Contains  RESULTS
    @{prices} =  Get WebElements  css=div.sg-row>div>div.sg-col-inner>div>div>div>div>div.s-price-instructions-style>div>a>span.a-price:nth-child(1)
    FOR  ${price}  IN  @{prices}
        ${price} =  Get Text  ${price} 
        ${price} =  Fetch From Right  ${price}  ₹
        ${price} =  Replace String  ${price}  ,  ${blank} 
        ${price} =  Convert To Integer  ${price}
        IF  ${price} <= ${priceMax}
            Log  ${price}
        ELSE
            Fail  Product Price ${price} is greater than maximum price ${priceMax}
        END
    END
    
Select Maximum range available and Verify Results
    ${priceMax} =  Get Text  css=div#priceRefinements>ul>li:nth-child(5)>span>a>span
    ${priceMax} =  Fetch From Right  ${priceMax}  ₹
    ${priceMax} =  Replace String  ${priceMax}  ,  ${blank} 
    ${priceMax} =  Convert To Integer  ${priceMax}
    Log  ${priceMax}
    Click Element  css=div#priceRefinements>ul>li:nth-child(5)>span>a>span
    Wait Until Page Contains  RESULTS
    @{prices} =  Get WebElements  css=div.sg-row>div>div.sg-col-inner>div>div>div>div>div.s-price-instructions-style>div>a>span.a-price:nth-child(1)
    FOR  ${price}  IN  @{prices}
        ${price} =  Get Text  ${price} 
        ${price} =  Fetch From Right  ${price}  ₹
        ${price} =  Replace String  ${price}  ,  ${blank} 
        ${price} =  Convert To Integer  ${price}
        IF  ${price} >= ${priceMax}
            Log  ${price}
        ELSE
            Fail  Product Price ${price} is less than minimum price ${priceMax}
        END
    END
    
Select First range and Verify Results
    ${priceMin} =  Get Text  css=div#priceRefinements>ul>li:nth-child(2)>span>a>span
    ${priceMin} =  Fetch From Left  ${priceMin}  -
    ${priceMin} =  Fetch From Right  ${priceMin}  ₹
    ${priceMin} =  Replace String  ${priceMin}  ,  ${blank} 
    ${priceMin} =  Convert To Integer  ${priceMin}
    ${priceMax} =  Get Text  css=div#priceRefinements>ul>li:nth-child(2)>span>a>span
    ${priceMax} =  Fetch From Right  ${priceMax}  -
    ${priceMax} =  Fetch From Right  ${priceMax}  ₹
    ${priceMax} =  Replace String  ${priceMax}  ,  ${blank} 
    ${priceMax} =  Convert To Integer  ${priceMax}
    Log  ${priceMax}
    Click Element  css=div#priceRefinements>ul>li:nth-child(2)>span>a>span
    Wait Until Page Contains  RESULTS
    @{prices} =  Get WebElements  css=div.sg-row>div>div.sg-col-inner>div>div>div>div>div.s-price-instructions-style>div>a>span.a-price:nth-child(1)
    FOR  ${price}  IN  @{prices}
        ${price} =  Get Text  ${price} 
        ${price} =  Fetch From Right  ${price}  ₹
        ${price} =  Replace String  ${price}  ,  ${blank} 
        ${price} =  Convert To Integer  ${price}
        IF  ${price} <= ${priceMax} and ${price} >= ${priceMin}
            Log  ${price}
        ELSE
            Fail  Product Price ${price} is not in the range of ${priceMin} to ${priceMax}
        END
    END
Select Second range and Verify Results
    ${priceMin} =  Get Text  css=div#priceRefinements>ul>li:nth-child(3)>span>a>span
    ${priceMin} =  Fetch From Left  ${priceMin}  -
    ${priceMin} =  Fetch From Right  ${priceMin}  ₹
    ${priceMin} =  Replace String  ${priceMin}  ,  ${blank} 
    ${priceMin} =  Convert To Integer  ${priceMin}
    ${priceMax} =  Get Text  css=div#priceRefinements>ul>li:nth-child(3)>span>a>span
    ${priceMax} =  Fetch From Right  ${priceMax}  -
    ${priceMax} =  Fetch From Right  ${priceMax}  ₹
    ${priceMax} =  Replace String  ${priceMax}  ,  ${blank} 
    ${priceMax} =  Convert To Integer  ${priceMax}
    Log  ${priceMax}
    Click Element  css=div#priceRefinements>ul>li:nth-child(2)>span>a>span
    Wait Until Page Contains  RESULTS
    @{prices} =  Get WebElements  css=div.sg-row>div>div.sg-col-inner>div>div>div>div>div.s-price-instructions-style>div>a>span.a-price:nth-child(1)
    FOR  ${price}  IN  @{prices}
        ${price} =  Get Text  ${price} 
        ${price} =  Fetch From Right  ${price}  ₹
        ${price} =  Replace String  ${price}  ,  ${blank} 
        ${price} =  Convert To Integer  ${price}
        IF  ${price} <= ${priceMax} and ${price} >= ${priceMin}
            Log  ${price}
        ELSE
            Fail  Product Price ${price} is not in the range of ${priceMin} to ${priceMax}
        END
    END
Select Third range and Verify Results
    ${priceMin} =  Get Text  css=div#priceRefinements>ul>li:nth-child(4)>span>a>span
    ${priceMin} =  Fetch From Left  ${priceMin}  -
    ${priceMin} =  Fetch From Right  ${priceMin}  ₹
    ${priceMin} =  Replace String  ${priceMin}  ,  ${blank} 
    ${priceMin} =  Convert To Integer  ${priceMin}

    ${priceMax} =  Get Text  css=div#priceRefinements>ul>li:nth-child(4)>span>a>span
    ${priceMax} =  Fetch From Right  ${priceMax}  -
    ${priceMax} =  Fetch From Right  ${priceMax}  ₹
    ${priceMax} =  Replace String  ${priceMax}  ,  ${blank} 
    ${priceMax} =  Convert To Integer  ${priceMax}
    Log  ${priceMax}
    Click Element  css=div#priceRefinements>ul>li:nth-child(4)>span>a>span
    Wait Until Page Contains  RESULTS
    @{prices} =  Get WebElements  css=div.sg-row>div>div.sg-col-inner>div>div>div>div>div.s-price-instructions-style>div>a>span.a-price:nth-child(1)
    FOR  ${price}  IN  @{prices}
        ${price} =  Get Text  ${price} 
        ${price} =  Fetch From Right  ${price}  ₹
        ${price} =  Replace String  ${price}  ,  ${blank} 
        ${price} =  Convert To Integer  ${price}
        IF  ${price} <= ${priceMax} and ${price} >= ${priceMin}
            Log  ${price}
        ELSE
            Fail  Product Price ${price} is not in the range of ${priceMin} to ${priceMax}
        END
    END
Select First Discount Category and Verify Results
    ${discountRate} =  Get Text  xpath=//div[@id="filters"]/ul[@aria-labelledby="p_n_pct-off-with-tax-title"]/li[position()=1]/span/a/span
    ${discountRate} =  Fetch From Left  ${discountRate}  %
    ${discountRate} =  Convert To Integer  ${discountRate}
    Log  ${discountRate}
    Click Element  xpath=//div[@id="filters"]/ul[@aria-labelledby="p_n_pct-off-with-tax-title"]/li[position()=1]/span/a/span
    Wait Until Page Contains  RESULTS
    @{discountList} =  Get WebElements  css=div.sg-row>div>div.sg-col-inner>div>div>div>div>div.s-price-instructions-style>div>span:nth-child(3)
    FOR  ${discount}  IN  @{discountList}
        ${discount} =  Get Text  ${discount} 
        ${discount} =  Fetch From Left  ${discount}  %
        ${discount} =  Replace String  ${discount}  (  ${blank} 
        ${discount} =  Convert To Integer  ${discount}
        IF  ${discount} >= ${discountRate} 
            Log  ${discount}
        ELSE
            Fail  Product Discount ${discount} is less than Minimum Discount ${discountRate}
        END
    END
Select Second Discount Category and Verify Results
    ${discountRate} =  Get Text  xpath=//div[@id="filters"]/ul[@aria-labelledby="p_n_pct-off-with-tax-title"]/li[position()=2]/span/a/span
    ${discountRate} =  Fetch From Left  ${discountRate}  %
    ${discountRate} =  Convert To Integer  ${discountRate}
    Log  ${discountRate}
    Click Element  xpath=//div[@id="filters"]/ul[@aria-labelledby="p_n_pct-off-with-tax-title"]/li[position()=2]/span/a/span
    Wait Until Page Contains  RESULTS
    @{discountList} =  Get WebElements  css=div.sg-row>div>div.sg-col-inner>div>div>div>div>div.s-price-instructions-style>div>span:nth-child(3)
    FOR  ${discount}  IN  @{discountList}
        ${discount} =  Get Text  ${discount} 
        ${discount} =  Fetch From Left  ${discount}  %
        ${discount} =  Replace String  ${discount}  (  ${blank} 
        ${discount} =  Convert To Integer  ${discount}
        IF  ${discount} >= ${discountRate} 
            Log  ${discount}
        ELSE
            Fail  Product Discount ${discount} is less than Minimum Discount ${discountRate}
        END
    END
Select Third Discount Category and Verify Results
    ${discountRate} =  Get Text  xpath=//div[@id="filters"]/ul[@aria-labelledby="p_n_pct-off-with-tax-title"]/li[position()=3]/span/a/span
    ${discountRate} =  Fetch From Left  ${discountRate}  %
    ${discountRate} =  Convert To Integer  ${discountRate}
    Log  ${discountRate}
    Click Element  xpath=//div[@id="filters"]/ul[@aria-labelledby="p_n_pct-off-with-tax-title"]/li[position()=3]/span/a/span
    Wait Until Page Contains  RESULTS
    @{discountList} =  Get WebElements  css=div.sg-row>div>div.sg-col-inner>div>div>div>div>div.s-price-instructions-style>div>span:nth-child(3)
    FOR  ${discount}  IN  @{discountList}
        ${discount} =  Get Text  ${discount} 
        ${discount} =  Fetch From Left  ${discount}  %
        ${discount} =  Replace String  ${discount}  (  ${blank} 
        ${discount} =  Convert To Integer  ${discount}
        IF  ${discount} >= ${discountRate} 
            Log  ${discount}
        ELSE
            Fail  Product Discount ${discount} is less than Minimum Discount ${discountRate}
        END
    END
Select Fourth Discount Category and Verify Results
    ${discountRate} =  Get Text  xpath=//div[@id="filters"]/ul[@aria-labelledby="p_n_pct-off-with-tax-title"]/li[position()=4]/span/a/span
    ${discountRate} =  Fetch From Left  ${discountRate}  %
    ${discountRate} =  Convert To Integer  ${discountRate}
    Log  ${discountRate}
    Click Element  xpath=//div[@id="filters"]/ul[@aria-labelledby="p_n_pct-off-with-tax-title"]/li[position()=4]/span/a/span
    Wait Until Page Contains  RESULTS
    @{discountList} =  Get WebElements  css=div.sg-row>div>div.sg-col-inner>div>div>div>div>div.s-price-instructions-style>div>span:nth-child(3)
    FOR  ${discount}  IN  @{discountList}
        ${discount} =  Get Text  ${discount} 
        ${discount} =  Fetch From Left  ${discount}  %
        ${discount} =  Replace String  ${discount}  (  ${blank} 
        ${discount} =  Convert To Integer  ${discount}
        IF  ${discount} >= ${discountRate} 
            Log  ${discount}
        ELSE
            Fail  Product Discount ${discount} is less than Minimum Discount ${discountRate}
        END
    END
Select Fifth Discount Category and Verify Results
    ${discountRate} =  Get Text  xpath=//div[@id="filters"]/ul[@aria-labelledby="p_n_pct-off-with-tax-title"]/li[position()=5]/span/a/span
    ${discountRate} =  Fetch From Left  ${discountRate}  %
    ${discountRate} =  Convert To Integer  ${discountRate}
    Log  ${discountRate}
    Click Element  xpath=//div[@id="filters"]/ul[@aria-labelledby="p_n_pct-off-with-tax-title"]/li[position()=5]/span/a/span
    Wait Until Page Contains  RESULTS
    @{discountList} =  Get WebElements  css=div.sg-row>div>div.sg-col-inner>div>div>div>div>div.s-price-instructions-style>div>span:nth-child(3)
    FOR  ${discount}  IN  @{discountList}
        ${discount} =  Get Text  ${discount} 
        ${discount} =  Fetch From Left  ${discount}  %
        ${discount} =  Replace String  ${discount}  (  ${blank} 
        ${discount} =  Convert To Integer  ${discount}
        IF  ${discount} >= ${discountRate} 
            Log  ${discount}
        ELSE
            Fail  Product Discount ${discount} is less than Minimum Discount ${discountRate}
        END
    END
Select Sixth Discount Category and Verify Results
    ${discountRate} =  Get Text  xpath=//div[@id="filters"]/ul[@aria-labelledby="p_n_pct-off-with-tax-title"]/li[position()=6]/span/a/span
    ${discountRate} =  Fetch From Left  ${discountRate}  %
    ${discountRate} =  Convert To Integer  ${discountRate}
    Log  ${discountRate}
    Click Element  xpath=//div[@id="filters"]/ul[@aria-labelledby="p_n_pct-off-with-tax-title"]/li[position()=6]/span/a/span
    Wait Until Page Contains  RESULTS
    @{discountList} =  Get WebElements  css=div.sg-row>div>div.sg-col-inner>div>div>div>div>div.s-price-instructions-style>div>span:nth-child(3)
    FOR  ${discount}  IN  @{discountList}
        ${discount} =  Get Text  ${discount} 
        ${discount} =  Fetch From Left  ${discount}  %
        ${discount} =  Replace String  ${discount}  (  ${blank} 
        ${discount} =  Convert To Integer  ${discount}
        IF  ${discount} >= ${discountRate} 
            Log  ${discount}
        ELSE
            Fail  Product Discount ${discount} is less than Minimum Discount ${discountRate} 
        END
    END
Select First Brand and Verify Results
    ${brandName} =  Get Text  css=div#brandsRefinements>ul>li:nth-child(1)
    Log  ${brandName}
    Click Element  css=div#brandsRefinements>ul>li:nth-child(1)>span>a>div>label>i
    Wait Until Page Contains  RESULTS
    @{displayedProducts} =  Get WebElements  css=div.sg-row>div>div.sg-col-inner>div>div>h2.a-size-mini>a>span
    FOR  ${product}  IN  @{displayedProducts}
        ${product} =  Get Text  ${product} 
        Should Contain  ${product}  ${brandName}  ignore_case=True
    END
Select Second Brand and Verify Results
    ${brandName} =  Get Text  css=div#brandsRefinements>ul>li:nth-child(2)
    Log  ${brandName}
    Click Element  css=div#brandsRefinements>ul>li:nth-child(2)>span>a>div>label>i
    Wait Until Page Contains  RESULTS
    @{displayedProducts} =  Get WebElements  css=div.sg-row>div>div.sg-col-inner>div>div>h2.a-size-mini>a>span
    FOR  ${product}  IN  @{displayedProducts}
        ${product} =  Get Text  ${product} 
        Should Contain  ${product}  ${brandName}  ignore_case=True
    END
Select Third Brand and Verify Results
    ${brandName} =  Get Text  css=div#brandsRefinements>ul>li:nth-child(3)
    Log  ${brandName}
    Click Element  css=div#brandsRefinements>ul>li:nth-child(3)>span>a>div>label>i
    Wait Until Page Contains  RESULTS
    @{displayedProducts} =  Get WebElements  css=div.sg-row>div>div.sg-col-inner>div>div>h2.a-size-mini>a>span
    FOR  ${product}  IN  @{displayedProducts}
        ${product} =  Get Text  ${product} 
        Should Contain  ${product}  ${brandName}  ignore_case=True
    END
Select Fourth Brand and Verify Results
    ${brandName} =  Get Text  css=div#brandsRefinements>ul>li:nth-child(4)
    Log  ${brandName}
    Click Element  css=div#brandsRefinements>ul>li:nth-child(4)>span>a>div>label>i
    Wait Until Page Contains  RESULTS
    @{displayedProducts} =  Get WebElements  css=div.sg-row>div>div.sg-col-inner>div>div>h2.a-size-mini>a>span
    FOR  ${product}  IN  @{displayedProducts}
        ${product} =  Get Text  ${product} 
        Should Contain  ${product}  ${brandName}  ignore_case=True
    END
Select Fifth Brand and Verify Results
    ${brandName} =  Get Text  css=div#brandsRefinements>ul>li:nth-child(5)
    Log  ${brandName}
    Click Element  css=div#brandsRefinements>ul>li:nth-child(5)>span>a>div>label>i
    Wait Until Page Contains  RESULTS
    @{displayedProducts} =  Get WebElements  css=div.sg-row>div>div.sg-col-inner>div>div>h2.a-size-mini>a>span
    FOR  ${product}  IN  @{displayedProducts}
        ${product} =  Get Text  ${product} 
        Should Contain  ${product}  ${brandName}  ignore_case=True
    END
Select Sixth Brand and Verify Results
    ${brandName} =  Get Text  css=div#brandsRefinements>ul>li:nth-child(6)
    Log  ${brandName}
    Click Element  css=div#brandsRefinements>ul>li:nth-child(6)>span>a>div>label>i
    Wait Until Page Contains  RESULTS
    @{displayedProducts} =  Get WebElements  css=div.sg-row>div>div.sg-col-inner>div>div>h2.a-size-mini>a>span
    FOR  ${product}  IN  @{displayedProducts}
        ${product} =  Get Text  ${product} 
        Should Contain  ${product}  ${brandName}  ignore_case=True
    END
Select Seventh Brand and Verify Results
    ${brandName} =  Get Text  css=div#brandsRefinements>ul>li:nth-child(7)
    Log  ${brandName}
    Click Element  css=div#brandsRefinements>ul>li:nth-child(7)>span>a>div>label>i
    Wait Until Page Contains  RESULTS
    @{displayedProducts} =  Get WebElements  css=div.sg-row>div>div.sg-col-inner>div>div>h2.a-size-mini>a>span
    FOR  ${product}  IN  @{displayedProducts}
        ${product} =  Get Text  ${product} 
        Should Contain  ${product}  ${brandName}  ignore_case=True
    END