*** Settings ***
Library  SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***
${EMPTY_URL} =    about:blank

*** Keywords ***
Begin Web Test
    Open Browser     ${EMPTY_URL}    ${BROWSER}
    maximize browser window

End Web Test
    Close Browser