*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${SignInLink} =  id=nav-link-accountList
${createAccountButton} =  id=createAccountSubmit
${continueButton} =  id=continue
${blankCustomerNameAlert} =  css=#auth-customerName-missing-alert > div > div
${blankMobileNumberAlert} =  css=#auth-phoneNumber-missing-alert > div > div
${blankPasswordAlert} =  css=#auth-password-missing-alert > div > div
${invalidCustomeremailAlert} =  css=#auth-email-invalid-email-alert > div > div
${invalidMobileNumberAlert} =  css=#auth-phoneNumber-invalid-phone-alert > div > div
${invalidPasswordAlert} =  css=#auth-password-invalid-password-alert > div > div
${nameInputSelector} =  id=ap_customer_name
${emailInputSelector} =  id=ap_email
${numberInputSelector} =  id=ap_phone_number
${passwordInputSelector} =  id=ap_password
${nameInput} =  Hello123
${wrongNumberInputSignup} =  rt  
${correctNumberInput} =  879763546
${wrongEmailInputSignup} =  87878
${correctEmailInputSignup} =  testing45623@gmail.com
${wrongPasswordInput} =  436
${correctPasswordInput} =  678986
${puzzlePageSelector} =  id=a-page
${solvePuzzle} =  xpath=//*[@id="a-page"]/div/div/div/div

*** Keywords ***
Go to Signup
    Click Element  ${SignInLink}
    Wait Until Page Contains  Sign in
    Click Element  ${createAccountButton}
Check all Manadotory Fields
    Click Element  ${continueButton} 
    Element Text Should Be  ${blankCustomerNameAlert}  Enter your name
    Element Text Should Be  ${blankMobileNumberAlert}  Enter your mobile number
    Element Text Should Be  ${blankPasswordAlert}  Enter your password
Check For Name
    Input Text  ${nameInputSelector}  ${nameInput}
    Input Text  ${numberInputSelector}  ${correctNumberInput}
    Input Text  ${passwordInputSelector}  ${correctPasswordInput}
    Click Element  ${continueButton} 
Check For Incorrect Number
    Input Text  ${nameInputSelector}  ${nameInput}
    Input Text  ${numberInputSelector}  ${wrongNumberInputSignup}
    Input Text  ${passwordInputSelector}  ${correctPasswordInput}
    Click Element  ${continueButton} 
    Element Text Should Be  ${invalidMobileNumberAlert}  The mobile number you entered does not seem to be valid
Check For Correct Number
    Input Text  ${nameInputSelector}  ${nameInput}
    Input Text  ${numberInputSelector}  ${correctNumberInput}
    Input Text  ${passwordInputSelector}  ${correctPasswordInput}
    Click Element  ${continueButton} 
Check For incorrect Email
    Input Text  ${nameInputSelector}  ${nameInput}
    Input Text  ${numberInputSelector}  ${correctNumberInput}
    Input Text  ${emailInputSelector}  ${wrongEmailInputSignup}
    Input Text  ${passwordInputSelector}  ${correctPasswordInput}
    Click Element  ${continueButton} 
    Element Text Should Be  ${invalidCustomeremailAlert}  Enter a valid email address
Check For Correct Email
    Input Text  ${nameInputSelector}  ${nameInput}
    Input Text  ${numberInputSelector}  ${correctNumberInput}
    Input Text  ${emailInputSelector}  ${correctEmailInputSignup}
    Input Text  ${passwordInputSelector}  ${correctPasswordInput}
    Click Element  ${continueButton} 
Check For Incorrect Password
    Input Text  ${nameInputSelector}  ${nameInput}
    Input Text  ${numberInputSelector}  ${correctNumberInput}
    Input Text  ${passwordInputSelector}  ${wrongPasswordInput}
    Click Element  ${continueButton} 
    Element Text Should Be  ${invalidPasswordAlert}  Passwords must be at least 6 characters.
Check For Correct Password
    Input Text  ${nameInputSelector}  ${nameInput}
    Input Text  ${numberInputSelector}  ${correctNumberInput}
    Input Text  ${passwordInputSelector}  ${correctPasswordInput}
    Click Element  ${continueButton} 
Verify Next Page
    Sleep  15
    Page Should Contain Element  ${solvePuzzle}
    Page Should Contain Element  ${puzzlePageSelector}
    