*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${SignInLink} =  id=nav-link-accountList
${emailInputSelector} =  id=ap_email
${wrongEmailInput} =  apple8788889
${wrongNumberInput} =  12345
${wrongPasswordInput} =  12345
${correctEmailInput} =  apple@gmail.com
${correctNumberInput} =  1234567890
${continueButon} =  id=continue
${authorizationError} =  id=auth-error-message-box
${passwordInputSelector} =  id=ap_password
${submitButon} =  id=signInSubmit
${noEmailAlert} =  id=auth-email-missing-alert
${incorrectOTPAlert} =  css=#verification-code-form > div.a-row.a-spacing-micro > div > div > div > div
${noPasswordAlert} =  id=auth-password-missing-alert
${getOTPButon} =  id=auth-login-via-otp-btn
${incorrectOTPInput} =  1235
${OTPSelector} =  id=cvf-input-code
${submitOTPButton} =  id=cvf-submit-otp-button
${userNumber} =  <amazon-phone-number>
${userPassword} = <amazon-password>
*** Keywords ***

Verify sign in
    Wait Until Page Contains  Sign in
    Page Should Contain Element  id=createAccountSubmit
Go to Signin
    Click Element  ${SignInLink}
    Wait Until Page Contains  Sign in
Sign In
    Input Text  ${emailInputSelector}  ${userNumber}
    Click Button  ${continueButon}
    Wait Until Element Is Visible  ${passwordInputSelector}
    Input Password  ${passwordInputSelector}  ${userPassword}
    Click Button  ${submitButon}
    #Sleep  30
    Wait Until Page Contains Element  id=nav-hamburger-menu
    Page Should Contain Element  id=nav-hamburger-menu
Enter Wrong Email
    Input Text  ${emailInputSelector}  ${wrongEmailInput}
    Click Button  ${continueButon}
Verify Wrong Email Error
    Page Should Contain Element  ${authorizationError}
Enter Wrong Number
    Input Text  ${emailInputSelector}  ${wrongNumberInput}
    Click Button  ${continueButon}
Verify Wrong Number Error
    Page Should Contain Element  ${authorizationError}
Enter Correct Email
    Input Text  ${emailInputSelector}  ${correctEmailInput}
    Click Button  ${continueButon}
Enter Correct Number
    Input Text  ${emailInputSelector}  ${correctNumberInput}
    Click Button  ${continueButon}
Verify Passowords Page
    Page Should Contain Element  ${passwordInputSelector}
Enter wrong Password
    Input Password  ${passwordInputSelector}  ${wrongPasswordInput}
    Click Button  ${submitButon}
Verify Wrong Password Error
    Wait Until Page Contains  Your password is incorrect
    Page Should Contain Element  ${authorizationError}
Submit Without email and Check Error
    Click Button  ${continueButon}
    Wait Until Page Contains  Enter your email or mobile phone number
    Page Should Contain Element  ${noEmailAlert}
Submit Without password and Check Error
    Click Button  ${submitButon}
    Wait Until Page Contains  Enter your password
    Page Should Contain Element  ${noPasswordAlert}
Enter wrong OTP and Check Error
    Click Element  ${getOTPButon}
    Input Text  ${OTPSelector}  ${incorrectOTPInput}
    Click Element  ${submitOTPButton}
    Wait Until Page Contains  Invalid OTP. Please check your code and try again.
    Page Should Contain Element  ${incorrectOTPAlert}
