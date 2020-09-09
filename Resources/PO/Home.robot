*** Settings ***
Library     SeleniumLibrary
Library     String

*** Variables ***
${TITLE} =                      trivago Magazine
${HOME_SEARCH_BAR} =            id=search
${HOME_SEARCH_ICON} =           class=search-icon
${CONTACT_URL} =                https://magazine.trivago.com/contact/
${EMAIL} =                      name=email
${INSPIRE_ME} =                 class=submit
${NEWSLETTER_MSG_CLASS} =       class=submitted
${TIMEOUT} =                    10
${NEWSLETTER_OK_MSG} =          You are now checked-in!

*** Keywords ***
Load
    go to    ${START_URL}

Verify Page Loaded
    title should be                     ${TITLE}
    wait until page contains element    ${HOME_SEARCH_BAR}

Click Search Icon
    click element     ${HOME_SEARCH_ICON}

Click Contact
    go to     ${CONTACT_URL}

Fill Email
    ${str1}=        Generate Random String  8   [LOWER]
    ${str2}=        catenate    SEPARATOR=    ${str1}    @gmail.com
    input text      ${EMAIL}      ${str2}

Click InspireMe
    click button    ${INSPIRE_ME}

Verify Checkedin Message
    wait until element is visible    ${NEWSLETTER_MSG_CLASS}    timeout=${TIMEOUT}
    element text should be           ${NEWSLETTER_MSG_CLASS}    ${NEWSLETTER_OK_MSG}