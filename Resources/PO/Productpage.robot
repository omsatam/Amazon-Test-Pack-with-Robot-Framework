*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${wishlistText} =  Use lists to save items for later. All lists are private unless you share them with others.
${wishlistForm} =  xpath=//*[@id="wl-redesigned-create-list"]/span/span/input
${ckeckoutButton} =  id=attach-sidesheet-checkout-button
${buynowButton} =  id=buy-now-button
${wishlistButton} =  id=wl-redesigned-create-list
${addToWishlistButton} =  id=wishListMainButton
${addToCartButton} =  id=add-to-cart-button
${addToCartText} =  Added to Cart
${defaultImage} =  id=imgTagWrapperId
${productImage} =  id=ivStage
${productHeading} =  id=titleSection
${offersSelector} =  id=vsxoffers_feature_div
${featuresSelector} =  id=feature-bullets
${specificationsSelector} =  id=technicalSpecifications_feature_div
${aboutSelector} =  id=aplus_feature_div
${questionsSelector} =  id=ask-btf_feature_div
${reviewsSelector} =  id=reviewsMedley
${image}
*** Keywords ***
Verify Required product opened
    Switch Window  locator=NEW
    Wait Until Page Contains  Back to results
Add to cart
    Click Button  ${addToCartButton}
    Sleep  5
    Set Selenium Implicit Wait  10 seconds
    Wait Until Page Contains  ${addToCartText}
    #Wait Until Page Contains Element  css=#sc-buy-box-ptc-button > span > input
Buy now
    Click Element  ${buynowButton}
Add to wishlist
    ${productHeadingText} =  Get Text  ${productHeading}
    Set Global Variable  ${productHeadingText}
    Click Element  ${addToWishlistButton}
Checkout product
    Sleep  2
    Wait Until Element Is Visible  ${ckeckoutButton}
    Click Element  ${ckeckoutButton}
    
Verify Wishlist Form
    Sleep  2
    Wait Until Page Contains  ${wishlistText}
    Element Should Be Visible  ${wishlistForm}
Verify Images
    Wait Until Page Contains Element  ${defaultImage}
    Element Should Be Visible  ${defaultImage}
Select Product Images
    Wait Until Page Contains Element  ${defaultImage}
    @{availableImages} =  Get WebElements  css=#altImages > ul > li.imageThumbnail
    FOR  ${image}  IN  @{availableImages}
        Click Element  ${image}
        Sleep  1
    END
Open Image and Verify
    Wait Until Page Contains Element  ${defaultImage}
    Click Element  ${defaultImage}
    Sleep  2
    Element Should Be Visible  ${productImage}
    @{availableImages} =  Get WebElements  css=div.ivRow>div
    FOR  ${image}  IN  @{availableImages}
        Click Element  ${image}
        Sleep  1
    END
Verify Product
    Element Should Contain  id=titleSection  ${productName}  
Verify Product Page
    Wait Until Page Contains Element  ${defaultImage}
    Page Should Contain Element  ${productHeading}
    Page Should Contain Element  ${offersSelector}
    Page Should Contain Element  ${aboutSelector}
    #Page Should Contain Element  ${specificationsSelector}
    Page Should Contain Element  ${questionsSelector}
    Page Should Contain Element  ${featuresSelector}
    Page Should Contain Element  ${reviewsSelector}
    Page Should Contain Element  ${addToCartButton}
    Page Should Contain Element  ${buynowButton}
Add selected item to wishlist
    Click Element  ${wishlistButton}
    Sleep  2
    Element Should Be Visible  id=wl-huc-post-create-msg
    Click Element  css=#wl-huc-post-create-msg > div.a-button-stack.a-spacing-top-small > span.a-declarative
    Sleep  5
Delete Wishlist
    Click Element  id=overflow-menu-popover-trigger
    Sleep  1
    Click Element  id=editYourList
    Sleep  4
    Click Element  xpath=//*[@id="list-settings-container"]/span/span/span
    Sleep  2
    Click Element  id=list-delete-confirm
Verify Product in wishlist
    Element Should Contain  css=h2.a-size-base  ${productHeadingText}  