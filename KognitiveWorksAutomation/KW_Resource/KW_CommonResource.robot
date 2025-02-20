*** Settings ***
Library    SeleniumLibrary
#Library    DataDriver     C:/Users/BVeeraragavan/Desktop/KW_Datas.xlsx    sheet_name=Sheet1
Resource    ../KW_Data/KW_CredentialsData.robot



*** Keywords ***
KW_LaunchApplication
    Open Browser    https://${environment}.kognitiveworks.com/    chrome    options=add_argument("--incognito")
    Maximize Browser Window
KW_Login
    Wait Until Element Is Visible    //input[@id='username']    30s
    Input Text    //input[@id='username']    ${name}
    Sleep    5
    Input Text    //input[@formcontrolname='password']     ${pass}
    Log To Console    password given
    Sleep    5
    Click Element    //div[text()= 'Login']
    Wait Until Element Is Visible    //p[contains(text(),"Login successfull !!")]    30s
    Wait Until Element Is Not Visible    //p[contains(text(),"Login successfull !!")]    30s
KW_Logout
    Wait Until Element Is Visible    //div[@id="profile-pic"]    30s
    Click Element    //div[@id="profile-pic"]
    Click Element    //button[contains(text(),"Logout")]
    Wait Until Element Is Visible    //h2[contains(text(),"Login")]    30s
KW_Refresh
    Click Element    //button[@id="refresh-button"]

