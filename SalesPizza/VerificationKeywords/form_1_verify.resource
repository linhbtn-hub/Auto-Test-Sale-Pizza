*** Settings ***
Library  SeleniumLibrary
Library    XML

*** Keywords ***
Ho_Ten_Trong_Form_1
    [Documentation]   Thông tin họ tên của form 1 (Giao hàng tận nơi) bị trống
    ${actual} =    Get Text    //span[@id='errorFirstName']
    Should Be Equal    ${actual}    Họ tên không được để trống

Ten_Trong_Form_1
    [Documentation]   Thông tin tên của form 1 (Giao hàng tận nơi) bị trống
    ${actual} =    Get Text    //span[@id='errorLastName']
    Should Be Equal    ${actual}    Tên không được để trống

So_Dien_Thoai_Trong_Form_1
    [Documentation]   Thông tin số điện thoại của form 1 (Giao hàng tận nơi) bị trống
    ${actual} =    Get Text    //span[@id='errorPhoneNumber']
    Should Contain    ${actual}    Định dạng số điện thoại là 10 số

Thanh_Pho_Trong_Form_1
    [Documentation]   Thông tin thành phố của form 1 (Giao hàng tận nơi) bị trống
    ${actual} =    Get Text    //span[@id='errorCity']
    Should Be Equal    ${actual}    Thông tin thành phố không được để trống

Quan_Trong_Form_1
    [Documentation]   Thông tin quận của form 1 (Giao hàng tận nơi) bị trống
    ${actual} =    Get Text    //span[@id='errorDistrict']
    Should Be Equal    ${actual}    Thông tin quận không được để trống

Dia_Chi_Chi_Tiet_Trong_Form_1
    [Documentation]   Thông tin địa chỉ chi tiết của form 1 (Giao hàng tận nơi) bị trống
    ${actual} =    Get Text    //span[@id='errorAddress']
    Should Be Equal    ${actual}    Thông tin địa chỉ chi tiết không được để trống



    
    
    