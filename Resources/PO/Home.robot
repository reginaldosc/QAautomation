*** Settings ***
Library     SeleniumLibrary
Library     String

*** Variables ***


*** Keywords ***
Load
    go to    http://room5.trivago.com

Verify Page Loaded
    title should be    trivago Magazine
    wait until page contains element    xpath=//*[@id="search"]/div[1]/div[2]/input

Click Search Icon
    click element    class=search-icon

Click Contact
    go to    https://magazine.trivago.com/contact/

Fill Email
    ${str1}=        Generate Random String  8   [LOWER]
    ${str2}=        catenate    SEPARATOR=    ${str1}    @gmail.com
    input text      name=email      ${str2}

Click InspireMe
    click button    class=submit

Verify Checkedin Message
    wait until element is visible    class=submitted    timeout=10
    element text should be    class=submitted   You are now checked-in!