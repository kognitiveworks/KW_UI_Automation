*** Settings ***
Library    SeleniumLibrary
Library    DataDriver     C:/Users/BVeeraragavan/Desktop/KW_Datas.xlsx    sheet_name=Sheet4
Resource    ../KW_Resource/KW_CommonResource.robot
Test Template    KWATC_L01


*** Test Cases ***
KW_AL01
    KWATC_L01    ${name}    ${pass}    ${environment}

*** Keywords ***
KWATC_L01
    [Arguments]    ${name}    ${pass}    ${environment}
    Set Global Variable    ${name}
    Set Global Variable    ${pass}
    Set Global Variable    ${environment}
    KW_LaunchApplication
    KW_Login