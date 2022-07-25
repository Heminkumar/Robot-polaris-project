*** Settings ***
Documentation  Device Adding Functionality
Library  SeleniumLibrary
Resource  ../Resources/login_PO.robot

*** Variables ***


*** Keywords ***
Click on Add Device Button
    #Click Element     xpath://div[@class='checkallbtnscls']
    Click Element     class:checkallbtnscls

*** Test Cases ***
Verify Add Device button is Clicking
    [Tags]  Smoke
    Open Polaris URL
    Enter Credentials
    Log-In Button
    sleep   03
    Click On Add Device Button
    sleep   03
    Close Browser Session
