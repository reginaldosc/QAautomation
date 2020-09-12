*** Settings ***
Library  SeleniumLibrary
Library    SeleniumLibrary

*** Variables ***
${SEARCH_SEARCH_INPUT} =    class=search-input
${LOCATION} =               Berlin
${ENTER_KEY} =              Enter
${SEARCH_CARD} =            class=article-card

*** Keywords ***
Fill Search Input
    input text    ${SEARCH_SEARCH_INPUT}     ${LOCATION}

Submit Search
    press keys     ${SEARCH_SEARCH_INPUT}     ${ENTER_KEY}

Search Results
    wait until page contains element     ${SEARCH_CARD}