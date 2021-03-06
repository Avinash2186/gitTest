*** Settings ***
Documentation  A simple Amazon.com suite
Library  Selenium2Library

*** Variables ***
# These variables can be overriden on the command line
${BROWSER} =  firefox
${START_URL} =  https://www.amazon.com
${REMOTE_URL} =  http://avinash2186:2d504d9f-3dc3-4169-a153-dd29ec08ba2f@ondemand.saucelabs.com:80/wd/hub
#${DESIRED_CAPABILITIES} =  name:Win8 + Chrome 43,platform:Windows 8.1,browserName:chrome,version:43
${DESIRED_CAPABILITIES} =  name:Mobile,browserName:Browser,appiumVersion:1.6.4,deviceName:Samsung Galaxy S4 Emulator,deviceOrientation:portrait,platformVersion:4.4,platformName:Android
# pybot -d results tests/amazon.robot

*** Test Cases ***
Simple Web GUI Test
    [Documentation]  A simple Amazon.com test document update for git again
    [Tags]  search
    Open Browser  ${START_URL}  ${BROWSER}  remote_url=${REMOTE_URL}  desired_capabilities=${DESIRED_CAPABILITIES}
    # Open Browser  ${START_URL}  ${BROWSER}
     sleep  2s
    wait until page contains element  css=#twotabsearchtextbox
    Input Text  css=#twotabsearchtextbox  Ferrari 458
    Click Button  css=#nav-search > form > div.nav-right > div > input
    Wait Until Page Contains  results for
    Close Browser

Feature 1 Test
    Log  featireds111

Simple Web GUI Test2
    [Documentation]  A simple Amazon.com test document update for git again
    [Tags]  search
    Open Browser  ${START_URL}  ${BROWSER}  remote_url=${REMOTE_URL}  desired_capabilities=${DESIRED_CAPABILITIES}
    # Open Browser  ${START_URL}  ${BROWSER}
     sleep  2s

    wait until page contains element  css=#twotabsearchtextbox
    Input Text  css=#twotabsearchtextbox  Ferrari 458
    Click Button  css=#nav-search > form > div.nav-right > div > input
    Wait Until Page Contains  results for
    Close Browser


*** Keywords ***
