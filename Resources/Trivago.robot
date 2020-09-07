*** Settings ***
Resource  ../Resources/PO/Home.robot
Resource  ../Resources/PO/Contact.robot
Resource  ../Resources/PO/Search.robot


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

user fill the contact form

user send the contact form

user receive a success message

user subscribe to the newsletter

