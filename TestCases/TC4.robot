*** Settings ***

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

*** Keywords ***
AddNumber
    [Arguments]     ${a}    ${b}
    ${sum1} =   Evaluate     ${a}+${b}
    Log     ${sum1}
    Log     Hello123  
SubNumbers
    [Arguments]     ${a}    ${b}
    ${sub1}=    Evaluate    ${a}-${b}
    Log    ${sub1}
