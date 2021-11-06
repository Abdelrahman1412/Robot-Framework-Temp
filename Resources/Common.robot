*** Settings ***
Documentation
Library    SeleniumLibrary

*** Variables ***
${BROWSER} =  chrome
${PROJECT_DIR} =    F:/WORK/Makan Gdeed/Zid_Automation_Framework
*** Keywords ***



Start WebTest
    open browser    about:blank    ${BROWSER}
    maximize browser window

End WebTest
    close browser

Switch to Windows Handle
    [Arguments]    ${Index}
    @{windowHandles} =    get window handles
    switch window    ${windowHandles}[${Index}]