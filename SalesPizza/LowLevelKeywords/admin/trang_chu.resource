*** Settings ***
Library  SeleniumLibrary
Library    XML
Resource    ../Common/common_LLK.resource
Resource    ../../HighLevelKeyWords/dang_nhap_HLK.resource

*** Keywords ***

Click_Menu_Table
    Wait Until Element Is Visible    //a[contains(@href, 'menu-table')]    timeout=10s
    Click Element    //a[contains(@href, 'menu-table')]

Click_Btn_Toggle_SideBar
    [Documentation]    Click nút thu gọn hoặc mở rộng thanh công cụ
    Click Element    //span[text()='Toggle Sidebar']

Click_Order_Table
    Wait Until Element Is Visible    //a[contains(@href, 'order-table')]    timeout=10s
    Click Element    //a[contains(@href, 'order-table')]

