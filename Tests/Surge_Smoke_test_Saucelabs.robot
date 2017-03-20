*** Settings ***
Library    AppiumLibrary
Variables    ../Settings/Settings.py
Variables    ../ObjectsRepository/InitialScreenObjects.py
Variables    ../ObjectsRepository/SignUpScreenObjects.py
Variables    ../ObjectsRepository/ChoosePhotoScreenObjects.py
Variables    ../ObjectsRepository/MainScreenObjects.py
Variables    ../ObjectsRepository/UserScreen.py
Variables    ../ObjectsRepository/AccountSettings.py
Variables    ../ObjectsRepository/PrivacySettingsObjects.py
Resource    ../Keywords/Surge.txt
Suite Setup    Open Surge App 
Suite Teardown    Close Application  

*** Test Cases ***
#Sign Up
    #Navigate To Sign Up Screen
    #Input Valid Values To Fields   
    #Capture Page Screenshot    valuesFilled
    #Click Button    ${btnregister}
    #Skip Add Photo Page
    #Skip Add Instagram Page
    #Wait Until Page Contains Element    ${usericon}    15
    #Capture Page Screenshot    signedUp     
    
User Log In
    Log In    ${user}    ${password}
    #Wait Until Page Contains    Choose Your Profile Photo  15
    Wait Until Page Contains Element    ${usericon}    15    
    Capture Page Screenshot    
    
User Log Out
    Log Out
    Wait Until Page Contains Element    ${signupbutton}
    Capture Page Screenshot    
    

#Delete User Account
    #Delete Account