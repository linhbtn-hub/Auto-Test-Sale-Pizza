*** Settings ***
Resource    ../../LowLevelKeywords/admin/menu_table.resource
Resource    ../../LowLevelKeywords/admin/trang_chu.resource
Suite Setup    Mo_Trang_Web    ${url}
Suite Teardown    Close Browser

*** Variables ***
${url}  http://localhost:81/Shale-PIZZAzzz-master/public/backend/menu-table

*** Test Cases ***

TC_24
    Click_Them_San_Pham
    Them_Moi_San_Pham    1    pizza    C:/Users/NgocPC/Desktop/Automation-Test-DATN/image/pizza_1.jpeg    Pizza Jambon    100    100    Pizza Jambon is very good
    Sleep    1s
    Execute Javascript    window.open()
    ${handles}    Get Window Handles
    Switch Window    ${handles}[1]
    Go to    http://localhost:81/Shale-PIZZAzzz-master/public/pizza?page=3
    Scroll Element Into View    //h3[text()='Pizza Jambon']
    Sleep    3s

TC_25
    # Chạy Test case thêm sản phẩm trước rồi mới chạy test case xóa sản phẩm (Nên làm vậy còn không thì không sao)
    # Làm vậy để đỡ phải sửa lại xpath
    Xoa_San_Pham    Pizza Jambon    43
    Sleep    1s
    Execute Javascript    window.open()
    ${handles}    Get Window Handles
    Switch Window    ${handles}[1]
    Go to    http://localhost:81/Shale-PIZZAzzz-master/public/pizza?page=3
    Scroll Element Into View    //h3[text()='CHICKEN SUPREME']
    Sleep    2s

TC_26  
    Sua_San_Pham    1    PIZZA 4 CHEESE    C:/Users/NgocPC/Desktop/Automation-Test-DATN/image/V1.png    100    Taste like chicken "very nice"
    Sleep    2s
    Sua_San_Pham    2    CHEESY BITES TRIO SHRIMP    C:/Users/NgocPC/Desktop/Automation-Test-DATN/image/V2.png    200    Best with beer "very nice"
    Sleep    2s
    Sua_San_Pham    3    SEAFOOD DELUXE    C:/Users/NgocPC/Desktop/Automation-Test-DATN/image/V3.png    300    Taste like chicken "very nice" 
    Sleep    2s
    Execute Javascript    window.open()
    ${handles}    Get Window Handles
    Switch Window    ${handles}[1]
    Go to    http://localhost:81/Shale-PIZZAzzz-master/public/pizza?page=1
    Scroll Element Into View    //h3[text()='PIZZA 4 CHEESE']
    Sleep    2s


    

    