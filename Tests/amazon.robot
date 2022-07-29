*** Settings ***
Library    SeleniumLibrary
Library    ../lib/CustomLib.py

*** Keywords ***


*** Variables ***
${Browser}   Chrome
${Locator}   xpath://span[.='Amitasha Plastic Archery Bow and Arrow Toy Set with Target Board, Multicolour']
${Locator1}   css:[cel_widget_id='MAIN-SEARCH_RESULTS-14'] .a-size-base-plus

*** Test Cases ***
Open Amazon and enter text in search area
    Open Browser  https://www.amazon.in/   ${Browser}
    Maximize Browser Window
    ${Get_Title}   get title
    #log to console    ${Get_Title}
   # should be equal as strings    ${Get_Title}     Amazon
   # should contain any    ${Get_Title}     Amazon
    Wait Until Page Contains    Amazon.in
    click element     id:nav-link-accountList
    #mouse over    'Account & Lists'
    sleep     02

#    click element    //div[@id='nav-flyout-ya-signin']//span[@class='nav-action-inner']
#    Input Text  id:twotabsearchtextbox    Toys
#    Click Button  id:nav-search-submit-button
#    Wait Until Page Contains   results for "Toys"
#    sleep   03
#    #execute javascript      window.scrollTo(0,2000)    # scroll upto some pixels
#    Scroll Element Into View       ${Locator1}       # scroll upto some element
#    Click Element   ${Locator1}
#    #Scroll Element Into View   xpath://*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[7]/div/div/div/div/div[3]/div[1]/h2/a/span
#    #execute javascript   window.scrollTo(0,document.body.scrollHeight)   # end of the page
#    sleep   05
#    #execute javascript   window.scrollTo(0,-document.body.scrollHeight)   # starting of the page
##    #Click Element   ${Locator}[1]
#    #sleep   05
    wait until page contains element   id:ap_email    timeout=5
    ${random_email}     Generate Random Email    ${9}    # random email create using library    interger arguments in {}
    #log to console    ${random_email}
    #Input Text          email      ${random_email}
    input text    id:ap_email     ${random_email}
    click button    id:continue
    Close Browser