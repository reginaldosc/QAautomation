# QAautomation

**This system was developed as a Trivago's challenge.**

Design a test automation framework for room5.trivago.com that will allow other QA
Engineers to be able to create test cases efficiently.

Please cover 3 of the following scenarios:
- **Search for any location on Magazine by using the search bar**
- **Fill in the contact form and send it (accessible through the footer)**
- **Subscribe to the Newsletter**
- Navigate to a destination through the menu on the top left
- Verify that the links in homepage are working


**Command to run the test cases:** ..\QAautomation>robot -d results -N "Regression" tests
**If you want to run it using another browser:** robot -d results -v BROWSER:ff -i "TC1" tests