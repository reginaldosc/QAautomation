*** Settings ***
Resource         ../Resources/Common.robot                                # For Setup & Teardown
Resource         ../Resources/Trivago.robot                               # For lower level keywords in TC
Test Setup       Begin Web Test                                           # Test setup
Test Teardown    End Web Test

*** Test Cases ***
#Search for any location on Magazine by using the search bar
#    [Tags]    Smoke, Regression, TC1
#    LOG       Test Case 1
#    Given user is in magazine page
#    When user searches for location
#    Then search results contains relavant location
#
#Fill in the contact form and send it
#    [Tags]    Smoke, Regression, TC2
#    LOG       Test Case 2
#    Given user is in magazine page
#    When user fill the contact form
#    And user send the contact form
#    Then user receive a contact success message

Subscribe to the Newsletter
    [Tags]    Smoke, Regression, TC3
    LOG       Test Case 3
    Given user is in magazine page
    When user subscribe to the newsletter
    Then user receive a checkedin success message
