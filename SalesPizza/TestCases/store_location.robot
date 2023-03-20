*** Settings ***
Resource    ../LowLevelKeywords/StoreLocaltion/store_location_LLK.resource

*** Variables ***
${url}  http://localhost:81/Shale-PIZZAzzz-master/public/home

*** Test Cases ***

TC_09
    Mo_Trang_Web    ${url}
    Click_Btn_Storelocaltion

    Sleep    3s
    Close Browser



    