*** Settings ***
Resource  ../Resources/PO/Home.robot
Resource  ../Resources/PO/Contact.robot
Resource  ../Resources/PO/Search.robot


*** Variables ***


*** Keywords ***
user is in magazine page
    Home.Load
    Home.Verify Page Loaded

user searches for location
    Home.Click Search Icon
    Search.Fill Search Input
    Search.Submit Search

search results contains relavant location
    Search.Search Results

user prepare the contact form
    Home.Click Contact
    Contact.Verify Page Loaded
    Contact.Fill Message
    Contact.Fill Full Name
    Contact.Fill Email
    Contact.Mark Checkbox

user send the contact form
    Contact.Submit

user receive a contact success message
    Contact.Wait Message

user subscribe to the newsletter
    Home.Fill Email
    Home.Click InspireMe

user receive a checkedin success message
    Home.Verify Checkedin Message