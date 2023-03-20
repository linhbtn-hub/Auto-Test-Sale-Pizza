*** Settings ***
Resource    ../LowLevelKeywords/Menu/menu_LLK.resource
Resource    ../LowLevelKeywords/Cart/cart_LLK.resource

*** Variables ***

*** Test Cases ***
TC_12
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/menu
    Click_Btn_Pizza

    Sleep    2s
    Close Browser
    
TC_13
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/20')]

    Sleep    2s
    Close Browser

TC_14
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    Hien_Thi_Thong_Tin_Gio_Hang

    Sleep    2s
    Close Browser

TC_15    
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    Dang_Nhap    buithingoclinh    66668888
    Click_Btn_Add_To_Cart    //a[contains(@href, '/addCart/20')]
    Hien_Thi_Thong_Tin_Gio_Hang

    Sleep    2s
    Close Browser
TC_7
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/pizza
    Click_Btn_MenuDownload
    Sleep    4s
    Close Browser

TC_17
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/menu
    Click_Btn_Pizza
    Sleep    2s
    CLick_Btn_Breads
    Sleep    2s
    CLick_Btn_Pizza_Sand_Wiches
    Sleep    2s
    CLick_Btn_Desserts
    Sleep    2s
    CLick_Btn_Beverages

    Sleep    4s
    Close Browser


    
    