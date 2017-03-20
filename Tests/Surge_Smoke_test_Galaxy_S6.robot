*** Settings ***
Library    AppiumLibrary
Variables    ../Settings/SettingsGalaxyS6.py
Variables    ../ObjectsRepository/InitialScreenObjects.py
Variables    ../ObjectsRepository/SignUpScreenObjects.py
Variables    ../ObjectsRepository/ChoosePhotoScreenObjects.py
Variables    ../ObjectsRepository/MainScreenObjects.py
Variables    ../ObjectsRepository/UserScreenObjects.py
Variables    ../ObjectsRepository/AccountSettingsObjects.py
Variables    ../ObjectsRepository/PrivacySettingsObjects.py
Resource    ../Keywords/SurgeKeywords.txt
Suite Setup    Open Surge App 
Suite Teardown    Close Application  

*** Test Cases ***
Sign Up
    Navigate To Sign Up Screen
    Input Valid Values To Fields   
    Capture Page Screenshot    valuesFilled
    Click Button    ${btnregister}
    Skip Add Photo Page
    Skip Add Instagram Page
    Wait Until Page Contains Element    ${usericon}    15
    Capture Page Screenshot    signedUp  
    
User Log Out
    Log Out
    Wait Until Page Contains    ${signupbutton}
    Capture Page Screenshot    
    
User Log In
    Log In    ${user}    ${password}
    Wait Until Page Contains Element    ${usericon}    15    
    Capture Page Screenshot       
    

Delete User Account
    Delete Account
    Capture Page Screenshot    