*** Settings ***
Library    AppiumLibrary

*** Test Cases ***
Open App and Wait
    Open Application    http://vfalada:5f3d94d4-9ae8-4be8-813b-ae60d76c6ee2@ondemand.saucelabs.com:80/wd/hub    appiumVersion=1.4.16    name=Sample Test    platformName=Android    platformVersion=4.2    deviceName=Android Emulator    app=http://appium.s3.amazonaws.com/ContactManager.apk
    Sleep    60
    Close Application
