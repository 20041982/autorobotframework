*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}   https://demo.nopcommerce.com/
${browser}   firefox
${user_name}    jaypal_123@rediffmail.com
${password}     Lapyaj@123

*** Test Cases ***
TestingInputBoxHandling
    start Browser    ${url}  ${browser}
    Login To App    ${user_name}    ${password}
    stop Browser

*** Keywords ***
start Browser
    [Arguments]     ${url}  ${browser}
    open browser    ${url}  ${browser}
    maximize browser window
    title should be     nopCommerce demo store


Login To App
    [Arguments]     ${user_name}    ${password}
    click link  xpath://a[@class="ico-login"]
    ${email_text}   set variable    id:Email
    ${user_passwd}  set variable    id:Password
    element should be visible   ${email_text}
    element should be enabled   ${email_text}
    input text  ${email_text}   ${user_name}
    input text  ${user_passwd}  ${password}
    sleep   5
    click element   xpath://button[@class="button-1 login-button"]

stop Browser
    close browser


