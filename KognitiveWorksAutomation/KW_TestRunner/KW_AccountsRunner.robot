*** Settings ***
Library    SeleniumLibrary
Library    DataDriver     C:/Users/BVeeraragavan/Desktop/KW_Datas.xlsx    sheet_name=Sheet3
Resource    ../KW_Resource/KW_CommonResource.robot
Resource    ../KW_Resource/KW_AccountsResource.robot
Resource    ../KW_Resource/KW_WorkbenchResources.robot
Test Template    KWATC_A01

*** Test Cases ***
 KW_AA01
    KWATC_A01    ${name}    ${pass}    ${environment}   ${GroupName}    ${Role}    ${RoleUpdate}    ${Workspace}    ${GroupnameDelete}    ${GroupnameBack}    ${GroupNameUpdate}    ${WorkspaceUpdate2}

*** Keywords ***
KWATC_A01
    [Arguments]    ${name}    ${pass}    ${environment}   ${GroupName}    ${Role}    ${RoleUpdate}    ${Workspace}    ${GroupnameDelete}    ${GroupnameBack}    ${GroupNameUpdate}       ${WorkspaceUpdate2}    ${WorkspaceUpdate1}
    Set Global Variable    ${name}
    Set Global Variable    ${pass}
    Set Global Variable    ${environment}
    Set Global Variable    ${GroupName}
    Set Global Variable    ${Role}
    Set Global Variable    ${RoleUpdate}
    Set Global Variable    ${Workspace}
    Set Global Variable    ${GroupnameDelete}
    Set Global Variable    ${GroupnameBack}
    Set Global Variable    ${GroupNameUpdate}
    Set Global Variable    ${WorkspaceUpdate2}
    KW_LaunchApplication
    KW_Login
    KW_AccountsMenuSelection
    KW_CreateNewGroupSytemAdmin
    KW_AccountsMenuSelection
    KW_CreateNewGroupNeg
    KW_AccountsMenuSelection
    KW_DeleteGroupSystemAdmin
    KW_BackbuttonOnCreateGroupSystemAdmin
    KW_UpdateGroup



