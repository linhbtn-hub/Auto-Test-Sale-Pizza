*** Settings ***
Library  SeleniumLibrary
Library    XML

*** Keywords ***
Check_Dang_Nhap
    [Documentation]    Kiểm tra xem tài khoản đăng nhập đã được chưa và có đúng hay không  
    [Arguments]    ${expected}
    ${actual} =    Get Text    //div[@id='signin-signup']//a[1]
    Should Contain    ${actual}    ${expected}


