*** Settings ***
Library    DemoLibraryClass.py

*** Test Cases ***
Use a Keyword with multiple arguments
    ${result} =     My Keyword    Argument 1    Argument 2    Named Argument=One Value
    Log     ${Result}