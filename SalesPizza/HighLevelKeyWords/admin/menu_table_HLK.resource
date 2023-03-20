*** Settings ***
Library  SeleniumLibrary
Resource    ../../LowLevelKeywords/admin/menu_table.resource

*** Keywords ***

Them_Moi_San_Pham
    [Arguments]    ${id}    ${menu}    ${image_path}    ${name}    ${price}    ${inventory}    ${review}
    Input_Loai_San_Pham_Id    ${id}
    Select_Menu    ${menu}
    Chon_Anh_San_Pham    ${image_path}
    Input_Ten_San_Pham    ${name}
    Input_Gia_San_Pham    ${price}
    Input_Ton_Kho    ${inventory}
    Input_Review_San_Pham    ${review}
    Xac_Nhan_Tao_San_Pham_Moi
    Sleep    3s
    Xem_San_Pham    ${name}

Sua_San_Pham
    [Arguments]    ${locator}    ${name}    ${image_path}    ${price}    ${review}
    Click_Sua_San_Pham    ${locator}
    Sleep    2s
    Chon_Anh_San_Pham    ${image_path}
    Input_Ten_San_Pham    ${name}
    Input_Gia_San_Pham    ${price}
    Input_Review_San_Pham    ${review}
    Xac_Nhan_Sua_San_Pham
    Sleep   2s
    Xem_San_Pham    ${name}

Xoa_San_Pham
    [Arguments]    ${name}    ${locator}
    Xem_San_Pham    ${name}
    Click_Xoa_San_Pham    ${locator}
    
