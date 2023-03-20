*** Settings ***
Library  SeleniumLibrary
Resource    ../LowLevelKeywords/Cart/cart_LLK.resource

*** Keywords ***

Thanh_Toan_Option_2_HLK
    [Documentation]    Thanh toán High level key word
    [Arguments]    ${location}    ${firstName}    ${lastName}   ${email}    ${phone}    ${note}
    Chon_Cach_Nhan_Hang    //input[@value='option2']
    Chon_Dia_Chi_Cua_Hang    ${location}
    Input_First_Name    ${firstName}
    Input_Last_Name    ${lastName}
    Input_Email_Khi_Thanh_Toan    ${email}
    Input_Phone    ${phone}
    Input_Note    ${note}
    Sleep    2s
    Click_Btn_Xac_Nhan_Thanh_Toan

Thanh_Toan_Option_1_HLK
    [Documentation]    Thanh toán High level key word
    [Arguments]    ${firstName}    ${lastName}   ${email}    ${phone}    ${city}    ${district}    ${address}    ${note}
    Chon_Cach_Nhan_Hang    //input[@value='option1']
    Input_First_Name_Opt1    ${firstName}
    Input_Last_Name_Opt1    ${lastName}
    Input_Email_Opt1    ${email}
    Input_Phone_Opt1    ${phone}
    Input_City_Opt1    ${city}
    Input_District_Opt1    ${district}
    Input_Address_Opt1    ${address}
    Input_Note_Opt1    ${note}
    Sleep    2s
    Click_Btn_Xac_Nhan_Thanh_Toan_Opt1

Thanh_Toan_Tien_Vi_Momo_HLK
    [Documentation]    Thanh toán tiền qua ví điện tử Momo    
    [Arguments]    ${number}
    Thanh_Toan_Momo
    Input_Tien_MoMo    ${number}
    Click_Btn_Xac_Nhan_Chuyen_Tien_Momo

Thanh_Toan_Tien_Vi_VtcPay_HLK
    [Documentation]    Thanh toán tiền qua ví điện tử VtcPay   
    [Arguments]    ${number}
    Thanh_Toan_VtcPay
    Input_Tien_VtcPay    ${number}
    Click_Btn_Xac_Nhan_Chuyen_Tien_VtcPay

Thanh_Toan_Qua_The_Noi_Dia_HLK
    [Documentation]    Thanh toán tiền qua thẻ tiêu dùng nội địa   
    [Arguments]    ${number}    ${bank}
    Thanh_Toan_The_Noi_Dia
    Chon_Ngan_Hang_Muon_Thanh_Toan    ${bank}
    Input_Tien_The_Noi_Dia    ${number}
    Click_Btn_Xac_Nhan_Chuyen_Tien_The_Noi_Dia