*** Settings ***
Resource    ../../LowLevelKeywords/admin/trang_chu.resource
Suite Setup    Mo_Trang_Web    ${url}
Suite Teardown    Close Browser

*** Variables ***
${url}  http://localhost:81/Shale-PIZZAzzz-master/public/backend

*** Test Cases ***

TC_21
    Sleep    3s

TC_27
    FOR    ${counter}    IN RANGE    1    6
        Click_Btn_Toggle_SideBar
        Sleep    1s
        
    END
    Sleep    1s
    