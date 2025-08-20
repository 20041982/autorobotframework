*** Settings ***
Library  SeleniumLibrary
Test Template   OddEven

*** Test Cases ***
[Template]  OddEven
One             ${5}

Two             ${11}
                ${12}

Three           ${3}

*** Keywords ***
OddEven
    [Arguments]     ${n}
    Log     ${n}



