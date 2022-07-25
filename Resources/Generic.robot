*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${polaris_URL}  https://polaris-staging-evp.eloci.us/
${Broswer}      chrome

${Username}     dp.polaris10+jul22@gmail.com
${Password}     Vtpl@123

*** Keywords ***
Open Polaris URL
    Open Browser    ${polaris_URL}    ${Broswer}
    Maximize Browser Window

Close Browser Session
    Close Browser