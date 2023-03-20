*** Settings ***
Library  SeleniumLibrary
Resource    ../../LowLevelKeywords/admin/order_table.resource
Resource    ../../LowLevelKeywords/admin/trang_chu.resource

*** Keywords ***

Them_Moi_Don_Hang
    [Arguments]    ${date}    ${time}    ${userId}   ${userDetailId}    ${status}
    CLick_Them_Moi_Don_Hang
    Input_Ngay_Tao_Don_Hang    ${date}
    SeleniumLibrary.Press Keys    //input[@name='txtDate']    TAB
    Input_Thoi_Gian_Don_Hang    ${time} 
    Input_User_ID_Don_Hang    ${userId} 
    Input_User_Detail_Id_Don_Hang    ${userDetailId}    
    Input_Trang_Thai_Don_Hang    ${status}
    Xac_Nhan_Them_Don_Hang
    Sleep    1s
    Click_Order_Table
    Scroll Element Into View    //a[text()='+ Add new Order']


Sua_Don_Hang
    [Arguments]    ${locator}    ${trang_thai}
    Click_Sua_Don_Hang    ${locator}
    Input_Trang_Thai_Don_Hang_Khi_Sua    ${trang_thai}
    Xac_Nhan_Sua_Don_Hang
    Click_Order_Table
    Sleep    1s
    Xem_Don_Hang_Vua_Sua    ${locator}   
    Sleep    2s

Xoa_Don_Hang
    [Arguments]    ${locator}
    Xoa_Don_Hang_LLK    ${locator}
    Click_Order_Table
    Sleep    1s
