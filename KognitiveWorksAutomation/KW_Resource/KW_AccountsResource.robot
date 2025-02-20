*** Settings ***
Library    SeleniumLibrary
Resource    ../KW_Data/KW_AccountsData.robot
#Library    DataDriver    C:/Users/BVeeraragavan/Desktop/KW_Datas.xlsx    sheet_name=Sheet3

*** Variables ***
#${GroupName}=    UniqGroupName
#${Role}=    System Admin
#${Workspace}=    Testonee
#${GroupNameUpdate}=    KW2
#${RoleUpdate}=    Business User
#${WorkspaceUpdate1}=    Testonee
#${WorkspaceUpdate2}=    Testfour
#
#
##in code not in  excel
${SystemAdmin}=    System Admin
${BusinessUser}=    Business User
${BusinessAnalyst}=    Business Analyst

*** Keywords ***
KW_AccountsMenuSelection
   Wait Until Element Is Visible    //div[contains(text(),"Accounts")]    30s
   Click Element    //div[contains(text(),"Accounts")]
   Wait Until Element Is Visible    //div[contains(text(),"Create new group")]    30s

KW_CreateNewGroupSytemAdmin
    Wait Until Element Is Visible    //div[contains(text(),"Create new group")]    30s
    Click Element    //div[contains(text(),"Create new group")]
    Wait Until Element Is Visible    //input[@id="groupname"]    30s
    Input Text    //input[@id="groupname"]    ${GroupName}
    Select From List By Value    //select[@id="role"]    ${Role}
    Scroll Element Into View    //div[contains(text(),"Create")]
    Click Element    //div[contains(text(),"Create")]
    Wait Until Element Is Visible    //small[contains(text(),"Created successfully!")]    30s
    ${textsuc}=    Get Text    //small[contains(text(),"Created successfully!")]
    Log To Console    ${textsuc}

KW_CreateNewGroup

    Wait Until Element Is Visible    //div[contains(text(),"Create new group")]    30s
    Click Element    //div[contains(text(),"Create new group")]
    Wait Until Element Is Visible    //input[@id="groupname"]    30s
    Input Text    //input[@id="groupname"]    ${GroupName}
#    IF    ${Role} == ${SystemAdmin}
#        Select From List By Value    //select[@id="role"]    System Admin
#     ELSE ${Role} == ${BusinessUser}
#     ELSE ${Role} == ${BusinessAnalyst}
#          Select From List By Value    //select[@id="role"]    Business Analyst
#    END
    Wait Until Element Is Visible    //span[contains(text(),"${Workspace}")]    30S
    Select From List By Value    //select[@id="role"]    ${Role}
    Click Element    //span[contains(text(),"${Workspace}")] #workspacename
    Scroll Element Into View    //div[contains(text(),"Create")]
    Click Element    //div[contains(text(),"Create")]
KW_CreateNewGroupNeg
    Wait Until Element Is Visible    //div[contains(text(),"Create new group")]    30s
    Click Element    //div[contains(text(),"Create new group")]
    Wait Until Element Is Visible    //input[@id="groupname"]    30s
    Input Text    //input[@id="groupname"]    ${GroupName}
    Wait Until Element Is Visible    //small[contains(text(),"group name already exists.*")]
    ${textal}=    Get Text    //small[contains(text(),"group name already exists.*")]
    Log To Console    ${textal}
    #Scroll Element Into View    //div[contains(text(),"Create")]
   # Element Should Be Disabled    //div[contains(text(),"Create")]
   Scroll Element Into View    //div[contains(text(),"Accounts")]

KW_DeleteGroupSystemAdmin
    Wait Until Element Is Visible    //div[contains(text(),"Create new group")]    30s
    Click Element    //div[contains(text(),"Create new group")]
    Wait Until Element Is Visible    //input[@id="groupname"]    30s
    Input Text    //input[@id="groupname"]    ${GroupnameDelete}
    Select From List By Value    //select[@id="role"]    ${Role}
    Scroll Element Into View    //div[contains(text(),"Delete")]
    Click Element    //div[contains(text(),"Delete")]
KW_BackbuttonOnCreateGroupSystemAdmin
    Wait Until Element Is Visible    //div[contains(text(),"Create new group")]    30s
    Click Element    //div[contains(text(),"Create new group")]
    Wait Until Element Is Visible    //input[@id="groupname"]    30s
    Input Text    //input[@id="groupname"]    ${GroupnameBack}
    Select From List By Value    //select[@id="role"]    ${Role}
    Scroll Element Into View    //button[contains(text(),"Back")]
    Click Element    //button[contains(text(),"Back")]

KW_DeleteGroup
    Wait Until Element Is Visible    //div[contains(text(),"Create new group")]    30s
    Click Element    //div[contains(text(),"Create new group")]
    Wait Until Element Is Visible    //input[@id="groupname"]    30s
    Input Text    //input[@id="groupname"]    ${GroupnameDelete}
    Select From List By Value    //select[@id="role"]    ${Role}
    Click Element    //span[contains(text(),"${Workspace}")] #workspacename
    Scroll Element Into View    //div[contains(text(),"Delete")]
    Click Element    //div[contains(text(),"Delete")]
KW_BackbuttonOnCreateGroup
    Wait Until Element Is Visible    //div[contains(text(),"Create new group")]    30s
    Click Element    //div[contains(text(),"Create new group")]
    Wait Until Element Is Visible    //input[@id="groupname"]    30s
    Input Text    //input[@id="groupname"]    ${GroupnameBack}
    Select From List By Value    //select[@id="role"]    ${Role}
    Click Element    //span[contains(text(),"${Workspace}")] #workspacename
    Scroll Element Into View    //button[contains(text(),"Back")]
    Click Element    //button[contains(text(),"Back")]
KW_UpdateGroup
    Wait Until Element Is Visible    //th[contains(text(),"groupName")]    30s
    Scroll Element Into View    //td[contains(text(),"${GroupNameUpdate}")]
    Click Element    //td[contains(text(),"${GroupNameUpdate}")]
#     IF    ${RoleUpdate} == ${SystemAdmin}
#        Select From List By Value    //select[@id="role"]    System Admin
#     ELSE ${RoleUpdate} == ${BusinessUser}
#         Select From List By Value    //select[@id="role"]    Business User
#     ELSE ${RoleUpdate} == ${BusinessAnalyst}
#          Select From List By Value    //select[@id="role"]    Business Analyst
#    END


    Sleep    5s
    Click Element    //select[@id="role"]
    Press Keys    //select[@id="role"]    DOWN
    Press Keys    //select[@id="role"]    TAB
    Sleep    5s
#    Wait Until Element Is Visible    //option[contains(text(),"${RoleUpdate}")]    20s
#    Click Element    //option[contains(text(),"${RoleUpdate}")]

    #Select From List By Value    //select[@id="role"]    ${RoleUpdate}
    #Select From List By Value    //option[contains(text(),"Select Role")]    ${RoleUpdate}
    Scroll Element Into View    ${WorkspaceUpdate1}
    Click Element    //span[contains(text(),"${WorkspaceUpdate1}")] #workspacename
    Scroll Element Into View    ${WorkspaceUpdate2}
    Click Element    //span[contains(text(),"${WorkspaceUpdate2}")] #workspacename
    Scroll Element Into View    //div[contains(text(),"Update")]
    Click Element    //div[contains(text(),"Update")]
    Wait Until Element Is Visible    //small[contains(text(),"Updated successfully!")]    30s