*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CONTACT_URL} =                    https://magazine.trivago.com/contact/
${CONTACT_EMAIL_ID} =               id=contact-email
${CONTACT_MSG_CLASS} =              class=feedback
${CONTACT_CHECKBOX_ID} =            id=confirm
${CONTACT_YOUR_MSG_XPATH} =         xpath=//*[@id="app"]/div[3]/div/div/div[1]/div[2]/div/textarea
${CONTACT_FULL_NAME_XPATH} =        xpath=//*[@id="app"]/div[3]/div/div/div[1]/div[3]/div[1]/input
${CONTACT_SUBMIT_BUTTON_CLASS} =    class=contact-submit
${CONTACT_EMAIL} =                  reginaldo.gooncalves.sc@gmail.com
${CONTACT_OK_MSG} =                 Message Sent Successfully!
${CONTACT_NAME} =                   Reginaldo Gonçalves
${CONTACT_MSG} =                    This is a test message

*** Keywords ***
Verify Page Loaded
    ${url}=    get location
    should be equal as strings   ${url}    ${CONTACT_URL}
    wait until page contains element    ${CONTACT_EMAIL_ID}

Fill Message
    input text    ${CONTACT_YOUR_MSG_XPATH}     ${CONTACT_MSG}

Fill Full Name
    input text    ${CONTACT_FULL_NAME_XPATH}    ${CONTACT_NAME}

Fill Email
    input text    ${CONTACT_EMAIL_ID}      ${CONTACT_EMAIL}

Mark Checkbox
    select checkbox    ${CONTACT_CHECKBOX_ID}

Submit
    click button     ${CONTACT_SUBMIT_BUTTON_CLASS}

Wait Message
    wait until page contains element     ${CONTACT_MSG_CLASS}
    element text should be               ${CONTACT_MSG_CLASS}     ${CONTACT_OK_MSG}