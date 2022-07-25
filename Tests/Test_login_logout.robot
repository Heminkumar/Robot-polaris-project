*** Settings ***
Documentation  Login Functionality
Library  SeleniumLibrary
Resource  ../Resources/Generic.robot
Resource  ../Resources/login_PO.robot

*** Variables ***


*** Keywords ***


*** Test Cases ***
Verify Successful Login to Polaris-Staging
    [Tags]  Sanity
    Open Polaris URL
    Enter Credentials
    Log-In Button
    Devices Page Should Be Open After Logging
    Close Browser Session

Verify Successful Logout from Polaris-Staging
    [Tags]  Sanity
    Open Polaris URL
    Enter Credentials
    Log-In Button
    Devices Page Should Be Open After Logging
    User Logout
    Close Browser Session