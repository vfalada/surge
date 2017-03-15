*** Settings ***
Resource    ../Settings/Settings.robot
Resource    ../Keywords/Keywords.robot


*** Test Cases ***
Mobile_Test_Automation_SauceLabs_Demo
      Launch Demo Application    ${serverURL}    iOS    10.2    iPad Air 2    ${applicationPath}