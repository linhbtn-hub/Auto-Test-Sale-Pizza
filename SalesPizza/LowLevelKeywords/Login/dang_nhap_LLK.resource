*** Settings ***
Library  SeleniumLibrary
Library    XML
Resource    ../Common/common_LLK.resource

*** Variables ***
# Variables: Biến
# Visible: Hiển thị 

*** Keywords ***
Click_Sign_In
    [Documentation]    Click vào sign input
    Wait Until Element Is Visible    //a[text()='SIGN IN /']
    Click Element    //a[text()='SIGN IN /']
Click_Dang_Nhap
    [Documentation]    Click vào nút đăng nhập
    Wait Until Element Is Visible    //button[@id='btnLogin']
    Click Element    //button[@id='btnLogin']

Input_Tai_Khoan
    [Documentation]    Nhập tài khoản
    [Arguments]    ${tai_khoan}
    Wait Until Element Is Visible    //input[@name='txtUser']
    Input Text    //input[@name='txtUser']    ${tai_khoan}
    
Input_Mat_Khau
    [Documentation]    Nhập mật khẩu
    [Arguments]    ${mat_khau}
    Wait Until Element Is Visible    //input[@name='txtPass']
    Input Password    //input[@name='txtPass']    ${mat_khau}
