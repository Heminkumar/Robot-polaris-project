*** Settings ***
Library  SeleniumLibrary
Documentation  Login Functionality
Library  SeleniumLibrary
Test Teardown     Close All Browsers
Documentation  Login Functionality into Polaris-staging
Library  SeleniumLibrary

*** Variables ***
${sleep}  02
${polaris_URL}  https://polaris-staging-evp.eloci.us/
${Broswer}  chrome

*** Keywords ***


*** Test Cases ***
Verify Successful Login to Polaris-Staging
    [Documentation]  This test case is verify that user is able to login into polaris-staging
    [Tags]  Sanity
    Open Browser   ${polaris_URL}   chrome
    Maximize Browser Window
    Input Text  xpath://input[@id='outlined-basic']     hemin.patel+M50-1@volansys.com
    Input Password  //input[@name='password']   Hemin@123
    Click Element
    # [Teardown]   ${TEARDOWN}