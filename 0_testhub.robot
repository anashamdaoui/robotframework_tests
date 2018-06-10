*** Settings ***
Documentation     This example demonstrates how to use current library
Library      Selenium2Library
Library      XvfbRobot

*** Test Cases ***
Create Headless Browser
    Start Virtual Display    1920    1080
    Open Browser   url=http://google.com   browser=chrome   remote_url=http://chrome_node:5555/wd/hub
    Set Window Size    1920    1080
    ${title}=    Get Title
    Should Be Equal    Google    ${title}
    [Teardown]    Close Browser
