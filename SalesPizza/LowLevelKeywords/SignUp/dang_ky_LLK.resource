*** Settings ***
Library  SeleniumLibrary
Library    XML
Resource    ../Common/common_LLK.resource
Resource    ../../HighLevelKeyWords/dang_nhap_HLK.resource


*** Variables ***
# Variables: Biến
# Visible: Hiển thị 

*** Keywords ***

Click_Sign_Up
    [Documentation]    Click vào sign up
    Wait Until Element Is Visible    //a[text()='SIGN UP']
    Click Element    //a[text()='SIGN UP']
Click_Dang_Ky
    [Documentation]    Click vào nút đăng nhập
    Wait Until Element Is Visible    //button[@id='btnSignup']
    Click Element    //button[@id='btnSignup']

Input_Ten_Nguoi_Dung
    [Documentation]    Nhập tên người dùng
    [Arguments]    ${user}
    Wait Until Element Is Visible    //input[@name='txtName']
    Input Text    //input[@name='txtName']     ${user}
    
Input_Email
    [Documentation]    Nhập email
    [Arguments]    ${email}
    Wait Until Element Is Visible    //input[@name='txtEmail']
    Input Text   //input[@name='txtEmail']    ${email}
Input_So_Dien_Thoai
    [Documentation]    Nhập số điện thoại
    [Arguments]    ${phone}
    Wait Until Element Is Visible    //input[@name='nbrPhone']
    Input Password   //input[@name='nbrPhone']    ${phone}
Input_Mat_Khau_Dang_ky
    [Documentation]    Nhập mật khẩu đăng ký
    [Arguments]    ${pass_dk}
    Wait Until Element Is Visible    //input[@name='txtPwd_user']
    Input Password   //input[@name='txtPwd_user']    ${pass_dk}
Input_Nhap_Lai_Mat_Khau_Dang_ky
    [Documentation]    Nhập lại mật khẩu đăng ký 
    [Arguments]    ${re_pass}
    Wait Until Element Is Visible    //input[@name='txtRepass']
    Input Password   //input[@name='txtRepass']    ${re_pass}


