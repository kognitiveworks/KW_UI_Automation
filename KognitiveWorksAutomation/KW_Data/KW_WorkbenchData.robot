*** Settings ***
Library    SeleniumLibrary
#Library    DataDriver     C:/Users/BVeeraragavan/Desktop/KW_Datas.xlsx    sheet_name=Sheet2


*** Keywords ***
KW_WorkbenchData
    [Arguments]    ${Workspacename}    ${Documentname}    ${Description}    ${alias}    ${Schema}    ${DescriptionEdit}    ${aliasEdit}    ${SchemaEdit}    ${Workspacenameone}    ${WorkspacenameInvalid}    ${WorkspacenameLongName}    ${Workspacenametwo}    ${HandDocument}    ${EmailLink}    ${Workspacenametwo}    ${DocumentnameInvalid}    ${DescriptionInvalid}    ${AliasInvalid}    ${SchemaInvalid}    ${SchemaMaximumSize}
    Set Global Variable    ${Workspacename}
    Set Global Variable    ${Documentname}
    Set Global Variable    ${Description}
    Set Global Variable    ${alias}
    Set Global Variable    ${Schema}
    Set Global Variable    ${DescriptionEdit}
    Set Global Variable    ${aliasEdit}
    Set Global Variable    ${SchemaEdit}
    Set Global Variable    ${Workspacenameone}
    Set Global Variable    ${WorkspacenameInvalid}
    Set Global Variable    ${WorkspacenameLongName}
    Set Global Variable    ${Workspacenametwo}
    Set Global Variable    ${HandDocument}
    Set Global Variable    ${EmailLink}
    Set Global Variable    ${Workspacenametwo}
    Set Global Variable    ${DocumentnameInvalid}
    Set Global Variable    ${DescriptionInvalid}
    Set Global Variable    ${AliasInvalid}
    Set Global Variable    ${SchemaInvalid}
    Set Global Variable    ${SchemaMaximumSize}



