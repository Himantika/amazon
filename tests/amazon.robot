*** Settings ***
Documentation  This is some basic info about the whole suite
Library  SeleniumLibrary



*** Test Cases ***
User should not be required to sign in
    [Documentation]  This is some basic info about whole test
    [Tags]  Smoke
    Open Browser  http://www.amazon.com  chrome
    Sleep  3s
    Input Text  twotabsearchtextbox  Ferrari 458 maisto
    Sleep  3s
    Click Button  css=#nav-search > form > div.nav-right > div > input
    Wait Until Page Contains  results for "Ferrari 458 maisto"
    Click Link  css=#result_0 > div > div > div > div.a-fixed-left-grid-col.a-col-right > div.a-row.a-spacing-small > div:nth-child(1) > a
    Wait Until Page Contains   Back to search results
    Click Button  id=add-to-cart-button
    Sleep  3s


    Click Link  Proceed to Checkout(1 item)


    Close Browser

