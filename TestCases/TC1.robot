*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  firefox
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    Open Browser    ${url}  ${browser}
    loginToApplication
    close browser

*** Keywords ***
loginToApplication
    click link  xpath://a[@class='ico-login']
    input text  id:Email     jaypal_123@rediffmail.com
    input text  id:Password     Lapyaj@123
    click element   xpath://button[@class='button-1 login-button']




