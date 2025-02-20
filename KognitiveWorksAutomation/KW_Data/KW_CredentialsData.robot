*** Settings ***
Library    SeleniumLibrary
#Library    DataDriver     C:/Users/BVeeraragavan/Desktop/KW_Datas.xlsx    sheet_name=Sheet1

*** Keywords ***
LoginData
    [Arguments]    ${name}    ${pass}    ${environment}
    Set Global Variable    ${name}
    Set Global Variable    ${pass}
    Set Global Variable    ${environment}


