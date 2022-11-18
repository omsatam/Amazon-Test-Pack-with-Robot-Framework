*** Settings ***
Library  SeleniumLibrary
Resource  ./SigninPage.robot
Resource  ./LandingPage.robot
*** Variables ***
${SearchProduct} =  apple watch
${autocompleteSelector} =  css=#nav-flyout-searchAjax > div.autocomplete-results-container
@{recommendationsList} 
${recommendedItem} =  xpath=//*[@id="nav-flyout-searchAjax"]/div[2]/div[4]/div/div
${defaultDropdownText} =  id=nav-search-label-id
${dropdown} =  id=nav-search-dropdown-card
@{expectedDropdownItem}
*** Keywords ***
Search For Product
    Input Text  id=twotabsearchtextbox  ${SearchTerm} 
    Click Button  id=nav-search-submit-button 
Enter Value 
    Input Text  id=twotabsearchtextbox  ${SearchProduct}
Verify Recommendations
    Sleep  2
    Wait Until Page Contains Element  ${autocompleteSelector} 
    #Get WebElements  
    @{recommendationsList}=  Get WebElements  xpath=//*[@id="nav-flyout-searchAjax"]/div[2]/div
    FOR  ${recommendation}  IN  @{recommendationsList}
        Log  "1"
        Element Should Contain  ${recommendation}  ${SearchProduct}
    END
Open Recommended Product    
    Click Element  ${recommendedItem} 
Verify Default Dropdown Selection
    Element Text Should Be  ${defaultDropdownText}  All
Verify all Dropdown Items
    @{dropdownItemList} =  Get WebElements  xpath=//*[@id="searchDropdownBox"]/option
    FOR  ${dropdownItem}  IN  @{dropdownItemList}
        Click Element  ${dropdown}
        ${dropdownItemText} =  Get Text  ${dropdownItem}
        IF  '${dropdownItemText}' != 'All Categories'
            Sleep  1
            Click Element  ${dropdownItem}
            Sleep  1
            Element Text Should Be  ${defaultDropdownText}  ${dropdownItemText}  
        END  
    END
    