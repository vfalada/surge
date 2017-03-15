*** Settings ***
Resource    ../ObjectsRepository/MainObjects.robot
Resource    ../Settings/Settings.robot


Library    AppiumLibrary


*** Keywords ***
Launch Demo Application
    [Arguments]    ${serverURL}    ${platformName}    ${plfrmVersion}    ${deviceName}    ${appPath}
    Open Application    ${serverURL}    platformName=${platformName}    platformVersion=${plfrmVersion}    deviceName=${deviceName}    udid=3828d1968e197bb05ba0449e0ff63bf35bccfb0b    app=${applicationPath}    automationName=XCUITest
Demo App Login Screen Is displayed Properly
    Wait Until Page Contains Element    ${emailField}    10s            
    Page Should Contain Element    ${passwordField}   
    
Login To Demo App Using A Valid Username And Password
    [Arguments]    ${username}    ${password}
    Input Text    ${emailField}    ${username}
    Input Password    ${passwordField}    ${password}
    Click Element    ${signInButton}   
    
Demo App Welcome Screen Is displayed Properly
    Wait Until Page Contains Element    ${logo}    10s            
    Page Should Contain Element    ${skipButton}

Skip The Welcome Screen And Navigate To Home Screen
    Click Element    ${skipButton}
    
Home Screen Is Displayed Properly
    Wait Until Page Contains Element    ${plainTableButton}    10s  
    Page Should Contain Element    ${firstButton}
    Page Should Contain Element    ${secondButton}
    Page Should Contain Element    ${thirdButton}   
    
Navigate To Table View
    Click Element    ${plainTableButton}
    
Table View Screen Displayed Properly
    Wait Until Page Contains Element    ${homeButton}    10s
    Page Should Contain Element    ${homeButton}
    
Return To Home Screen
    Click Element    ${homeButton}
    
Close Demo Application
    Close All Applications
    

    
          
    
