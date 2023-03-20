*** Settings ***
Resource    ../LowLevelKeywords/Home/trang_chu_LLK.resource

*** Variables ***
${url}  http://localhost:81/Shale-PIZZAzzz-master/public/home

*** Test Cases ***
TC_01
    Mo_Trang_Web    ${url}
    Click_Vao_Comboffers

    Sleep    2s
    Close Browser

TC_10
    Mo_Trang_Web    ${url}
    Chuyen_Tiep_Carousel

    Sleep    2s
    Close Browser

TC_11
    Mo_Trang_Web    ${url}
    Hien_Thi_Menu

    Sleep    2s
    Close Browser
TC_16
    Mo_Trang_Web    ${url}
    Hien_Thi_Combo

    Sleep    2s
    Close Browser
