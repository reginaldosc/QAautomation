*** Settings ***
Library  SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  chrome
    maximize browser window

End Web Test
    Close Browser