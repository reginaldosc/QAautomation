*** Settings ***
Resource         ../Resources/Common.robot
Resource         ../Resources/Trivago.robot
Test Setup       Begin Web Test
Test Teardown    End Web Test


*** Variables ***
${BROWSER} =      chrome
${START_URL} =    http://room5.trivago.com
${NUMBERS} =      1    2    3
${MSG} =          Running Test Case

# robot -d results tests/Trivago.robot

*** Test Cases ***
TC1-Search for any location on Magazine by using the search bar
    [Tags]    Regression    Smoke   TC1
    LOG       ${MSG} ${NUMBERS}[0]
    Given user is in magazine page
    When user searches for location
    Then search results contains relavant location

TC2-Fill in the contact form and send it
    [Tags]    Regression    TC2
    LOG       ${MSG} ${NUMBERS}[1]
    Given user is in magazine page
    When user prepare the contact form
    And user send the contact form
    Then user receive a contact success message

TC3-Subscribe to the Newsletter
    [Tags]    Regression    TC3
    LOG       ${MSG} ${NUMBERS}[2]
    Given user is in magazine page
    When user subscribe to the newsletter
    Then user receive a checkedin success message
