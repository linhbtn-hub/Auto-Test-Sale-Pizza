*** Settings ***
Library  SeleniumLibrary
Library    XML

*** Keywords ***
Ho_Ten_Trong_Form_2
    [Documentation]   Thông tin họ tên của form 2 (Nhận hàng tại cửa hàng) bị trống
    ${actual} =    Get Text    //span[@id='firstNameError']
    Should Be Equal    ${actual}    Họ tên không được để trống

Ten_Trong_Form_2
    [Documentation]   Thông tin tên của form 2 (Nhận hàng tại cửa hàng) bị trống
    ${actual} =    Get Text    //span[@id='lastNameError']
    Should Be Equal    ${actual}    Tên không được để trống

So_Dien_Thoai_Trong_Form_2
    [Documentation]   Thông tin số điện thoại của form 2 (Nhận hàng tại cửa hàng) bị trống
    ${actual} =    Get Text    //span[@id='phoneNumberError']
    Should Contain    ${actual}    Định dạng số điện thoại là 10 số



    
    
    