*** Settings ***
Library    SeleniumLibrary
#Library    DataDriver     C:/Users/BVeeraragavan/Desktop/KW_Datas.xlsx    sheet_name=Sheet3

*** Keywords ***
AccountData
    [Arguments]    ${GroupName}    ${Role}    ${Workspace}    ${GroupNameUpdate}    ${RoleUpdate}    ${WorkspaceUpdate1}     ${WorkspaceUpdate2}    ${GroupnameDelete}    ${GroupnameBack}    ${GroupNameUpdate}    ${WorkspaceUpdate2}
    Set Global Variable    ${GroupName}
    Set Global Variable    ${Role}
    Set Global Variable    ${Workspace}
    Set Global Variable    ${GroupNameUpdate}
    Set Global Variable    ${RoleUpdate}
    Set Global Variable    ${WorkspaceUpdate1}
    Set Global Variable    ${WorkspaceUpdate2}
    Set Global Variable    ${GroupnameDelete}
    Set Global Variable    ${GroupnameBack}

