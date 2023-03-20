*** Settings ***
Library  SeleniumLibrary
Library    XML
Resource    ../Common/common_LLK.resource
Resource    ../../HighLevelKeyWords/dang_nhap_HLK.resource

*** Variables ***
# Variables: Biến
# Visible: Hiển thị 

*** Keywords ***
Click_Btn_Feedback
    [Documentation]    Click vào nút button feedback 
    Click Element    //a[text()='FEEDBACK']
Comment_Feedback
    [Arguments]    ${text}
    Input Text    //input[@name='txtFeedBack']    ${text}
Click_Btn_Sendinformation
    [Documentation]    click vào nút send information
    [Arguments]    ${locator}
    Click Element    //button[@class='btn btn-primary active']
    Scroll Element Into View    ${locator}

