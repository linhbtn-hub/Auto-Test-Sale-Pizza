*** Settings ***
Library  SeleniumLibrary
Library    XML
Resource    ../Common/common_LLK.resource


*** Variables ***
# Variables: Biến
# Visible: Hiển thị 

*** Keywords ***

Click_Btn_Storelocaltion
    [Documentation]    click vào button store localtion
    Click Element    //a[text()='STORE LOCATION']
     Scroll Element Into View    //div[@class='container bigbox mw-100 h-100']

