*** Settings ***
Library    SeleniumLibrary
Library    DataDriver     C:/Users/BVeeraragavan/Desktop/KW_Datas.xlsx    sheet_name=Sheet1
Resource    ../KW_Resource/KW_WorkbenchResources.robot
Resource    ../KW_Resource/KW_CommonResource.robot
#Suite Setup    Set Global Variable    ${BROWSERS}    chrome,firefox,edge
Test Template   KWATC_WB01


*** Test Cases ***
KW_AWB01
    KWATC_WB01   ${name}    ${pass}    ${environment}    ${Workspacenameone}    ${Workspacenametwo}    ${DescriptionEdit}    ${aliasEdit}    ${SchemaEdit}    ${Documentname}    ${WorkspacenameInvalid}    ${EmailLink}    ${HandDocument}    ${WorkspacenameLongName}    ${DocumentnameInvalid}    ${DescriptionInvalid}    ${AliasInvalid}    ${SchemaInvalid}    ${SchemaMaximumSize}

*** Keywords ***
KWATC_WB01
    [Arguments]    ${name}    ${pass}    ${environment}    ${Workspacenameone}    ${Workspacenametwo}    ${DescriptionEdit}    ${aliasEdit}    ${SchemaEdit}    ${Documentname}    ${WorkspacenameInvalid}    ${EmailLink}    ${HandDocument}    ${WorkspacenameLongName}    ${DocumentnameInvalid}    ${DescriptionInvalid}    ${AliasInvalid}    ${SchemaInvalid}    ${SchemaMaximumSize}
    Set Global Variable    ${name}
    Set Global Variable    ${pass}
    Set Global Variable    ${environment}
    Set Global Variable    ${Workspacenameone}
    Set Global Variable    ${Workspacenametwo}
    Set Global Variable    ${DescriptionEdit}
    Set Global Variable    ${aliasEdit}
    Set Global Variable    ${SchemaEdit}
    Set Global Variable    ${Documentname}
    Set Global Variable    ${WorkspacenameInvalid}
    Set Global Variable    ${EmailLink}
    Set Global Variable    ${HandDocument}
    Set Global Variable    ${WorkspacenameLongName}
    Set Global Variable    ${DocumentnameInvalid}
    Set Global Variable    ${DescriptionInvalid}
    Set Global Variable    ${AliasInvalid}
    Set Global Variable    ${SchemaInvalid}
    Set Global Variable    ${SchemaMaximumSize}
    KW_LaunchApplication
    KW_Login
    KW_ClickWorkbenchMenuSelection
    KW_createNewWorkspaceOne
    KW_Logout
    KW_Login
    KW_ClickWorkbenchMenuSelection
    KW_createNewWorkspaceWithOldName
    KW_ClickWorkbenchMenuSelection
    KW_createNewWorkspaceTwo
    KW_selectWorkspaceName
    KW_createNewDocument
    KW_deployDocument
    KW_ClickOnDocumentView
    KW_EditDocumentUpdate
    KW_DeployDocument
    KW_createNewDocumentInvalid
    KW_Logout
    Close Browser
    KW_LaunchDocumentLinkDirectly








