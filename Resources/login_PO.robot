*** Settings ***
Library    SeleniumLibrary
Resource   Generic.robot

*** Variables ***
${Username_field}  xpath://input[@id='outlined-basic']
${Password_field}  //input[@name='password']

${Login_Button}     css:.MuiButton-text > .MuiButton-label

${Devices_Text}   Devices

${LogOut_Dropdown}   class:profilenamedrop
${LogOut_Option}    class:MuiTouchRipple-root

*** Keywords ***

Enter Credentials
    Input Text  ${Username_field}        ${Username}
    Input Password  ${Password_field}    ${Password}

Log-In Button
    Click Element   ${Login_Button}

Devices Page Should Be Open after logging
    Wait Until Page Contains    ${Devices_Text}     timeout=20

User Logout
    Wait Until Element Is Enabled  ${LogOut_Dropdown}  timeout=5
    Wait Until Element Is Enabled  ${LogOut_Option}   timeout=5


