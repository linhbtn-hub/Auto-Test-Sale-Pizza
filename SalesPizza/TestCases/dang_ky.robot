*** Settings ***
Resource    ../LowLevelKeywords/SignUp/dang_ky_LLK.resource

*** Test Cases ***

TC_04
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/home
    Click_Sign_Up
    Input_Ten_Nguoi_Dung    buithingoclinh
    Input_Email    buithingoclinh822@gmail.com
    Input_So_Dien_Thoai    01667407013
    Input_Mat_Khau_Dang_ky    66668888
    Input_Nhap_Lai_Mat_Khau_Dang_ky    66668888
    Click_Dang_Ky


    Sleep    3s
    Close Browser

TC_05
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/home
    Click_Sign_Up
    Input_So_Dien_Thoai    0123456789
    Click_Dang_Ky

    Sleep    3s
    Close Browser
TC_06
    Mo_Trang_Web    http://localhost:81/Shale-PIZZAzzz-master/public/home
    Dang_Ky    MaiNgocLinh    Maingoclinh822@gmail.com    09974378698    12345678    12345678
    Sleep    2s
    Dang_Nhap    MaiNgocLinh    12345678
    Sleep    3s
    Close Browser

    

    