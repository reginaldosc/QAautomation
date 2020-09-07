*** Settings ***
Library  SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  chrome

End Web Test
    Close Browser