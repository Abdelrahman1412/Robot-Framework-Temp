*** Settings ***
############# Libraries ###########
Documentation
Resource    ../../Resources/POMs/Feature/P_Feature_PageName.robot
Resource    ../../Resources/Common.robot


Test Setup    Start WebTest
Test Teardown    End WebTest

*** Variables ***

############# Global Variables ###########

*** Test Cases ***
Feature Smoke Test
    [Documentation]    Smoke Test for Feature
    [Tags]    Smoke
    P_Feature_PageName.Smoke Test Page

