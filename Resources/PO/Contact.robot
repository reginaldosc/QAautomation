*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Verify Page Loaded
    ${url}=    get location
    should be equal as strings   ${url}    https://magazine.trivago.com/contact/
    wait until page contains element    id=contact-email

Fill Message
    input text    xpath=//*[@id="app"]/div[3]/div/div/div[1]/div[2]/div/textarea    This is a test message

Fill Full Name
    input text    xpath=//*[@id="app"]/div[3]/div/div/div[1]/div[3]/div[1]/input    Reginaldo Gonçalves

Fill Email
    input text    id=contact-email      reginaldo.gooncalves.sc@gmail.com

Mark Checkbox
    select checkbox    id=confirm

Submit
    click button    class=contact-submit

Wait Message
    wait until page contains element    class=feedback
    element text should be      class=feedback  Message Sent Successfully!