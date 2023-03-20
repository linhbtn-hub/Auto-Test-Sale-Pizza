*** Settings ***
Resource    ../LowLevelKeywords/Feedback/feedback_LLK.resource

*** Variables ***
${url}  http://localhost:81/Shale-PIZZAzzz-master/public/home

*** Test Cases ***
TC_8
    Mo_Trang_Web    ${url}
    Click_Btn_Feedback
    Comment_Feedback    Ngạc nhiên chưa
    Click_Btn_Sendinformation    //button[@class='btn btn-primary active']
    
    Sleep    4s
    Close All Browsers

TC_20
    Mo_Trang_Web    ${url}
    Dang_Nhap    buithingoclinh    66668888

    Click_Btn_Feedback
    Comment_Feedback    Ngạc nhiên chưa
    Click_Btn_Sendinformation    //p[text()=' → Ngạc nhiên chưa']

    Sleep    4s
    Close All Browsers

    

    