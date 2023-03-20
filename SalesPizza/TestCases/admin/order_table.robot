*** Settings ***
Resource    ../../LowLevelKeywords/admin/order_table.resource
Resource    ../../VerificationKeywords/admin/order_table_verify.resource

*** Variables ***
${url}  http://localhost:81/Shale-PIZZAzzz-master/public/backend/order-table

*** Test Cases ***

TC_28
    Mo_Trang_Web    ${url}
    Them_Moi_Don_Hang    11252022    0700AM    486    246    complete  
    Sleep    2s
    Close Browser

TC_29
    Mo_Trang_Web    ${url}
    Sua_Don_Hang    2    pendding
    Sleep    1s
    Close Browser

TC_30
    Mo_Trang_Web    ${url}
    Xoa_Don_Hang    11 
    Sleep    1s
    Close Browser

TC_Demo
    Mo_Trang_Web    ${url} 
    Check_Trang_Thai_Don_Hang_Khi_Thanh_Toan_Thanh_Cong
    Sleep    1s
    Close Browser
      
    