*** Settings ***
Documentation
Library    SeleniumLibrary
Resource    ../../Common.robot
*** Variables ***

#################### GLOBAL VARIABLES ##########################
${ImagePath}=    # Relative path
######################## LOCATORS ##########################
${Element_ChkBox} =    id= checkbox         # This is an example
${Element_TXTField} =    id= textfield         # This is an example
${Element_TXTField} =    id= textfield         # This is an example
${Element_UploadImage} =    id= input image         # This is an example
${Element_Select} =    id= select         # This is an example
${Element_Btn} =    id= btn         # This is an example
${Page_Success_Msg} =    id= msg         # This is an example

*** Keywords ***
########################## ACTIONS ##############################
# here you put the generic actions to interact with the page's elements

Toggle Checkbox
    wait until page contains element    ${Element_ChkBox}    10
    click element    ${Element_ChkBox}

Enter text When Enabled
    [Arguments]    ${Text_description}
    wait until element is enabled    ${Element_TXTField}
    input text    ${Element_TXTField}    ${Text_description}

Enter text
    [Arguments]    ${Text_description}
    wait until page contains element    ${Element_TXTField}
    input text    ${Element_TXTField}    ${Text_description}

Upload Image
    wait until page contains element    ${Element_UploadImage}    10
    choose file    ${Element_UploadImage}    ${PROJECT_DIR}${/}${ImagePath}

Enter Text by Pressing Keys
    Scroll Element Into View    ${Element_TXTField}
#    click element    ${Element_TXTField}               # Not Always needed
    # when using Press keys remeber to put every letter separated by +
    press keys    ${Element_TXTField}    L+O+N+G+ +D+E+S+C+R+I+P+T+I+O+N+ +A+W+I

Select Option by Value
    [Arguments]    ${Option}
    wait until element is visible    ${Element_Select}
    scroll element into view    ${Element_Select}
#    click element    ${Element_Select}                             # not always needed
    select from list by value    ${Element_Select}    ${Option}

Click Button When Enabled
    wait until element is enabled    ${Element_Btn}    10
    click button    ${Element_Btn}

Click Button
    wait until element is enabled    ${Element_Btn}    10
    click button    ${Element_Btn}

Verify Success_Msg Appears
    wait until element is enabled    ${Page_Success_Msg}    10

######################### SCENARIOS ############################
# Here you put the combined keywords to create scenarios

Smoke Test Page
    Toggle Checkbox
    Enter text When Enabled    text
    Enter text    another text
    Upload Image
    Select Option by Value    option
    Click Button When Enabled
    Click Button