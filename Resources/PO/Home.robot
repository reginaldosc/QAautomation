*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Load
    go to    http://room5.trivago.com

Verify Page Loaded
    wait until page contains element    xpath=//*[@id="search"]/div[1]/div[2]/input

Click Search Icon
    click element    class=search-icon
