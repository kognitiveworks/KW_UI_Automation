*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
#Library    DataDriver     C:/Users/BVeeraragavan/Desktop/KW_Datas.xlsx    sheet_name=Sheet1
Resource    ../KW_Data/KW_WorkbenchData.robot

*** Variables ***


*** Keywords ***
KW_LaunchDocumentLinkDirectly
    Open Browser    https://test.kognitiveworks.com/workbench/workspace/Claims_Assistant/document/Authority_Report    chrome
    Sleep    5

KW_ClickWorkbenchMenuSelection
    Wait Until Element Is Not Visible    //p[contains(text(),"Login successfull !!")]    30s
    Wait Until Element Is Visible    //div[contains(text(),"Workbench")]    30s
    Click Element    //div[contains(text(),"Workbench")]

KW_createNewWorkspaceOne
    Set Global Variable    ${Workspacenameone}
    Wait Until Element Is Visible    //button[@class='kw-primary-button']    30s
    Click Element    //button[@class='kw-primary-button']
    Wait Until Element Is Visible    //input[@type='text']    30s
    Input Text    //input[@type='text']    ${Workspacenameone}
    Click Element    (//input[@id='flexSwitchCheckDefault'])[1]
    Click Element    (//input[@id='flexSwitchCheckDefault'])[2]
    Click Element    (//input[@id='flexSwitchCheckDefault'])[1]
    Click Element    (//input[@id='flexSwitchCheckDefault'])[2]
    Click Element    (//input[@id='flexSwitchCheckDefault'])[1]
    Click Element    (//input[@id='flexSwitchCheckDefault'])[2]
    Click Element    (//input[@id='flexSwitchCheckDefault'])[1]
    Click Element    (//input[@id='flexSwitchCheckDefault'])[2]
    Click Element    (//input[@id='flexSwitchCheckDefault'])[1]
    Click Element    (//input[@id='flexSwitchCheckDefault'])[2]
    Click Element    (//input[@id='flexSwitchCheckDefault'])[1]
    Click Element    (//input[@id='flexSwitchCheckDefault'])[2]
    Sleep    3
    Click Element    (//input[@id='flexSwitchCheckDefault'])[1]
    Click Element    (//input[@id='flexSwitchCheckDefault'])[2]
    Wait Until Element Is Visible    //span[contains(text(),"Submit")]    30s
    Click Element    //span[contains(text(),"Submit")]
    Wait Until Element Is Visible    //th[contains(text(),"supports hyperlink")]    30s

KW_createNewWorkspaceWithOldName
    Wait Until Element Is Visible    //button[@class='kw-primary-button']    30s
    Click Element    //button[@class='kw-primary-button']
    Wait Until Element Is Visible    //input[@type='text']    30s
    Input Text    //input[@type='text']    ${Workspacenameone}
    Wait Until Element Is Visible    //p[contains(text(),"*Workspace name already exist")]    30s
    ${errortext}=    Get Text    //p[contains(text(),"*Workspace name already exist")]
    Input Text    //input[@type='text']    ${WorkspacenameInvalid}
    #Invalid workspace name shouldn't take , now its taking,change the code after bug was cleared.
    Input Text    //input[@type='text']    ${WorkspacenameLongName}
    #Long workspace name shouldn't take , now its taking,change the code after bug was cleared.

    Clear Element Text   //input[@type='text']
    Sleep    3s
    Click Element    (//input[@id='flexSwitchCheckDefault'])[1]
    Click Element    (//input[@id='flexSwitchCheckDefault'])[2]
    Sleep    10s
   # Element Should Be Disabled    //button[@type='button']
    
KW_createNewWorkspaceTwo
    Wait Until Element Is Visible    //button[@class='kw-primary-button']    30s
    Click Element    //button[@class='kw-primary-button']
    Wait Until Element Is Visible    //input[@type='text']    30s
    Input Text    //input[@type='text']    ${Workspacenametwo}

    ${HandDocuMentref}=    Set Variable    ${HandDocument}
    IF    "${HandDocument}" == "Yes"
      Click Element    (//input[@id='flexSwitchCheckDefault'])[1]
    END

    ${EmailLinkref}=    Set Variable    ${EmailLink}
    IF    "${EmailLink}" == "Yes"
     Click Element    (//input[@id='flexSwitchCheckDefault'])[2]
    END

    Sleep    5
    Click Element    //button[@type='button']
    Wait Until Element Is Visible    //th[contains(text(),"supports hyperlink")]    30s

KW_selectWorkspaceName
    Wait Until Element Is Visible    //th[contains(text(),"workspace")]
    Scroll Element Into View    //span[contains(text(),"${Workspacenametwo}")]
    Click Element    //span[contains(text(),"${Workspacenametwo}")]

KW_createNewDocument
    Wait Until Element Is Visible    //button[@class='kw-primary-button']    30s
    Click Element    //button[@class='kw-primary-button']
    Wait Until Element Is Visible    //input[@placeholder='Enter name']    30s
    Input Text    //input[@placeholder='Enter name']    ${Documentname}
  #  ${file_content}=    Get File    ${TEXT_FILE1}
  #  Log To Console    ${file_content}
    Input Text    //textarea[@type='text']    ${DescriptionEdit}
    Input Text    //input[@name='documentAlias']    ${aliasEdit}
    Sleep    4
    Scroll Element Into View    //div[@class='ace_content']
    #Clear Element Text    //div[@class='ace_content']
   # ${file_contents}=    Get File    ${TEXT_FILE}
    #Log To Console   ${file_contents}
    Input Text    //textarea[@class='ace_text-input']    ${SchemaEdit}
    Sleep    5
    Scroll Element Into View    //button[@class='kw-success-button']
    Sleep    3
    Click Element    //button[@class='kw-success-button']
    Wait Until Element Is Visible    //th[contains(text(),"Document Name")]

KW_createNewDocumentInvalid
    Wait Until Element Is Visible    //button[@class='kw-primary-button']    30s
    Click Element    //button[@class='kw-primary-button']
    Wait Until Element Is Visible    //input[@placeholder='Enter name']    30s
    Input Text    //input[@placeholder='Enter name']    ${DocumentnameInvalid}
  #  ${file_content}=    Get File    ${TEXT_FILE1}
  #  Log To Console    ${file_content}
    Input Text    //textarea[@type='text']    ${DescriptionInvalid}
    Input Text    //input[@name='documentAlias']    ${AliasInvalid}
    Sleep    4
    Scroll Element Into View    //div[@class='ace_content']
    #Clear Element Text    //div[@class='ace_content']
   # ${file_contents}=    Get File    ${TEXT_FILE}
    #Log To Console   ${file_contents}
    Input Text    //textarea[@class='ace_text-input']    ${SchemaInvalid}
    Sleep    5
    Scroll Element Into View    //button[@class='kw-success-button']
    Sleep    3
    Click Element    //button[@class='kw-success-button']
    Wait Until Element Is Visible    //th[contains(text(),"Document Name")]

KW_createNewDocumentNegative
   Wait Until Element Is Visible    //button[contains(text(),"Deploy")]    30s
    Scroll Element Into View    //button[contains(text(),"Edit")]
    Click Element    //button[contains(text(),"Edit")]
    Wait Until Element Is Visible    //input[@placeholder='Enter name']    30s
    #Input Text    //input[@placeholder='Enter name']    ${Documentname}
    #${file_content}=    Get File    ${TEXT_FILE1}
    #Log To Console    ${file_content}
#    Input Text    //textarea[@type='text']    ${Description}
#    Input Text    //input[@name='documentAlias']    ${alias}
#    Sleep    4
#    Scroll Element Into View    //div[@class='ace_content']
    #Clear Element Text    //div[@class='ace_content']
    #${file_contents}=    Get File    ${TEXT_FILE}
    #Log To Console   ${file_contents}
    Input Text    //textarea[@class='ace_text-input']    ${SchemaMaximumSize}
    Sleep    5
    Scroll Element Into View    //button[@class='kw-success-button']
    Sleep    3
    Click Element    //button[@class='kw-success-button']
    Wait Until Element Is Visible    //th[contains(text(),"Document Name")]

KW_DeployDocument

    Click Element    //td[contains(text(),"${Documentname}")]/parent::tr//input
    Sleep    2
    Scroll Element Into View    //button[@class='btn btn-success']
    Click Element    //button[@class='btn btn-success']
    Wait Until Element Is Visible    //div[contains(text(),"Deployment Not Required")]/parent::div/parent::td/parent::tr//td[contains(text(),"${Documentname}")]
    Get Text    //td[contains(text(),"${Documentname}")]/following-sibling::td/following-sibling::td/following-sibling::td/following-sibling::td/div
KW_ClickOnDocumentView

    Wait Until Element Is Visible    //th[contains(text(),"Document Name")]    30s
    Scroll Element Into View    //span[contains(text(),"${Documentname}")]
    Click Element    //td[contains(text(),"${Documentname}")]/following-sibling::td/following-sibling::td/following-sibling::td/following-sibling::td/following-sibling::td
KW_EditDocumentUpdate

    Wait Until Element Is Visible    //button[contains(text(),"Deploy")]    30s
    Scroll Element Into View    //button[contains(text(),"Edit")]
    Click Element    //button[contains(text(),"Edit")]
    Wait Until Element Is Visible    //input[@placeholder='Enter name']    30s
    #Input Text    //input[@placeholder='Enter name']    ${Documentname}
    #${file_content}=    Get File    ${TEXT_FILE1}
    #Log To Console    ${file_content}
    Input Text    //textarea[@type='text']    ${Description}
    Input Text    //input[@name='documentAlias']    ${alias}
    Sleep    4
    Scroll Element Into View    //div[@class='ace_content']
    #Clear Element Text    //div[@class='ace_content']
    #${file_contents}=    Get File    ${TEXT_FILE}
    #Log To Console   ${file_contents}
    Input Text    //div[@class='ace_content']    ${Schema}
    Sleep    5
    Scroll Element Into View    //button[contains(text(),"Update")]
    Click Element    //button[contains(text(),"Update")]
    Wait Until Element Is Visible    //td[contains(text(),"${Documentname}")]/following-sibling::td/following-sibling::td/following-sibling::td/following-sibling::td//div[contains(text(),"Modified")]    30s
    Click Element    //td[contains(text(),"${Documentname}")]/parent::tr//input
    Sleep    2
    Scroll Element Into View    //button[@class='btn btn-success']
    Click Element    //button[@class='btn btn-success']
    Wait Until Element Is Visible    //td[contains(text(),"${Documentname}")]/following-sibling::td/following-sibling::td/following-sibling::td/following-sibling::td/div    30s
    Get Text    //td[contains(text(),"${Documentname}")]/following-sibling::td/following-sibling::td/following-sibling::td/following-sibling::td/div

KW_DeleteDocument
    Wait Until Element Is Visible    //button[contains(text(),"Deploy")]    30s
    Scroll Element Into View    //button[contains(text(),"Edit")]
    Click Element    //button[contains(text(),"Edit")]
    Wait Until Element Is Visible   //button[contains(text(),"Delete")]    30s
    Click Element    //button[contains(text(),"Delete")]
    Wait Until Element Is Visible    //td[contains(text(),"${Documentname}")]/following-sibling::td/following-sibling::td/following-sibling::td/following-sibling::td//div[contains(text(),"Deleted From Test")]    30s
    Click Element    //td[contains(text(),"${Documentname}")]/parent::tr//input
    Sleep    2
    Scroll Element Into View    //button[@class='btn btn-success']
    Click Element    //button[@class='btn btn-success']
KW_CancleEdit
    Scroll Element Into View    //button[contains(text(),"Edit")]
    Click Element    //button[contains(text(),"Edit")]
    Wait Until Element Is Visible    //button[contains(text(),"Cancel")]    30s
    Click Element    //button[contains(text(),"Cancel")]
    Wait Until Element Is Visible    //button[contains(text(),"Edit")]    30s
KW_BackfromDocument
    Wait Until Element Is Visible    //button[contains(text(),"Deploy")]    30s
    Click Element    //button[contains(text(),"Back")]
    Wait Until Element Is Visible    //th[contains(text(),"Document Name")]    30s




