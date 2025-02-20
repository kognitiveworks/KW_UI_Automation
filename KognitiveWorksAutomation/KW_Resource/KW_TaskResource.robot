*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${DocumentPath}=    C:/Users/Bveeraragavan/Desktop/Kwdocuments/
${DocumentName}=    KA_Testcasejpg.jpg
${descriptionName}=     Desname16

*** Keywords ***
KW_Click_Task
    Wait Until Element Is Visible    //div[contains(text(),"Tasks")]    30s
    Click Element    //div[contains(text(),"Tasks")]
    Wait Until Element Is Visible    //div[contains(text(),"Upload")]    30s
KW_Upload document
    Wait Until Element Is Visible    //div[contains(text(),"Upload")]    30s
    Click Element    //div[contains(text(),"Upload")]
    Wait Until Element Is Visible    //label[contains(text()," Browse Files ")]
    #Click Element    //label[contains(text(),"Browse Files")]
    Choose File    //input[@type='file']    ${DocumentPath}${DocumentName}
    Sleep    3
    Input Text    //input[@id="SUBJECT"]    ${descriptionName}
    Click Element    //button[contains(text(),"Submit")]
    #Click Element    //button[contains(text(),"Close")]
    Wait Until Element Is Not Visible    //div[contains(text(),"Uploading")]    30S
    Sleep    13
KW_OpenTask
    Wait Until Element Is Visible    //div[contains(text(),"Tasks")]    30s
    Click Element    //div[contains(text(),"Tasks")]
    Wait Until Element Is Visible    //td[contains(text(),"${descriptionName}")]    30s
    Scroll Element Into View    //td[contains(text(),"${descriptionName}")]
    Click Element    //td[contains(text(),"${descriptionName}")]
KW_ReopenTask
    Wait Until Element Is Visible    //span[contains(text(),"complete")]    30s
    Click Element    //button[contains(text(),"Reopen")]
    Wait Until Element Is Visible    //span[contains(text(),"in progress")]    30s
KW_CompleteTask
    Wait Until Element Is Visible    //span[contains(text(),"in progress")]    30s
    Click Element    //button[contains(text(),"Complete")]
    Wait Until Element Is Visible    //span[contains(text(),"complete")]    30s
KW_MonitorTask
    Wait Until Element Is Visible    //button[contains(text(),"Monitor")]    30s
    Click Element    //button[contains(text(),"Monitor")]
KW_ClickOnDocument
    Scroll Element Into View    //td[contains(text(),"${DocumentName}")]
    Wait Until Element Is Visible    //td[contains(text(),"${DocumentName}")]    30s
    Click Element    //td[contains(text(),"${DocumentName}")]
KW_SumbitWithOverRide
    Wait Until Element Is Visible    //span[contains(text(),"Submit")]    30s
    Click Element    //i[@id="dropdown-document"]
    Wait Until Element Is Visible    //li[contains(text(),"Submit with override")]    10s
    Click Element    //li[contains(text(),"Submit with override")]
    Wait Until Element Is Visible    //span[contains(text(),"success")]    30s

KW_ReClassify_Extract
    Wait Until Element Is Visible    //span[contains(text(),"Submit")]    30s
    Click Element    //i[@id="dropdown-document"]
    Wait Until Element Is Visible    //li[contains(text(),"Re-Classify & Extract")]    30s
    Click Element    //li[contains(text(),"Re-Classify & Extract")]
    Wait Until Element Is Visible    //span[contains(text(),"success")]    30s
KW_ReExtract_only
    Wait Until Element Is Visible    //span[contains(text(),"Submit")]    30s
    Click Element    //i[@id="dropdown-document"]
    Wait Until Element Is Visible    //li[contains(text(),"Re-Extract only")]    30s
    Click Element    //li[contains(text(),"Re-Extract only")]
    Wait Until Element Is Visible    //span[contains(text(),"success")]    30s
KW_Submit
    Wait Until Element Is Visible    //span[contains(text(),"Submit")]    30s
    Click Element    //span[contains(text(),"Submit")]
    Wait Until Element Is Visible    //div[@id="toaster"]    30s






