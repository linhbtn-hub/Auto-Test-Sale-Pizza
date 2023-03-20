*** Settings ***
Library  SeleniumLibrary
Library    XML
Resource    ../Common/common_LLK.resource
Resource    ../../HighLevelKeyWords/dang_nhap_HLK.resource


*** Variables ***
# Variables: Biến
# Visible: Hiển thị 

*** Keywords ***
Click_Btn_Pizza
    [Documentation]    Click vào button Pizza trong Menu
    Click Element    //div[@class='menu-pizzapage']//a[text()='PIZZA']
    Scroll Element Into View    //h3[text()='CHEESY BITES TRIO SHRIMP']
    Sleep    1s
    Scroll Element Into View    //h3[text()='SUPREME']

Hien_Thi_Thong_Tin_Gio_Hang
    [Documentation]    Hiển thị thông tin giỏ hàng
    Click Element    //i[contains(@class, 'fa-shopping-cart')]
    Scroll Element Into View    //a[text()='Continue Shopping']
Click_Btn_MenuDownload
    [Documentation]    Click vào button menu download 
    Click Element    //a[contains(@href, 'menudownload')]

CLick_Btn_Breads
    [Documentation]    CLick button GARLIC BREADS trong trang Menu
    Click Element    //div[@id='menuthucdon']//a[text()='GARLIC BREADS']
    Scroll Element Into View    //p[text()='Good for health']

CLick_Btn_Pizza_Sand_Wiches
    [Documentation]    CLick button Pizza SandWiches trong trang Menu
    Click Element    //div[@id='menuthucdon']//a[text()='PIZZA SANDWICHES']
    Scroll Element Into View    //p[text()='The ultimate pizza sandwich with spicy pepperoni,']

CLick_Btn_Desserts
    [Documentation]    CLick button DESSERTS trong trang Menu
    Click Element    //div[@id='menuthucdon']//a[text()='DESSERTS']
    Scroll Element Into View    //p[text()='ese cheesecake bars are an excellent sweet on a low-carb or keto lifestyle.']

CLick_Btn_Beverages
    [Documentation]    CLick button BEVERAGES trong trang Menu
    Click Element    //div[@id='menuthucdon']//a[text()='BEVERAGES']
    Scroll Element Into View    //p[text()='Brown coffee for coffee lover']

CLick_Btn_Breads_V2
    [Documentation]    CLick button GARLIC BREADS trong trang Menu version 2
    [Arguments]    ${suffix}
    Go To    http://localhost:81/Shale-PIZZAzzz-master/public/${suffix}
    Scroll Element Into View    //p[text()='Good for health']

CLick_Btn_Pizza_Sand_Wiches_V2
    [Documentation]    CLick button Pizza SandWiches trong trang Menu version 2
    [Arguments]    ${suffix}
    Go To    http://localhost:81/Shale-PIZZAzzz-master/public/${suffix}
    Scroll Element Into View    //p[text()='The ultimate pizza sandwich with spicy pepperoni,']

CLick_Btn_Desserts_V2
    [Documentation]    CLick button DESSERTS trong trang Menu version 2
    [Arguments]    ${suffix}
    Go To    http://localhost:81/Shale-PIZZAzzz-master/public/${suffix}
    Scroll Element Into View    //p[text()='ese cheesecake bars are an excellent sweet on a low-carb or keto lifestyle.']

CLick_Btn_Beverages_V2
    [Documentation]    CLick button BEVERAGES trong trang Menu version 2
    [Arguments]    ${suffix}
    Go To    http://localhost:81/Shale-PIZZAzzz-master/public/${suffix}
    Scroll Element Into View    //p[text()='Brown coffee for coffee lover']
        