*** Settings ***
Library  SeleniumLibrary
Library    XML
Resource    ../LowLevelKeywords/Login/dang_nhap_LLK.resource
Resource    ../LowLevelKeywords/SignUp/dang_ky_LLK.resource


*** Variables ***

*** Keywords ***
Dang_Nhap
    [Arguments]    ${userName}    ${password}
    Click_Sign_In
    Input_Tai_Khoan    ${userName}
    Input_Mat_Khau    ${password}
    Click_Dang_Nhap

Dang_Ky
    [Arguments]    ${userName}    ${email}    ${phone}    ${pass_dk}    ${re_pass}
    Click_Sign_Up
    Input_Ten_Nguoi_Dung    ${userName}
    Input_Email    ${email}
    Input_So_Dien_Thoai    ${phone}
    Input_Mat_Khau_Dang_ky    ${pass_dk}
    Input_Nhap_Lai_Mat_Khau_Dang_ky    ${re_pass}
    Click_Dang_Ky



