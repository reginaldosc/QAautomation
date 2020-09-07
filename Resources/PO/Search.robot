*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Keywords ***
Fill Search Input
    input text    class=search-input    Berlin

Submit Search
    press key    class=search-input   Enter

Search Results
    wait until page contains element    class=article-card