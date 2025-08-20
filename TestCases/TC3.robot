*** Settings ***
Library  SeleniumLibrary
Test Template   OddEven
Test Template   AddNumbers

*** Test Cases ***
Test Case1
    [Template]  AddNumber
    ${01}   ${21}
    ${13}   ${22}
    ${14}   ${33}
Test Case2
    [Template]  SubNumbers
    ${01}   ${21}
    ${13}   ${22}
    ${14}   ${33}
Test Case3
    [Template]    The result of ${calculation} should be ${expected}
    1 + 1    ${2}
    1 + 2    ${3}
Test Case4
    [Template]    The output of ${actual} should be ${expected1}
    Hello World   Hello World
    Welcome        Welcome


*** Keywords ***
AddNumber
    [Arguments]     ${a}    ${b}
    ${sum1} =   Evaluate     ${a}+${b}
    Log     ${sum1}
SubNumbers
    [Arguments]     ${a}    ${b}
    ${sub1}=    Evaluate    ${a}-${b}
    Log    ${sub1}
The result of ${calculation} should be ${expected}
    ${result} =    Evaluate    ${calculation}
    Should Be Equal    ${result}     ${expected}
The output of ${actual} should be ${expected1}
    Should Be Equal    ${actual}     ${expected1}

